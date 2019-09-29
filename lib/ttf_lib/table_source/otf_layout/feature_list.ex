defmodule TTFLib.TableSource.OTFLayout.FeatureList do
  alias TTFLib.TableSource.OTFLayout.Feature

  defstruct ~w(features)a

  @type t :: %__MODULE__{features: [Feature.t()]}

  @spec compile(t()) :: binary()
  def compile(%{features: features}) do
    feature_count = length(features)
    offset_base = 2 + feature_count * 6

    {_, records, tables} =
      Enum.reduce(features, {0, [], []}, fn feature, {pos, records, tables} ->
        record = [feature.tag, <<offset_base + pos::16>>]
        table = Feature.compile(feature)

        {pos + byte_size(table), [record | records], [table | tables]}
      end)

    data = [
      <<feature_count::16>>,
      Enum.reverse(records),
      Enum.reverse(tables)
    ]

    IO.iodata_to_binary(data)
  end
end
