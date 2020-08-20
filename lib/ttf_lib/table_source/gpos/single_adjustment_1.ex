defmodule TTFLib.TableSource.GPOS.SingleAdjustment1 do
  alias TTFLib.TableSource.GPOS.ValueRecord
  alias TTFLib.TableSource.OTFLayout.GlyphCoverage

  defstruct ~w(glyphs value_format value)a

  @type t :: %__MODULE__{
          glyphs: GlyphCoverage.t(),
          value_format: [atom()],
          value: ValueRecord.t()
        }

  defimpl TTFLib.TableSource.GPOS.Subtable do
    alias TTFLib.TableSource.GPOS.SingleAdjustment1
    alias TTFLib.TableSource.GPOS.ValueRecord
    alias TTFLib.TableSource.OTFLayout.GlyphCoverage

    @spec compile(SingleAdjustment1.t(), keyword()) :: binary()
    def compile(subtable, _opts) do
      compiled_coverage = GlyphCoverage.compile(subtable.glyphs)

      compiled_value =
        subtable.value
        |> ValueRecord.compile(subtable.value_format)
        |> IO.iodata_to_binary()

      IO.iodata_to_binary([
        # posFormat
        <<1::16>>,
        # coverageOffset
        <<byte_size(compiled_value) + 6::16>>,
        # valueFormat
        ValueRecord.compile_value_format(subtable.value_format),
        # valueRecord
        compiled_value,
        # Glyph coverage
        compiled_coverage
      ])
    end
  end
end
