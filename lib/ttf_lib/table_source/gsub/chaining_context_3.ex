defmodule TTFLib.TableSource.GSUB.ChainingContext3 do
  alias TTFLib.TableSource.OTFLayout.GlyphCoverage

  defstruct [:backtrack, :input, :lookahead, :substitutions]

  @type t :: %__MODULE__{
          backtrack: [GlyphCoverage.t()],
          input: [GlyphCoverage.t()],
          lookahead: [GlyphCoverage.t()],
          substitutions: [{integer(), term()}]
        }

  defimpl TTFLib.TableSource.GSUB.Subtable do
    alias TTFLib.TableSource.GSUB.ChainingContext3
    alias TTFLib.TableSource.OTFLayout.GlyphCoverage

    @spec compile(ChainingContext3.t(), keyword()) :: binary()
    def compile(subtable, opts) do
      lookup_indices = opts[:lookup_indices]
      sub_count = length(subtable.substitutions)
      seqs = [subtable.backtrack, subtable.input, subtable.lookahead]
      counts = seqs |> Enum.map(&length/1) |> Enum.sum()
      offset_base = 10 + counts * 2 + sub_count * 4
      {offsets, coverages} = GlyphCoverage.compile_coverage_records(seqs, offset_base)

      sub_records =
        Enum.map(subtable.substitutions, fn {glyph_pos, lookup_name} ->
          <<glyph_pos::16, lookup_indices[lookup_name]::16>>
        end)

      IO.iodata_to_binary([
        <<3::16>>,
        offsets,
        <<sub_count::16>>,
        sub_records,
        coverages
      ])
    end
  end
end
