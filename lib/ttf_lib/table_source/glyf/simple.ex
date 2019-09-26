defmodule TTFLib.TableSource.Glyf.Simple do
  alias TTFLib.RectilinearShape.Path, as: RSPath

  defstruct ~w(last_points inst_size inst flags x_coords y_coords)a

  @type t :: %__MODULE__{
          last_points: [integer()],
          inst_size: 0x0000..0xFFFF,
          inst: binary(),
          flags: [0x00..0xFF],
          x_coords: [0x00..0xFF],
          y_coords: [0x00..0xFF]
        }

  @spec new(RSPath.t()) :: t()
  def new(path) do
    {_, last_points, contours} =
      path
      |> make_relative()
      |> Enum.reduce({0, [], []}, fn contour, {pos, last_points, coords} ->
        len = length(contour)

        {pos + len, [pos + len - 1 | last_points], [contour | coords]}
      end)

    {flags, coords} =
      contours
      |> Enum.reverse()
      |> List.flatten()
      |> Enum.map(fn {x, y} ->
        x_is_positive = if x >= 0, do: 1, else: 0
        y_is_positive = if y >= 0, do: 1, else: 0
        flag = <<0::2, y_is_positive::1, x_is_positive::1, 7::4>>

        {flag, {abs(x), abs(y)}}
      end)
      |> Enum.unzip()

    {x_coords, y_coords} = Enum.unzip(coords)

    %__MODULE__{
      last_points: Enum.reverse(last_points),
      inst_size: 0,
      inst: "",
      flags: compress_flags(flags),
      x_coords: x_coords,
      y_coords: y_coords
    }
  end

  defp make_relative(path) do
    path
    |> Enum.reduce({{0, 0}, []}, fn contour, {last_pt, contours} ->
      contour2 =
        contour
        |> Enum.zip([last_pt | contour])
        |> Enum.map(fn {{cx, cy}, {px, py}} -> {cx - px, cy - py} end)

      {List.last(contour), [contour2 | contours]}
    end)
    |> elem(1)
    |> Enum.reverse()
  end

  defp compress_flags(flags) do
    flags
    |> Enum.chunk_by(& &1)
    |> Enum.map(fn chunk ->
      chunk_length = length(chunk)

      if chunk_length > 2 do
        <<flag1::4, _rpt::1, flag2::3>> = hd(chunk)

        [<<flag1::4, 1::1, flag2::3>>, <<chunk_length - 1::8>>]
      else
        chunk
      end
    end)
  end
end
