defmodule TTFLib.TableSource.GSUB do
  alias TTFLib.CompiledTable
  alias TTFLib.TableSource.GSUB.Subtable
  alias TTFLib.TableSource.OTFLayout.FeatureList
  alias TTFLib.TableSource.OTFLayout.LookupList
  alias TTFLib.TableSource.OTFLayout.ScriptList
  alias TTFLib.Util

  defstruct script_list: %ScriptList{},
            feature_list: %FeatureList{},
            lookup_list: %LookupList{},
            feature_indices: %{},
            lookup_indices: %{}

  @type t :: %__MODULE__{
          script_list: ScriptList.t(),
          feature_list: FeatureList.t(),
          lookup_list: LookupList.t(),
          feature_indices: %{optional({<<_::4>>, term()}) => integer()},
          lookup_indices: %{optional(binary()) => integer()}
        }

  @type feature_indices :: %{optional({<<_::4>>, term()}) => integer()}
  @type lookup_indices :: %{optional(binary()) => integer()}

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
  def compile_subtable(subtable, _lookup_type, opts) do
    Subtable.compile(subtable, opts)
  end
end
