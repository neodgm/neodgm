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
