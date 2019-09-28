defmodule TTFLib.TableSource.GSUB do
  alias TTFLib.TableSource.OTFLayout.ScriptList
  alias TTFLib.TableSource.OTFLayout.FeatureList
  alias TTFLib.TableSource.OTFLayout.LookupList

  defstruct ~w(script_list feature_list lookup_list)a

  @type t :: %__MODULE__{
          script_list: ScriptList.t(),
          feature_list: FeatureList.t(),
          lookup_list: LookupList.t()
        }
end
