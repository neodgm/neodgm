defmodule NeoDGM.GSUB.Pro.Lookups do
  alias TTFLib.TableSource.GSUB
  alias TTFLib.TableSource.GSUB.Ligature1
  alias TTFLib.TableSource.OTFLayout.{Lookup, LookupList}

  @spec data() :: LookupList.t()
  def data do
    %LookupList{
      lookups: [
        %Lookup{
          owner: GSUB,
          type: 4,
          name: "Ligature substitutions ffi fi",
          subtables: [
            %Ligature1{
              substitutions: [
                {'ffi', 0xFB03},
                {'fi', 0xFB01}
              ]
            }
          ]
        },
        %Lookup{
          owner: GSUB,
          type: 4,
          name: "Ligature substitutions ffl fl ff",
          subtables: [
            %Ligature1{
              substitutions: [
                {'ffl', 0xFB04},
                {'fl', 0xFB02},
                {'ff', 0xFB00}
              ]
            }
          ]
        }
      ]
    }
  end
end
