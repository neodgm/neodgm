defmodule NeoDGM.GSUB.Hangul.Lookups do
  alias TTFLib.TableSource.GSUB
  alias TTFLib.TableSource.GSUB.Single1
  alias TTFLib.TableSource.OTFLayout.GlyphCoverage
  alias TTFLib.TableSource.OTFLayout.{Lookup, LookupList}

  @spec data() :: LookupList.t()
  def data do
    %LookupList{
      lookups:
        [
          cho_substitutions(),
          jung_substitutions(),
          jong_substitutions()
        ]
        |> List.flatten()
    }
  end

  @spec cho_substitutions() :: [Lookup.t()]
  defp cho_substitutions do
    Enum.map(0..7, fn set ->
      %Lookup{
        owner: GSUB,
        type: 1,
        name: "Hangul choseong, set #{set}",
        subtables: [
          %Single1{
            glyphs: GlyphCoverage.of([0x1100..0x1112]),
            to: "cho_#{set}_00"
          }
        ]
      }
    end)
  end

  @spec jung_substitutions() :: [Lookup.t()]
  defp jung_substitutions do
    Enum.map(0..3, fn set ->
      %Lookup{
        owner: GSUB,
        type: 1,
        name: "Hangul jungseong, set #{set}",
        subtables: [
          %Single1{
            glyphs: GlyphCoverage.of([0x1161..0x1175]),
            to: "jung_#{set}_00"
          }
        ]
      }
    end)
  end

  @spec jong_substitutions() :: [Lookup.t()]
  defp jong_substitutions do
    Enum.map(0..3, fn set ->
      %Lookup{
        owner: GSUB,
        type: 1,
        name: "Hangul jongseong, set #{set}",
        subtables: [
          %Single1{
            glyphs: GlyphCoverage.of([0x11A8..0x11C2]),
            to: "jong_#{set}_01"
          }
        ]
      }
    end)
  end
end
