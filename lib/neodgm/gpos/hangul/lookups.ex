defmodule NeoDGM.GPOS.Hangul.Lookups do
  alias TTFLib.TableSource.GPOS
  alias TTFLib.TableSource.GPOS.ChainingContext3
  alias TTFLib.TableSource.GPOS.SingleAdjustment1
  alias TTFLib.TableSource.GPOS.ValueRecord
  alias TTFLib.TableSource.OTFLayout.GlyphCoverage
  alias TTFLib.TableSource.OTFLayout.{Lookup, LookupList}

  make_coverage = fn prefix, set_range, num_range ->
    for set <- set_range, num <- num_range do
      "#{prefix}_#{set}_#{num |> to_string() |> String.pad_leading(2, "0")}"
    end
    |> GlyphCoverage.of()
  end

  @all_cho_coverage make_coverage.("cho", 0..7, 0..18)
  @all_jung_coverage make_coverage.("jung", 0..3, 0..20)
  @all_jong_coverage make_coverage.("jong", 0..3, 1..27)

  @spec data() :: LookupList.t()
  def data do
    %LookupList{
      lookups: [
        %Lookup{
          owner: GPOS,
          type: 1,
          name: "Overlap jungseong letters",
          subtables: [
            %SingleAdjustment1{
              glyphs: @all_jung_coverage,
              value_format: ~w(x_placement x_advance)a,
              value: %ValueRecord{x_placement: -16, x_advance: -16}
            }
          ]
        },
        %Lookup{
          owner: GPOS,
          type: 1,
          name: "Overlap jongseong letters",
          subtables: [
            %SingleAdjustment1{
              glyphs: @all_jong_coverage,
              value_format: ~w(x_placement x_advance)a,
              value: %ValueRecord{x_placement: -16, x_advance: -16}
            }
          ]
        },
        %Lookup{
          owner: GPOS,
          type: 8,
          name: "Hangul composition",
          subtables: [
            %ChainingContext3{
              backtrack: [@all_cho_coverage],
              input: [@all_jung_coverage, @all_jong_coverage],
              lookahead: [],
              positions: [
                {0, "Overlap jungseong letters"},
                {1, "Overlap jongseong letters"}
              ]
            },
            %ChainingContext3{
              backtrack: [@all_cho_coverage],
              input: [@all_jung_coverage],
              lookahead: [],
              positions: [{0, "Overlap jungseong letters"}]
            }
          ]
        }
      ]
    }
  end
end
