defmodule NeoDGM.GSUB.Hangul.Lookups do
  require PixelFont.Util
  alias PixelFont.TableSource.GSUB
  alias PixelFont.TableSource.GSUB.Single1
  alias PixelFont.TableSource.GSUB.ChainingContext3
  alias PixelFont.TableSource.OTFLayout.GlyphCoverage
  alias PixelFont.TableSource.OTFLayout.{Lookup, LookupList}
  import PixelFont.Util, only: :macros

  @spec data() :: LookupList.t()
  def data do
    %LookupList{
      lookups:
        [
          cho_substitutions(),
          jung_substitutions(),
          jong_substitutions(),
          contexts()
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

  @spec contexts() :: Lookup.t()
  defp contexts do
    %Lookup{
      owner: GSUB,
      type: 6,
      name: "Hangul composition",
      subtables: [
        #
        # Selection of choseong set when jongseong is present
        #

        %ChainingContext3{
          backtrack: [],
          input: [GlyphCoverage.of([0x1100..0x1112])],
          lookahead: [
            GlyphCoverage.of([0x1161..0x1168, 0x1175]),
            GlyphCoverage.of([0x11A8..0x11C2])
          ],
          substitutions: [{0, "Hangul choseong, set 5"}]
        },
        %ChainingContext3{
          backtrack: [],
          input: [GlyphCoverage.of([0x1100..0x1112])],
          lookahead: [
            GlyphCoverage.of(~i(1169 116D 116E 1172 1173)x),
            GlyphCoverage.of([0x11A8..0x11C2])
          ],
          substitutions: [{0, "Hangul choseong, set 6"}]
        },
        %ChainingContext3{
          backtrack: [],
          input: [GlyphCoverage.of([0x1100..0x1112])],
          lookahead: [
            GlyphCoverage.of(~i(116A 116B 116C 116F 1170 1171 1174)x),
            GlyphCoverage.of([0x11A8..0x11C2])
          ],
          substitutions: [{0, "Hangul choseong, set 7"}]
        },

        #
        # Selection of jungseong set when jongseong is present
        #

        %ChainingContext3{
          backtrack: [GlyphCoverage.of(Enum.map(0..7, &["cho_#{&1}_00", "cho_#{&1}_15"]))],
          input: [GlyphCoverage.of([0x1161..0x1175])],
          lookahead: [GlyphCoverage.of([0x11A8..0x11C2])],
          substitutions: [{0, "Hangul jungseong, set 2"}]
        },
        %ChainingContext3{
          backtrack: [
            [0x1101..0x110E, 0x1110..0x1112]
            |> Enum.flat_map(& &1)
            |> Enum.map(fn code ->
              num = (code - 0x1100) |> to_string() |> String.pad_leading(2, "0")

              Enum.map(0..7, &"cho_#{&1}_#{num}")
            end)
            |> GlyphCoverage.of()
          ],
          input: [GlyphCoverage.of([0x1161..0x1175])],
          lookahead: [GlyphCoverage.of([0x11A8..0x11C2])],
          substitutions: [{0, "Hangul jungseong, set 3"}]
        },

        #
        # Selection of jongseong set
        #

        %ChainingContext3{
          backtrack: [
            ~i(1161 1163 116A)x
            |> Enum.map(fn code ->
              num = (code - 0x1161) |> to_string() |> String.pad_leading(2, "0")

              Enum.map(0..3, &"jung_#{&1}_#{num}")
            end)
            |> GlyphCoverage.of()
          ],
          input: [GlyphCoverage.of([0x11A8..0x11C2])],
          lookahead: [],
          substitutions: [{0, "Hangul jongseong, set 0"}]
        },
        %ChainingContext3{
          backtrack: [
            ~i(1165 1167 116C 116F 1171 1174 1175)x
            |> Enum.map(fn code ->
              num = (code - 0x1161) |> to_string() |> String.pad_leading(2, "0")

              Enum.map(0..3, &"jung_#{&1}_#{num}")
            end)
            |> GlyphCoverage.of()
          ],
          input: [GlyphCoverage.of([0x11A8..0x11C2])],
          lookahead: [],
          substitutions: [{0, "Hangul jongseong, set 1"}]
        },
        %ChainingContext3{
          backtrack: [
            ~i(1162 1164 1166 1168 116B 1170)x
            |> Enum.map(fn code ->
              num = (code - 0x1161) |> to_string() |> String.pad_leading(2, "0")

              Enum.map(0..3, &"jung_#{&1}_#{num}")
            end)
            |> GlyphCoverage.of()
          ],
          input: [GlyphCoverage.of([0x11A8..0x11C2])],
          lookahead: [],
          substitutions: [{0, "Hangul jongseong, set 2"}]
        },
        %ChainingContext3{
          backtrack: [
            ~i(1169 116D 116E 1172 1173)x
            |> Enum.map(fn code ->
              num = (code - 0x1161) |> to_string() |> String.pad_leading(2, "0")

              Enum.map(0..3, &"jung_#{&1}_#{num}")
            end)
            |> GlyphCoverage.of()
          ],
          input: [GlyphCoverage.of([0x11A8..0x11C2])],
          lookahead: [],
          substitutions: [{0, "Hangul jongseong, set 3"}]
        },

        #
        # Selection of choseong set when jongseong is absent
        #

        %ChainingContext3{
          backtrack: [],
          input: [GlyphCoverage.of([0x1100..0x1112])],
          lookahead: [GlyphCoverage.of([0x1161..0x1168, 0x1175])],
          substitutions: [{0, "Hangul choseong, set 0"}]
        },
        %ChainingContext3{
          backtrack: [],
          input: [GlyphCoverage.of([0x1100..0x1112])],
          lookahead: [GlyphCoverage.of(~i(1169 116D 1173)x)],
          substitutions: [{0, "Hangul choseong, set 1"}]
        },
        %ChainingContext3{
          backtrack: [],
          input: [GlyphCoverage.of([0x1100..0x1112])],
          lookahead: [GlyphCoverage.of(~i(116E 1172)x)],
          substitutions: [{0, "Hangul choseong, set 2"}]
        },
        %ChainingContext3{
          backtrack: [],
          input: [GlyphCoverage.of([0x1100..0x1112])],
          lookahead: [GlyphCoverage.of(~i(116A 116B 116C 1174)x)],
          substitutions: [{0, "Hangul choseong, set 3"}]
        },
        %ChainingContext3{
          backtrack: [],
          input: [GlyphCoverage.of([0x1100..0x1112])],
          lookahead: [GlyphCoverage.of([0x116F..0x1171])],
          substitutions: [{0, "Hangul choseong, set 4"}]
        },

        #
        # Selection of jungseong set when jongseong is absent
        #

        %ChainingContext3{
          backtrack: [GlyphCoverage.of(Enum.map(0..7, &["cho_#{&1}_00", "cho_#{&1}_15"]))],
          input: [GlyphCoverage.of([0x1161..0x1175])],
          lookahead: [],
          substitutions: [{0, "Hangul jungseong, set 0"}]
        },
        %ChainingContext3{
          backtrack: [
            [0x1101..0x110E, 0x1110..0x1112]
            |> Enum.flat_map(& &1)
            |> Enum.map(fn code ->
              num = (code - 0x1100) |> to_string() |> String.pad_leading(2, "0")

              Enum.map(0..7, &"cho_#{&1}_#{num}")
            end)
            |> GlyphCoverage.of()
          ],
          input: [GlyphCoverage.of([0x1161..0x1175])],
          lookahead: [],
          substitutions: [{0, "Hangul jungseong, set 1"}]
        }
      ]
    }
  end
end
