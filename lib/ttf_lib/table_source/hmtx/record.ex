defmodule TTFLib.TableSource.Hmtx.Record do
  alias TTFLib.GlyphStorage

  defstruct ~w(advance lsb xmin xmax glyph_empty?)a

  @type t :: %__MODULE__{
          advance: pos_integer(),
          lsb: integer(),
          xmin: non_neg_integer(),
          xmax: non_neg_integer(),
          glyph_empty?: boolean()
        }

  @spec new(map()) :: t()
  def new(glyph)

  def new(%{contours: contours} = simple_glyph) do
    %__MODULE__{
      advance: simple_glyph.advance,
      lsb: simple_glyph.xmin,
      xmin: simple_glyph.xmin,
      xmax: simple_glyph.xmax,
      glyph_empty?: Enum.empty?(contours)
    }
  end

  def new(%{components: components}) do
    ref_glyphs = Enum.map(components, &GlyphStorage.get(&1.glyph))
    advance = ref_glyphs |> Enum.map(& &1.advance) |> Enum.max(fn -> 0 end)
    xmin = ref_glyphs |> Enum.map(& &1.xmin) |> Enum.min(fn -> 0 end)
    xmax = ref_glyphs |> Enum.map(& &1.xmax) |> Enum.max(fn -> 0 end)

    %__MODULE__{
      advance: advance,
      lsb: xmin,
      xmin: xmin,
      xmax: xmax,
      glyph_empty?: Enum.empty?(components)
    }
  end

  @spec compile(t()) :: iodata()
  def compile(record) do
    [
      <<record.advance::big-16>>,
      <<record.lsb::big-16>>
    ]
  end
end
