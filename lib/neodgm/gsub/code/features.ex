defmodule NeoDGM.GSUB.Code.Features do
  alias PixelFont.TableSource.OTFLayout.{Feature, FeatureList}

  @spec data() :: FeatureList.t()
  def data do
    %FeatureList{
      features: [
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
