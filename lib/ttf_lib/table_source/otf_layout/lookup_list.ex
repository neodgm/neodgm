defmodule TTFLib.TableSource.OTFLayout.LookupList do
  alias TTFLib.TableSource.OTFLayout.Lookup
  alias TTFLib.Util

  defstruct ~w(lookups)a

  @type t :: %__MODULE__{lookups: [Lookup.t()]}

  @spec compile(t(), keyword()) :: binary()
  def compile(%{lookups: lookups}, opts) do
    lookup_count = length(lookups)
    offset_base = 2 + lookup_count * 2

    {_, offsets, tables} =
      Util.offsetted_binaries(lookups, offset_base, &Lookup.compile(&1, opts))

    IO.iodata_to_binary([<<lookup_count::16>>, offsets, tables])
  end
end
