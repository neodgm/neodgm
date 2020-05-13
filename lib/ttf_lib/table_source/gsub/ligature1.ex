defmodule TTFLib.TableSource.GSUB.Ligature1 do
  defstruct [:substitutions]

  @type t :: %__MODULE__{substitutions: [{[glyph_id()], glyph_id()}]}
  @typep glyph_id :: integer() | binary()

  defimpl TTFLib.TableSource.GSUB.Subtable do
    alias TTFLib.GlyphStorage
    alias TTFLib.TableSource.GSUB
    alias TTFLib.TableSource.GSUB.Ligature1
    alias TTFLib.TableSource.OTFLayout.GlyphCoverage
    alias TTFLib.Util

    @typep glyph_id :: integer() | binary()

    @spec compile(Ligature1.t(), keyword()) :: binary()
    def compile(subtable, _opts) do
      {first_glyphs, ligature_sets} =
        subtable.substitutions
        |> map_indices()
        |> Enum.group_by(&hd(elem(&1, 0)), &{tl(elem(&1, 0)), elem(&1, 1)})
        |> Enum.sort_by(&elem(&1, 0))
        |> IO.inspect()
        |> Enum.unzip()
        |> IO.inspect()

      coverage =
        GlyphCoverage.compile(%GlyphCoverage{glyphs: first_glyphs}, internal: true)
        |> IO.inspect()

      ligature_set_count = length(ligature_sets)
      coverage_offset = 6 + 2 * ligature_set_count
      offset_base = coverage_offset + byte_size(coverage)

      {_, offsets, compiled_ligature_sets} =
        Util.offsetted_binaries(ligature_sets, offset_base, &compile_ligature_set/1)

      IO.iodata_to_binary([
        # substFormat (1)
        <<1::16>>,
        # coverageOffest
        <<coverage_offset::16>>,
        # ligatureSetCount
        <<ligature_set_count::16>>,
        # ligatureSetOffsets[]
        offsets,
        # Coverage Table
        coverage,
        # Ligature Sets
        compiled_ligature_sets
      ] |> IO.inspect())
    end

    @spec map_indices([{[glyph_id()], glyph_id()}]) :: [{[integer()], integer()}]
    defp map_indices(substitutions) do
      Enum.map(substitutions, fn {components, lig_glyph} ->
        component_indices =
          Enum.map(components, fn id ->
            GlyphStorage.get(Util.get_glyph_id(id)).index
          end)

        lig_index = GlyphStorage.get(Util.get_glyph_id(lig_glyph)).index

        {component_indices, lig_index}
      end)
    end

    @spec compile_ligature_set([{[integer()], integer()}]) :: iodata()
    defp compile_ligature_set(ligatures) do
      ligature_count = length(ligatures)
      offset_base = 2 + 2 * ligature_count

      {_, offsets, compiled_ligatures} =
        Util.offsetted_binaries(ligatures, offset_base, &compile_ligature/1)

      [
        # ligatureCount
        <<ligature_count::16>>,
        # ligatureOffsets[]
        offsets,
        # ligature tables
        compiled_ligatures
      ]
    end

    @spec compile_ligature({[integer()], integer()}) :: iodata()
    defp compile_ligature(ligature)

    defp compile_ligature({component_indices, lig_index}) do
      [
        # ligatureGlyph
        <<lig_index::16>>,
        # componentCount
        <<length(component_indices) + 1::16>>,
        # componentGlyphIDs
        Enum.map(component_indices, &<<&1::16>>)
      ]
    end
  end
end
