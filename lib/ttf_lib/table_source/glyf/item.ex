defmodule TTFLib.TableSource.Glyf.Item do
  alias TTFLib.GlyphStorage
  alias TTFLib.TableSource.Glyf.Simple
  alias TTFLib.TableSource.Glyf.Composite

  defstruct ~w(num_of_contours xmin ymin xmax ymax description)a

  @type t :: %__MODULE__{
          num_of_contours: integer(),
          xmin: integer(),
          ymin: integer(),
          xmax: integer(),
          ymax: integer(),
          description: Simple.t() | Composite.t()
        }

  @spec new_simple(map()) :: t()
  def new_simple(glyph) do
    %__MODULE__{
      num_of_contours: length(glyph.contours),
      xmin: glyph.xmin,
      ymin: glyph.ymin,
      xmax: glyph.xmax,
      ymax: glyph.ymax,
      description: Simple.new(glyph.contours)
    }
  end

  @spec new_composite(map()) :: t()
  def new_composite(glyph) do
    ref_glyphs = Enum.map(glyph.components, &GlyphStorage.get(&1.glyph))

    boundaries =
      ref_glyphs
      |> Enum.zip(glyph.components)
      |> Enum.map(fn {glyph, %{x_offset: xoff, y_offset: yoff}} ->
        {glyph.xmin + xoff, glyph.ymin + yoff, glyph.xmax + xoff, glyph.ymax + yoff}
      end)

    %__MODULE__{
      num_of_contours: -1,
      xmin: elem(Enum.min_by(boundaries, &elem(&1, 0)), 0),
      ymin: elem(Enum.min_by(boundaries, &elem(&1, 1)), 1),
      xmax: elem(Enum.max_by(boundaries, &elem(&1, 2)), 2),
      ymax: elem(Enum.max_by(boundaries, &elem(&1, 3)), 3),
      description: Composite.new(glyph.components, ref_glyphs)
    }
  end

  @spec compile(t()) :: map()
  def compile(item) do
    data = [
      <<item.num_of_contours::big-16>>,
      <<item.xmin::big-16>>,
      <<item.ymin::big-16>>,
      <<item.xmax::big-16>>,
      <<item.ymax::big-16>>,
      compile_description(item.description)
    ]

    data_bin = IO.iodata_to_binary(data)
    size = byte_size(data_bin)

    pad_size =
      case rem(size, 4) do
        0 -> 0
        x -> 4 - x
      end

    pad = <<0::pad_size*8>>

    %{
      data: data_bin <> pad,
      real_size: size,
      padded_size: size + pad_size
    }
  end

  defp compile_description(desc)

  defp compile_description(%Simple{} = desc) do
    %Simple{inst_size: inst_size} = desc

    [
      Enum.map(desc.last_points, &<<&1::big-16>>),
      <<inst_size::big-16>>,
      desc.inst,
      desc.flags,
      Enum.map(desc.x_coords, &<<&1::8>>),
      Enum.map(desc.y_coords, &<<&1::8>>)
    ]
  end

  defp compile_description(%Composite{} = desc) do
    desc.components
  end
end
