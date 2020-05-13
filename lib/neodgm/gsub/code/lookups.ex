defmodule NeoDGM.GSUB.Code.Lookups do
  alias TTFLib.TableSource.OTFLayout.LookupList

  @spec lookups() :: LookupList.t()
  def lookups do
    %LookupList{
      lookups:
        [
          __MODULE__.Substitutions,
          __MODULE__.Contexts
        ]
        |> Enum.map(& &1.data())
        |> List.flatten()
    }
  end
end
