defmodule TTFLib.TableSource.GSUB.ReverseChainingContext1 do
  alias TTFLib.TableSource.OTFLayout.GlyphCoverage

  defstruct [:backtrack, :lookahead, :substitutions]

  @type t :: %__MODULE__{
          backtrack: [GlyphCoverage.t()],
          lookahead: [GlyphCoverage.t()],
          substitutions: [{glyph_id(), glyph_id()}]
        }

  @type glyph_id :: integer() | binary()

  defimpl TTFLib.TableSource.GSUB.Subtable do
    alias TTFLib.GlyphStorage
    alias TTFLib.TableSource.GSUB.ReverseChainingContext1
    alias TTFLib.Util

    @spec compile(ReverseChainingContext1.t(), keyword()) :: binary()
    def compile(subtable, _opts) do
      {from_glyphs, to_glyphs} =
        subtable.substitutions
        |> Enum.map(fn {from, to} ->
          from_id = Util.get_glyph_id(from)
          to_id = Util.get_glyph_id(to)

          {GlyphStorage.get(from_id).index, GlyphStorage.get(to_id).index}
        end)
        |> Enum.sort(&(elem(&1, 0) <= elem(&2, 0)))
        |> Enum.unzip()

      input_count = length(from_glyphs)
      seqs = [subtable.backtrack, subtable.lookahead]
      counts = seqs |> Enum.map(&length/1) |> Enum.sum()
      offset_base = 10 + counts * 2 + input_count * 2

      compiled_coverage =
        from_glyphs
        |> GlyphCoverage.of()
        |> GlyphCoverage.compile(internal: true)

      {offsets, coverages} =
        GlyphCoverage.compile_coverage_records(seqs, offset_base + byte_size(compiled_coverage))

      IO.iodata_to_binary([
        <<1::16>>,
        <<offset_base::16>>,
        offsets,
        <<input_count::16>>,
        Enum.map(to_glyphs, &<<&1::16>>),
        compiled_coverage,
        coverages
      ])
    end
  end
end
