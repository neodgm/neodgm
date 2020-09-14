defmodule NeoDGM.GSUB.StylisticVariants.Scripts do
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
        {"cv01", "Lowercase h, old version"},
        {"cv02", "Lowercase i, old version"},
        {"cv03", "Lowercase j, old version"},
        {"cv04", "Lowercase l, old version"},
        {"cv05", "Lowercase n, old version"},
        {"cv06", "Lowercase r, old version"},
        {"ss01", "Lowercase glyphs, old version"}
      ]
    }
  end
end
