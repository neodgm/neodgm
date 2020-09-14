defmodule NeoDGM.GSUB.Pro.Scripts do
  alias PixelFont.TableSource.OTFLayout.LanguageSystem
  alias PixelFont.TableSource.OTFLayout.{Script, ScriptList}

  @spec data() :: ScriptList.t()
  def data do
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
