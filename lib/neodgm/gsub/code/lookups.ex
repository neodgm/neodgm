defmodule NeoDGM.GSUB.Code.Lookups do
  alias PixelFont.TableSource.OTFLayout.LookupList

  @spec data() :: LookupList.t()
  def data do
    [
      __MODULE__.Substitutions,
      __MODULE__.Contexts
    ]
    |> Enum.map(& &1.lookups())
    |> Enum.reduce(&LookupList.concat(&2, &1))
  end
end
