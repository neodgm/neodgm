defmodule NeoDGM.GSUB.StylisticVariants.Features do
  alias TTFLib.TableSource.OTFLayout.{Feature, FeatureList}

  @spec data() :: FeatureList.t()
  def data do
    %FeatureList{
      features: [
        %Feature{
          tag: "cv01",
          name: "Lowercase h, old version",
          lookups: ["Lowercase h, old version"]
        },
        %Feature{
          tag: "cv02",
          name: "Lowercase i, old version",
          lookups: ["Lowercase i, old version"]
        },
        %Feature{
          tag: "cv03",
          name: "Lowercase j, old version",
          lookups: ["Lowercase j, old version"]
        },
        %Feature{
          tag: "cv04",
          name: "Lowercase l, old version",
          lookups: ["Lowercase l, old version"]
        },
        %Feature{
          tag: "cv05",
          name: "Lowercase n, old version",
          lookups: ["Lowercase n, old version"]
        },
        %Feature{
          tag: "cv06",
          name: "Lowercase r, old version",
          lookups: ["Lowercase r, old version"]
        },
        %Feature{
          tag: "ss01",
          name: "Lowercase glyphs, old version",
          lookups: [
            "Lowercase h, old version",
            "Lowercase i, old version",
            "Lowercase j, old version",
            "Lowercase l, old version",
            "Lowercase n, old version",
            "Lowercase r, old version"
          ]
        }
      ]
    }
  end
end
