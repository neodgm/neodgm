defmodule NeoDGM.GPOS.Pro.Features do
  alias TTFLib.TableSource.OTFLayout.{Feature, FeatureList}

  @spec data() :: FeatureList.t()
  def data do
    %FeatureList{
      features: [
        %Feature{
          tag: "kern",
          name: "Kerning for Latin letters",
          lookups: [
            "Pair adjustments for Latin letters"
          ]
        }
      ]
    }
  end
end
