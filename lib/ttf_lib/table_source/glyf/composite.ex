defmodule TTFLib.TableSource.Glyf.Composite do
  defstruct ~w(components)a

  @type t :: %__MODULE__{components: [[binary]]}

  @spec new([map()], [map()]) :: t()
  def new(components, glyphs) do
    %__MODULE__{components: components |> Enum.zip(glyphs) |> make_data([])}
  end

  defp make_data(item, acc)

  defp make_data([item], acc) do
    [do_make_data(item, 0) | acc]
  end

  defp make_data([item | items], acc) do
    make_data(items, [do_make_data(item, 1) | acc])
  end

  defp do_make_data({component, glyph}, more) do
    glyph_index = glyph.index
    %{x_offset: x_offset, y_offset: y_offset} = component

    [
      # flags
      <<0::3, 1::1, 0::1, 1::1, 0::4, more::1, 0::1, 0::1, 1::1, 1::1, 0::1>>,
      # glyph index
      <<glyph_index::big-16>>,
      # args
      <<x_offset::big-8, y_offset::big-8>>
    ]
  end
end
