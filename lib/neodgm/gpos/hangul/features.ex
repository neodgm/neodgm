defmodule NeoDGM.GPOS.Hangul.Features do
  alias TTFLib.TableSource.OTFLayout.{Feature, FeatureList}

  @spec data() :: FeatureList.t()
  def data do
    %FeatureList{
      features: [
        %Feature{
          tag: "ccmp",
          name: "Hangul composition",
          lookups: ["Hangul composition"]
        }
      ]
    }
  end
end
