defmodule NeoDGM.GSUB.Hangul.Features do
  alias TTFLib.TableSource.OTFLayout.{Feature, FeatureList}

  @spec data() :: FeatureList.t()
  def data do
    %FeatureList{features: []}
  end
end
