defmodule TTFLib.TableSource.GPOS.ChainingContext3 do
  alias TTFLib.TableSource.OTFLayout.GlyphCoverage

  defstruct [:backtrack, :input, :lookahead, :positions]

  @type t :: %__MODULE__{
          backtrack: [GlyphCoverage.t()],
          input: [GlyphCoverage.t()],
          lookahead: [GlyphCoverage.t()],
          positions: [{integer(), term()}]
        }

  defimpl TTFLib.TableSource.GPOS.Subtable do
    alias TTFLib.TableSource.GPOS.ChainingContext3
    alias TTFLib.TableSource.OTFLayout.GlyphCoverage

    @spec compile(ChainingContext3.t(), keyword()) :: binary()
    def compile(subtable, opts) do
      lookup_indices = opts[:lookup_indices]
      pos_count = length(subtable.positions)
      seqs = [subtable.backtrack, subtable.input, subtable.lookahead]
      counts = seqs |> Enum.map(&length/1) |> Enum.sum()
      offset_base = 10 + counts * 2 + pos_count * 4
      {offsets, coverages} = GlyphCoverage.compile_coverage_records(seqs, offset_base)

      pos_records =
        Enum.map(subtable.positions, fn {glyph_pos, lookup_name} ->
          <<glyph_pos::16, lookup_indices[lookup_name]::16>>
        end)

      IO.iodata_to_binary([
        <<3::16>>,
        offsets,
        <<pos_count::16>>,
        pos_records,
        coverages
      ])
    end
  end
end
