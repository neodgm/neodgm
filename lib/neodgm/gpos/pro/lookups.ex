defmodule NeoDGM.GPOS.Pro.Lookups do
  alias PixelFont.TableSource.GPOS
  alias PixelFont.TableSource.GPOS.PairAdjustment2
  alias PixelFont.TableSource.GPOS.ValueRecord
  alias PixelFont.TableSource.OTFLayout.ClassDefinition
  alias PixelFont.TableSource.OTFLayout.{Lookup, LookupList}

  @spec data() :: LookupList.t()
  def data do
    %LookupList{
      lookups: [
        %Lookup{
          owner: GPOS,
          type: 2,
          name: "Kerning rules for punctuations",
          subtables: [
            %PairAdjustment2{
              class_1: %ClassDefinition{
                assignments: %{
                  1 => [0x002C, 0x002E],
                  2 => [0x2026]
                }
              },
              class_2: %ClassDefinition{
                assignments: %{
                  1 => [0x2019, 0x201D],
                  2 => [0x003F]
                }
              },
              value_format_1: ~w(x_advance)a,
              value_format_2: [],
              records: %{
                {1, 1} => {%ValueRecord{x_advance: -1}, %ValueRecord{}},
                {2, 1} => {%ValueRecord{x_advance: -1}, %ValueRecord{}},
                {2, 2} => {%ValueRecord{x_advance: -2}, %ValueRecord{}}
              }
            }
          ]
        },
        %Lookup{
          owner: GPOS,
          type: 2,
          name: "Kerning rules for opening quotation marks and Hangul",
          subtables: [
            %PairAdjustment2{
              class_1: %ClassDefinition{
                assignments: %{
                  1 => [0x2018, 0x201C]
                }
              },
              class_2: %ClassDefinition{
                assignments: %{
                  1 => Enum.to_list(0x1100..0x1112),
                  2 => Enum.to_list(0xAC00..0xD7A3),
                  3 =>
                    for cho_set <- 0..7, cho <- 0..18 do
                      "cho_#{cho_set}_#{cho |> to_string() |> String.pad_leading(2, "0")}"
                    end
                }
              },
              value_format_1: ~w(x_advance)a,
              value_format_2: [],
              records:
                Map.new(1..3, fn class_2 ->
                  {{1, class_2}, {%ValueRecord{x_advance: -1}, %ValueRecord{}}}
                end)
            }
          ]
        }
      ]
    }
  end
end
