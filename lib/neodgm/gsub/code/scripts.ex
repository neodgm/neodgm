defmodule NeoDGM.GSUB.Code.Scripts do
  alias PixelFont.TableSource.OTFLayout.LanguageSystem
  alias PixelFont.TableSource.OTFLayout.{Script, ScriptList}

  @spec data() :: ScriptList.t()
  def data do
    %ScriptList{
      scripts: [
        %Script{
          tag: "DFLT",
          default_language: dflt_lang(),
          languages: []
        },
        %Script{
          tag: "latn",
          default_language: dflt_lang(),
          languages: []
        }
      ]
    }
  end

  @spec dflt_lang() :: LanguageSystem.t()
  defp dflt_lang do
    %LanguageSystem{
      tag: "dflt",
      features: [
        {"aalt", "Ligation for program codes"},
        {"calt", "Ligation for program codes"}
      ]
    }
  end
end
