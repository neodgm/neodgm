defmodule NeoDGM.GPOS.Pro.Lookups do
  alias TTFLib.TableSource.GPOS
  alias TTFLib.TableSource.GPOS.PairAdjustment2
  alias TTFLib.TableSource.GPOS.ValueRecord
  alias TTFLib.TableSource.OTFLayout.ClassDefinition
  alias TTFLib.TableSource.OTFLayout.{Lookup, LookupList}

  @spec data() :: LookupList.t()
  def data do
    %LookupList{
      lookups: []
    }
  end
end
