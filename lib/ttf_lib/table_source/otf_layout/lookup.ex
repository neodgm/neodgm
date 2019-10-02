defmodule TTFLib.TableSource.OTFLayout.Lookup do
  defstruct ~w(owner type name subtables)a

  @type t :: %__MODULE__{
          owner: module(),
          type: integer(),
          name: term(),
          subtables: [map()]
        }

  @spec compile(t(), keyword()) :: binary()
  def compile(%{subtables: subtables} = lookup, opts) do
    subtable_count = length(subtables)

    # Size of MarkFilteringSet: 0
    offset_base = 6 + subtable_count * 2 + 0

    {_, offsets, compiled_subtables} =
      Enum.reduce(subtables, {offset_base, [], []}, fn subtable, {pos, offsets, tables} ->
        compiled = lookup.owner.compile_subtable(subtable, lookup.type, opts)

        {pos + byte_size(compiled), [pos | offsets], [compiled | tables]}
      end)

    data = [
      <<lookup.type::16>>,
      # LookupFlag (Not used yet)
      <<0::16>>,
      <<subtable_count::16>>,
      offsets |> Enum.reverse() |> Enum.map(&<<&1::16>>),
      # MarkFilteringSet (Not present)
      "",
      Enum.reverse(compiled_subtables)
    ]

    IO.iodata_to_binary(data)
  end
end
