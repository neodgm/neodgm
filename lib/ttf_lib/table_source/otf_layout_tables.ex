defmodule TTFLib.TableSource.OTFLayout.ScriptList do
  alias TTFLib.TableSource.OTFLayout.Script

  defstruct ~w(scripts)a

  @type t :: %__MODULE__{scripts: [Script.t()]}

  @spec compile(t()) :: binary()
  def compile(%{scripts: scripts}) do
    script_count = length(scripts)
    offset_base = 2 + script_count * 6

    {_, records, tables} =
      Enum.reduce(scripts, {0, [], []}, fn script, {pos, records, tables} ->
        record = [script.tag, <<offset_base + pos::16>>]
        table = Script.compile(script)

        {pos + byte_size(table), [record | records], [table | tables]}
      end)

    data = [
      <<script_count::16>>,
      Enum.reverse(records),
      Enum.reverse(tables)
    ]

    IO.iodata_to_binary(data)
  end
end

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

defmodule TTFLib.TableSource.OTFLayout.LookupList do
  alias TTFLib.TableSource.OTFLayout.Lookup

  defstruct ~w(lookups)a

  @type t :: %__MODULE__{lookups: [Lookup.t()]}

  @spec compile(t()) :: binary()
  def compile(%{lookups: lookups}) do
    lookup_count = length(lookups)
    offset_base = 2 + lookup_count * 2

    {_, offsets, tables} =
      Enum.reduce(lookups, {0, [], []}, fn lookup, {pos, offsets, tables} ->
        table = Lookup.compile(lookup)

        {pos + byte_size(table), [offset_base + pos | offsets], [table | tables]}
      end)

    data = [
      <<lookup_count::16>>,
      offsets |> Enum.reverse() |> Enum.map(&<<&1::16>>),
      Enum.reverse(tables)
    ]

    IO.iodata_to_binary(data)
  end
end
