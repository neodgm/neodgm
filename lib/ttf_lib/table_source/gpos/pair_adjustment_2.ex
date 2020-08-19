defmodule TTFLib.TableSource.GPOS.PairAdjustment2 do
  alias TTFLib.TableSource.GPOS.ValueRecord
  alias TTFLib.TableSource.OTFLayout.ClassDefinition

  defstruct ~w(class_1 class_2 value_format_1 value_format_2 records)a

  @type t :: %__MODULE__{
          class_1: ClassDefinition.t(),
          class_2: ClassDefinition.t(),
          value_format_1: [atom()],
          value_format_2: [atom()],
          records: %{
            optional({integer(), integer()}) => {ValueRecord.t(), ValueRecord.t()}
          }
        }

  defimpl TTFLib.TableSource.GPOS.Subtable do
    alias TTFLib.TableSource.GPOS.PairAdjustment2
    alias TTFLib.TableSource.GPOS.ValueRecord
    alias TTFLib.TableSource.OTFLayout.ClassDefinition
    alias TTFLib.TableSource.OTFLayout.GlyphCoverage

    @spec compile(PairAdjustment2.t(), keyword()) :: binary()
    def compile(subtable, _opts) do
      %PairAdjustment2{
        class_1: class_1,
        class_2: class_2,
        value_format_1: vf_1,
        value_format_2: vf_2,
        records: records
      } = subtable

      class_1_count = Enum.count(class_1.assignments) + 1
      class_2_count = Enum.count(class_2.assignments) + 1
      compiled_coverage = make_coverage(class_1)
      compiled_class_1 = ClassDefinition.compile(class_1)
      compiled_class_2 = ClassDefinition.compile(class_2)

      compiled_records =
        for c1 <- 0..(class_1_count - 1), c2 <- 0..(class_2_count - 1) do
          case records[{c1, c2}] do
            nil ->
              [
                ValueRecord.compile(%ValueRecord{}, vf_1),
                ValueRecord.compile(%ValueRecord{}, vf_2)
              ]

            {record_1, record_2} ->
              [
                ValueRecord.compile(record_1, vf_1),
                ValueRecord.compile(record_2, vf_2)
              ]
          end
        end
        |> IO.iodata_to_binary()

      records_size = byte_size(compiled_records)
      coverage_offset = 16 + records_size
      class_1_offset = coverage_offset + byte_size(compiled_coverage)
      class_2_offset = class_1_offset + byte_size(compiled_class_1)

      IO.iodata_to_binary([
        # posFormat (2)
        <<2::16>>,
        # coverageOffset
        <<coverage_offset::16>>,
        # valueFormat1
        ValueRecord.compile_value_format(vf_1),
        # valueFormat2
        ValueRecord.compile_value_format(vf_2),
        # classDef1Offset
        <<class_1_offset::16>>,
        # classDef2Offset
        <<class_2_offset::16>>,
        # class1Count
        <<class_1_count::16>>,
        # class2Count
        <<class_2_count::16>>,
        # class1Records[]
        compiled_records,
        # Compiled coverage table and class definition tables
        [compiled_coverage, compiled_class_1, compiled_class_2]
      ])
    end

    @spec make_coverage(ClassDefinition.t()) :: binary()
    defp make_coverage(class_def) do
      class_def.assignments
      |> Map.values()
      |> List.flatten()
      |> Enum.uniq()
      |> Enum.sort()
      |> GlyphCoverage.of()
      |> GlyphCoverage.compile()
    end
  end
end
