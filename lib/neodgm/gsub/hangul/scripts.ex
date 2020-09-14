defmodule NeoDGM.GSUB.Hangul.Scripts do
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
          tag: "hang",
          default_language: dflt_lang(),
          languages: []
        },
        %Script{
          tag: "jamo",
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
      required_feature: nil,
      features: [{"ccmp", "Hangul composition"}]
    }
  end
end
