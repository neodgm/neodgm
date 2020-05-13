defmodule NeoDGM.GSUB.Pro.Scripts do
  alias TTFLib.TableSource.OTFLayout.LanguageSystem
  alias TTFLib.TableSource.OTFLayout.{Script, ScriptList}

  @spec scripts() :: ScriptList.t()
  def scripts do
    %ScriptList{
      scripts: [
        %Script{
          tag: "latn",
          default_language: %LanguageSystem{
            tag: "dflt",
            features: [
              {"liga", "Stylistic ligatures for default language"}
            ]
          },
          languages: [
            %LanguageSystem{
              # In Turkish language, the "dotless i" letter is used.
              # Therefore ligatures for "ffi" and "fi" must be disabled.
              tag: "TRK ",
              features: [
                {"liga", "Stylistic ligatures for Turkish"}
              ]
            }
          ]
        }
      ]
    }
  end
end
