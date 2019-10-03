defmodule NeoDGM.GSUB do
  alias TTFLib.TableSource.GSUB
  alias TTFLib.TableSource.OTFLayout.{Feature, FeatureList}
  alias TTFLib.TableSource.OTFLayout.LookupList
  alias TTFLib.TableSource.OTFLayout.{LanguageSystem, Script, ScriptList}

  script_list = %ScriptList{
    scripts: [
      %Script{
        tag: "DFLT",
        default_language: %LanguageSystem{
          tag: "dflt",
          features: [
            {"aalt", "Ligation for program codes"},
            {"calt", "Ligation for program codes"}
          ]
        },
        languages: []
      }
    ]
  }

  feature_list = %FeatureList{
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

  lookup_list = %LookupList{
    lookups:
      [
        __MODULE__.ProgrammingLigatures.Substitutions,
        __MODULE__.ProgrammingLigatures.Contexts
      ]
      |> Enum.map(& &1.data())
      |> List.flatten()
  }

  gsub =
    GSUB.populate_indices(%GSUB{
      script_list: script_list,
      feature_list: feature_list,
      lookup_list: lookup_list
    })

  @spec gsub() :: map()
  def gsub, do: unquote(Macro.escape(gsub))
end
