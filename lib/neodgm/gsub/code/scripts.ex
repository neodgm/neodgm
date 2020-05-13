defmodule NeoDGM.GSUB.Code.Scripts do
  alias TTFLib.TableSource.OTFLayout.LanguageSystem
  alias TTFLib.TableSource.OTFLayout.{Script, ScriptList}

  @spec scripts() :: ScriptList.t()
  def scripts do
    %ScriptList{
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
  end
end
