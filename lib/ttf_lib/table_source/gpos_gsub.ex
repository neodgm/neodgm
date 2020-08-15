defmodule TTFLib.TableSource.GPOSGSUB do
  alias TTFLib.CompiledTable
  alias TTFLib.TableSource.GPOS
  alias TTFLib.TableSource.GSUB
  alias TTFLib.TableSource.OTFLayout.FeatureList
  alias TTFLib.TableSource.OTFLayout.ScriptList
  alias TTFLib.Util

  @type t :: GPOS.t() | GSUB.t()
  @type feature_indices :: %{optional({<<_::4>>, term()}) => integer()}
  @type lookup_indices :: %{optional(binary()) => integer()}

  @spec compile(t()) :: CompiledTable.t()
  def compile(%struct{} = table) when struct in [GPOS, GSUB] do
    table = preprocess(table)
    offset_base = 14

    list_compile_opts = [
      feature_indices: table.feature_indices,
      lookup_indices: table.lookup_indices
    ]

    {_, offsets, compiled_lists} =
      [table.script_list, table.feature_list, table.lookup_list]
      |> Util.offsetted_binaries(offset_base, fn list ->
        list.__struct__.compile(list, list_compile_opts)
      end)

    data = [
      # GPOS version 1.1, or GSUB version 1.1
      <<1::16, 1::16>>,
      offsets,
      # FeatureVariationsOffset (Not used yet)
      <<0::32>>,
      compiled_lists
    ]

    struct
    |> Module.split()
    |> List.last()
    |> CompiledTable.new(IO.iodata_to_binary(data))
  end

  @spec preprocess(table) :: table when table: t()
  defp preprocess(%struct{} = table) when struct in [GPOS, GSUB] do
    %{
      table
      | script_list: ScriptList.sort(table.script_list),
        feature_list: FeatureList.sort(table.feature_list)
    }
    |> populate_indices()
  end

  @spec populate_indices(table) :: table when table: t()
  defp populate_indices(%struct{} = table) when struct in [GPOS, GSUB] do
    %{
      table
      | feature_indices: index_map(table.feature_list.features, &{&1.tag, &1.name}),
        lookup_indices: index_map(table.lookup_list.lookups, & &1.name)
    }
  end

  defp index_map(enumerable, fun) do
    enumerable
    |> Enum.with_index()
    |> Enum.map(fn {item, index} -> {fun.(item), index} end)
    |> Map.new()
  end
end
