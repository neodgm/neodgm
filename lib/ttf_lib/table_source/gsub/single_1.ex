defmodule TTFLib.TableSource.GSUB.Single1 do
  alias TTFLib.TableSource.OTFLayout.GlyphCoverage

  defstruct glyphs: %GlyphCoverage{}, to: 0

  @type t :: %__MODULE__{glyphs: GlyphCoverage.t(), to: integer() | binary()}

  defimpl TTFLib.TableSource.GSUB.Subtable do
    alias TTFLib.GlyphStorage
    alias TTFLib.TableSource.GSUB.Single1
    alias TTFLib.TableSource.OTFLayout.GlyphCoverage
    alias TTFLib.Util

    @spec compile(Single1.t(), keyword()) :: binary()
    def compile(subtable, _opts) do
      to_index = GlyphStorage.get(Util.get_glyph_id(subtable.to)).index
      compiled_coverage = GlyphCoverage.compile(subtable.glyphs)
      first_id = GlyphStorage.get(Util.get_glyph_id(hd(subtable.glyphs.glyphs))).index

      IO.iodata_to_binary([
        # substFormat
        <<1::16>>,
        # coverageOffset
        <<6::16>>,
        # deltaGlyphID
        <<to_index - first_id::16>>,
        # Coverage Table
        compiled_coverage
      ])
    end
  end
end
