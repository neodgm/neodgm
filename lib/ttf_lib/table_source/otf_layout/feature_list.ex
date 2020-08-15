defmodule TTFLib.TableSource.OTFLayout.FeatureList do
  alias TTFLib.TableSource.OTFLayout.Feature

  defstruct features: []

  @type t :: %__MODULE__{features: [Feature.t()]}

  @spec compile(t(), keyword()) :: binary()
  def compile(%{features: features}, opts) do
    feature_count = length(features)
    offset_base = 2 + feature_count * 6

    {_, records, tables} =
      Enum.reduce(features, {0, [], []}, fn feature, {pos, records, tables} ->
        record = [feature.tag, <<offset_base + pos::16>>]
        table = Feature.compile(feature, opts)

        {pos + byte_size(table), [record | records], [table | tables]}
      end)

    data = [
      <<feature_count::16>>,
      Enum.reverse(records),
      Enum.reverse(tables)
    ]

    IO.iodata_to_binary(data)
  end

  @spec concat(t(), t()) :: t()
  def concat(%__MODULE__{features: lhs}, %__MODULE__{features: rhs}) do
    %__MODULE__{features: lhs ++ rhs}
  end

  @spec sort(t()) :: t()
  def sort(%__MODULE__{features: features}) do
    %__MODULE__{features: Enum.sort_by(features, & &1.tag)}
  end
end
