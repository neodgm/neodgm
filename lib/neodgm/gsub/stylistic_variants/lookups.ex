defmodule NeoDGM.GSUB.StylisticVariants.Lookups do
  alias TTFLib.TableSource.GSUB
  alias TTFLib.TableSource.GSUB.Single2
  alias TTFLib.TableSource.OTFLayout.{Lookup, LookupList}

  @spec data() :: LookupList.t()
  def data do
    %LookupList{
      lookups: [
        %Lookup{
          owner: GSUB,
          type: 1,
          name: "Lowercase h, old version",
          subtables: [
            %Single2{
              substitutions: [
                {?h, "h.cv01"},
                # U+24A3 PARENTHESIZED LATIN SMALL LETTER H
                {0x24A3, "uni24A3.cv01"},
                # U+24D7 CIRCLED LATIN SMALL LETTER H
                {0x24D7, "uni24D7.cv01"}
              ]
            }
          ]
        },
        %Lookup{
          owner: GSUB,
          type: 1,
          name: "Lowercase i, old version",
          subtables: [
            %Single2{
              substitutions: [
                {?i, "i.cv02"},
                {0x00EC, "igrave.cv02"},
                {0x00ED, "iacute.cv02"},
                {0x00EE, "icircumflex.cv02"},
                {0x00EF, "idieresis.cv02"},
                {0x0131, "dotlessi.cv02"},
                # U+2071 SUPERSCRIPT LATIN SMALL LETTER I
                {0x2071, "uni2071.cv02"},
                # U+24A4 PARENTHESIZED LATIN SMALL LETTER I
                {0x24A4, "uni24A4.cv02"},
                # U+24D8 CIRCLED LATIN SMALL LETTER I
                {0x24D8, "uni24D8.cv02"}
              ]
            }
          ]
        },
        %Lookup{
          owner: GSUB,
          type: 1,
          name: "Lowercase j, old version",
          subtables: [
            %Single2{
              substitutions: [
                {?j, "j.cv03"},
                # U+24A5 PARENTHESIZED LATIN SMALL LETTER J
                {0x24A5, "uni24A5.cv03"},
                # U+24D9 CIRCLED LATIN SMALL LETTER J
                {0x24D9, "uni24D9.cv03"}
              ]
            }
          ]
        },
        %Lookup{
          owner: GSUB,
          type: 1,
          name: "Lowercase l, old version",
          subtables: [
            %Single2{
              substitutions: [
                {?l, "l.cv04"},
                # U+2097 LATIN SUBSCRIPT SMALL LETTER L
                {0x2097, "uni2097.cv04"},
                # U+24A7 PARENTHESIZED LATIN SMALL LETTER L
                {0x24A7, "uni24A7.cv04"},
                # U+24DB CIRCLED LATIN SMALL LETTER L
                {0x24DB, "uni24DB.cv04"}
              ]
            }
          ]
        },
        %Lookup{
          owner: GSUB,
          type: 1,
          name: "Lowercase n, old version",
          subtables: [
            %Single2{
              substitutions: [
                {?n, "n.cv05"},
                {0x00F1, "ntilde.cv05"},
                # U+24A9 PARENTHESIZED LATIN SMALL LETTER N
                {0x24A9, "uni24A9.cv05"},
                # U+24DD CIRCLED LATIN SMALL LETTER N
                {0x24DD, "uni24DD.cv05"}
              ]
            }
          ]
        },
        %Lookup{
          owner: GSUB,
          type: 1,
          name: "Lowercase r, old version",
          subtables: [
            %Single2{
              substitutions: [
                {?r, "r.cv06"},
                # U+24AD PARENTHESIZED LATIN SMALL LETTER R
                {0x24AD, "uni24AD.cv06"},
                # U+24E1 CIRCLED LATIN SMALL LETTER R
                {0x24E1, "uni24E1.cv06"}
              ]
            }
          ]
        }
      ]
    }
  end
end
