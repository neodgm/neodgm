defmodule TTFLib.TableSource.GSUB do
  alias TTFLib.CompiledTable
  alias TTFLib.TableSource.GPOSGSUB
  alias TTFLib.TableSource.GSUB.Subtable
  alias TTFLib.TableSource.OTFLayout.FeatureList
  alias TTFLib.TableSource.OTFLayout.LookupList
  alias TTFLib.TableSource.OTFLayout.ScriptList

  defstruct script_list: %ScriptList{},
            feature_list: %FeatureList{},
            lookup_list: %LookupList{},
            feature_indices: %{},
            lookup_indices: %{}

  @type t :: %__MODULE__{
          script_list: ScriptList.t(),
          feature_list: FeatureList.t(),
          lookup_list: LookupList.t(),
          feature_indices: GPOSGSUB.feature_indices(),
          lookup_indices: GPOSGSUB.lookup_indices()
        }

  @spec compile(t()) :: CompiledTable.t()
  defdelegate compile(gsub), to: GPOSGSUB

  @spec compile_subtable(map(), integer(), keyword()) :: binary()
  def compile_subtable(subtable, _lookup_type, opts) do
    Subtable.compile(subtable, opts)
  end
end
