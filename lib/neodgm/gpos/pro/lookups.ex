defmodule NeoDGM.GPOS.Pro.Lookups do
  alias TTFLib.TableSource.GPOS
  alias TTFLib.TableSource.GPOS.PairAdjustment2
  alias TTFLib.TableSource.GPOS.ValueRecord
  alias TTFLib.TableSource.OTFLayout.ClassDefinition
  alias TTFLib.TableSource.OTFLayout.{Lookup, LookupList}

  @spec data() :: LookupList.t()
  def data do
    %LookupList{
      lookups: [
        %Lookup{
          owner: GPOS,
          type: 2,
          name: "Pair adjustments for Latin letters",
          subtables: [
            %PairAdjustment2{
              class_1: %ClassDefinition{assignments: %{1 => 'F', 2 => 'T'}},
              class_2: %ClassDefinition{
                assignments: %{
                  1 => 'acdegmnopqrsuvwxyz',
                  2 => 'fijlt' ++ [0xFB00, 0xFB01, 0xFB02, 0xFB03, 0xFB04]
                }
              },
              value_format_1: ~w(x_advance)a,
              value_format_2: [],
              records: %{
                {1, 1} => {%ValueRecord{x_advance: -1}, %ValueRecord{}},
                {1, 2} => {%ValueRecord{x_advance: -1}, %ValueRecord{}},
                {2, 1} => {%ValueRecord{x_advance: -2}, %ValueRecord{}},
                {2, 2} => {%ValueRecord{x_advance: -1}, %ValueRecord{}}
              }
            },
            %PairAdjustment2{
              class_1: %ClassDefinition{
                assignments: %{1 => 'ft' ++ [0xFB00], 2 => 'ijl'}
              },
              class_2: %ClassDefinition{
                assignments: %{
                  1 => 'ft' ++ [0xFB00, 0xFB01, 0xFB02, 0xFB03, 0xFB04],
                  2 => 'ijl',
                  3 => 'cdegoqs'
                }
              },
              value_format_1: ~w(x_advance)a,
              value_format_2: [],
              records: %{
                {1, 2} => {%ValueRecord{x_advance: -1}, %ValueRecord{}},
                {2, 1} => {%ValueRecord{x_advance: -1}, %ValueRecord{}},
                {2, 2} => {%ValueRecord{x_advance: -1}, %ValueRecord{}},
                {1, 3} => {%ValueRecord{x_advance: -1}, %ValueRecord{}}
              }
            }
          ]
        }
      ]
    }
  end
end
