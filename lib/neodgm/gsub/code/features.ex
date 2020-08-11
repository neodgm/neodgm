defmodule NeoDGM.GSUB.Code.Features do
  alias TTFLib.TableSource.OTFLayout.{Feature, FeatureList}

  @spec data() :: FeatureList.t()
  def data do
    %FeatureList{
      features: [
        %Feature{
          tag: "aalt",
          name: "Ligation for program codes",
          lookups: [
            "Short bidirectional arrow body",
            "Bidirectional arrow joiner",
            "Left arrow head",
            "Left arrow body",
            "Right arrow head",
            "Right arrow head alt",
            "Right arrow body",
            "Markup comment exclam",
            "Pipe operator"
          ]
        },
        %Feature{
          tag: "calt",
          name: "Ligation for program codes",
          lookups: [
            "Short bidirectional arrow chain",
            "Left arrow head chain",
            "Right arrow head chain",
            "Left arrow body chain",
            "Bidirectional arrow joiner chain",
            "Left arrow tail chain",
            "Right arrow body chain",
            "Markup comment chain",
            "Pipe operator chain",
            "Right pipe operator chain"
          ]
        }
      ]
    }
  end
end
