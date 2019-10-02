defmodule TTFLib.TableSource.OTFLayout.Feature do
  defstruct ~w(tag name lookups)a

  @type lookup_key :: term()

  @type t :: %__MODULE__{
          tag: <<_::32>>,
          name: term(),
          lookups: [lookup_key()]
        }

  @spec compile(t(), keyword()) :: binary()
  def compile(%{lookups: lookups}, opts) do
    lookup_indices = opts[:lookup_indices]

    data = [
      # FeatureParams (Reserved)
      <<0::16>>,
      <<length(lookups)::16>>,
      Enum.map(lookups, &<<lookup_indices[&1]::16>>)
    ]

    IO.iodata_to_binary(data)
  end
end
