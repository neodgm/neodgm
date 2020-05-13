defmodule NeoDGM.GSUB.Pro.Features do
  alias TTFLib.TableSource.OTFLayout.{Feature, FeatureList}

  @spec features() :: FeatureList.t()
  def features do
    %FeatureList{
      features: [
        %Feature{
          tag: "liga",
          name: "Stylistic ligatures for default language",
          lookups: [
            "Ligature substitutions ffi fi",
            "Ligature substitutions ffl fl ff"
          ]
        },
        %Feature{
          tag: "liga",
          name: "Stylistic ligatures for Turkish",
          lookups: [
            "Ligature substitutions ffl fl ff"
          ]
        }
      ]
    }
  end
end
