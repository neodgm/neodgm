defmodule TTFLib.TableSource.GSUB do
  alias TTFLib.CompiledTable
  alias TTFLib.GlyphStorage
  alias TTFLib.TableSource.OTFLayout.FeatureList
  alias TTFLib.TableSource.OTFLayout.GlyphCoverage
  alias TTFLib.TableSource.OTFLayout.LookupList
  alias TTFLib.TableSource.OTFLayout.ScriptList
  alias TTFLib.Util

  defstruct [
    :script_list,
    :feature_list,
    :lookup_list,
    :feature_indices,
    :lookup_indices
  ]

  @type t :: %__MODULE__{
          script_list: ScriptList.t(),
          feature_list: FeatureList.t(),
          lookup_list: LookupList.t(),
          feature_indices: %{optional({<<_::4>>, term()}) => integer()},
          lookup_indices: %{optional(binary()) => integer()}
        }

  @spec populate_indices(t()) :: t()
  def populate_indices(gsub) do
    %__MODULE__{
      gsub
      | feature_indices: index_map(gsub.feature_list.features, &{&1.tag, &1.name}),
        lookup_indices: index_map(gsub.lookup_list.lookups, & &1.name)
    }
  end

  defp index_map(enumerable, fun) do
    enumerable
    |> Enum.with_index()
    |> Enum.map(fn {item, index} -> {fun.(item), index} end)
    |> Map.new()
  end

  @spec compile(t()) :: CompiledTable.t()
  def compile(gsub) do
    offset_base = 14

    list_compile_opts = [
      feature_indices: gsub.feature_indices,
      lookup_indices: gsub.lookup_indices
    ]

    {_, offsets, compiled_lists} =
      [gsub.script_list, gsub.feature_list, gsub.lookup_list]
      |> Util.offsetted_binaries(offset_base, fn list ->
        list.__struct__.compile(list, list_compile_opts)
      end)

    data = [
      # GSUB version 1.1
      <<1::16, 1::16>>,
      offsets,
      # FeatureVariationsOffset (Not used yet)
      <<0::32>>,
      compiled_lists
    ]

    CompiledTable.new("GSUB", IO.iodata_to_binary(data))
  end

  @spec compile_subtable(map(), integer(), keyword()) :: binary()
  def compile_subtable(subtable, lookup_type, opts)

  # 1.1: Single Substitution, Format 1 (substitute by delta glyph IDs)
  # NOT IMPLEMENTED

  # 1.2: Single Substitution, Format 2 (substitute by glyph IDs)
  def compile_subtable(%{format: 2} = subtable, 1, _opts) do
    {from_glyphs, to_glyphs} =
      subtable.substitutions
      |> Enum.map(fn {from, to} ->
        from_id = Util.get_glyph_id(from)
        to_id = Util.get_glyph_id(to)

        {GlyphStorage.get(from_id).index, GlyphStorage.get(to_id).index}
      end)
      |> Enum.sort(&(elem(&1, 0) <= elem(&2, 0)))
      |> Enum.unzip()

    coverage = %GlyphCoverage{glyphs: from_glyphs}
    coverage_offset = 6 + length(from_glyphs) * 2

    data = [
      <<2::16>>,
      <<coverage_offset::16>>,
      <<length(from_glyphs)::16>>,
      Enum.map(to_glyphs, &<<&1::16>>),
      GlyphCoverage.compile(coverage, internal: true)
    ]

    IO.iodata_to_binary(data)
  end

  # 6.1: Chaining Contextual Substitution, Format 1 (GlyphID-based)
  def compile_subtable(%{format: 1} = subtable, 6, opts) do
    lookup_indices = opts[:lookup_indices]
    ruleset_count = map_size(subtable.subrulesets)

    {glyphs, subrulesets} =
      subtable.subrulesets
      |> Enum.map(fn {key, value} ->
        glyph_index = GlyphStorage.get(Util.get_glyph_id(key)).index

        {glyph_index, value}
      end)
      |> Enum.sort(&(elem(&1, 0) <= elem(&2, 0)))
      |> Enum.unzip()

    coverage = %GlyphCoverage{glyphs: glyphs}
    compiled_coverage = GlyphCoverage.compile(coverage, internal: true)
    coverage_offset = 6 + ruleset_count * 2
    offset_base = coverage_offset + byte_size(compiled_coverage)

    {_, offsets, compiled_subrulesets} =
      Util.offsetted_binaries(subrulesets, offset_base, fn subrules ->
        subrule_offset_base = 2 + length(subrules) * 2

        {_, offsets2, compiled_subrules} =
          Util.offsetted_binaries(subrules, subrule_offset_base, fn subrule ->
            sub_records =
              Enum.map(subrule.substitutions, fn {glyph_pos, lookup_name} ->
                <<glyph_pos::16, lookup_indices[lookup_name]::16>>
              end)

            [
              <<length(subrule.backtrack)::16>>,
              Enum.map(subrule.backtrack, &<<GlyphStorage.get(Util.get_glyph_id(&1)).index::16>>),
              <<length(subrule.input) + 1::16>>,
              Enum.map(subrule.input, &<<GlyphStorage.get(Util.get_glyph_id(&1)).index::16>>),
              <<length(subrule.lookahead)::16>>,
              Enum.map(subrule.lookahead, &<<GlyphStorage.get(Util.get_glyph_id(&1)).index::16>>),
              <<length(sub_records)::16>>,
              sub_records
            ]
          end)

        [<<length(subrules)::16>>, offsets2, compiled_subrules]
      end)

    data = [
      <<1::16>>,
      <<coverage_offset::16>>,
      <<ruleset_count::16>>,
      offsets,
      compiled_coverage,
      compiled_subrulesets
    ]

    IO.iodata_to_binary(data)
  end

  # 6.2: Chaining Contextual Substitution, Format 2 (Class-based)
  # NOT IMPLEMENTED

  # 6.3: Chaining Contextual Substitution, Format 3 (Coverage-based)
  def compile_subtable(%{format: 3} = subtable, 6, opts) do
    lookup_indices = opts[:lookup_indices]
    sub_count = length(subtable.substitutions)
    seq_keys = ~w(backtrack input lookahead)a
    counts = seq_keys |> Enum.map(&length(subtable[&1])) |> Enum.sum()
    offset_base = 10 + counts * 2 + sub_count * 4

    {offsets, coverages} =
      seq_keys
      |> Enum.map(&subtable[&1])
      |> make_coverage_records(offset_base)

    sub_records =
      Enum.map(subtable.substitutions, fn {glyph_pos, lookup_name} ->
        <<glyph_pos::16, lookup_indices[lookup_name]::16>>
      end)

    data = [
      <<3::16>>,
      Enum.reverse(offsets),
      <<sub_count::16>>,
      sub_records,
      Enum.reverse(coverages)
    ]

    IO.iodata_to_binary(data)
  end

  # 8.1 Reverse Chaining Contextual Single Substitution, Format 1 (Coverage-based)
  def compile_subtable(%{format: 1} = subtable, 8, _opts) do
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
    seq_keys = ~w(backtrack lookahead)a
    counts = seq_keys |> Enum.map(&length(subtable[&1])) |> Enum.sum()
    offset_base = 10 + counts * 2 + input_count * 2

    coverage = %GlyphCoverage{glyphs: from_glyphs}
    compiled_coverage = GlyphCoverage.compile(coverage, internal: true)

    {offsets, coverages} =
      seq_keys
      |> Enum.map(&subtable[&1])
      |> make_coverage_records(offset_base + byte_size(compiled_coverage))

    data = [
      <<1::16>>,
      <<offset_base::16>>,
      Enum.reverse(offsets),
      <<input_count::16>>,
      Enum.map(to_glyphs, &<<&1::16>>),
      compiled_coverage,
      Enum.reverse(coverages)
    ]

    IO.iodata_to_binary(data)
  end

  defp make_coverage_records(sequences, offset_base) do
    {_, offsets, coverages} =
      sequences
      |> Enum.reduce({offset_base, [], []}, fn seq, {pos, data1, data2} ->
        {next_pos, offsets, data} =
          seq
          |> compile_covseq()
          |> Util.offsetted_binaries(pos, & &1)

        offsets_bin = [<<length(offsets)::16>>, offsets]

        {next_pos, [offsets_bin | data1], [data | data2]}
      end)

    {offsets, coverages}
  end

  @spec compile_covseq([list() | GlyphCoverage.t()]) :: [binary()]
  defp compile_covseq(seq), do: Enum.map(seq, &GlyphCoverage.compile/1)
end
