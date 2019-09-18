defmodule TTFLib.CompiledTable do
  defstruct ~w(tag real_size padded_size checksum data)a

  @type t :: %__MODULE__{
          tag: binary(),
          real_size: non_neg_integer(),
          padded_size: non_neg_integer(),
          checksum: 0..0xFFFFFFFF,
          data: binary()
        }

  @spec new(binary(), binary()) :: t()
  def new(tag, data) when is_binary(tag) and is_binary(data) do
    <<tag::binary-4, _::binary>> = tag
    size = byte_size(data)

    pad_size =
      case rem(size, 4) do
        0 -> 0
        x -> 4 - x
      end

    padded_data = data <> <<0::pad_size*8>>
    dwords = for <<x::big-32 <- padded_data>>, do: x
    <<checksum::big-32>> = <<Enum.reduce(dwords, 0, &Kernel.+/2)::big-32>>

    %__MODULE__{
      tag: tag,
      real_size: size,
      padded_size: size + pad_size,
      checksum: checksum,
      data: padded_data
    }
  end
end
