defmodule TTFLib.TableSource.OTFLayout.Feature do
  defstruct ~w(tag name lookup_keys lookup_indices)a

  @type lookup_key :: term()

  @type t :: %__MODULE__{
          tag: <<_::32>>,
          name: term(),
          lookup_keys: [lookup_key()],
          lookup_indices: [integer()]
        }

  @spec compile(t()) :: binary()
  def compile(%{lookup_indices: lookup_indices}) do
    data = [
      # FeatureParams (Reserved)
      <<0::16>>,
      <<length(lookup_indices)::16>>,
      Enum.map(lookup_indices, &<<&1::16>>)
    ]

    IO.iodata_to_binary(data)
  end
end
