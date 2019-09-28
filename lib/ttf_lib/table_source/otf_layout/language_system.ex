defmodule TTFLib.TableSource.OTFLayout.LanguageSystem do
  defstruct [
    :tag,
    :required_feature_key,
    :required_feature_index,
    :feature_keys,
    :feature_indices
  ]

  @type feature_key :: {<<_::32>>, term()}

  @type t :: %__MODULE__{
          tag: <<_::32>>,
          required_feature_key: feature_key() | nil,
          required_feature_index: integer() | 0xFFFF,
          feature_keys: [feature_key()],
          feature_indices: [integer()]
        }

  @spec compile(t()) :: binary()
  def compile(lang) do
    data = [
      # Reserved
      <<0::16>>,
      <<lang.required_feature_index::16>>,
      <<length(lang.feature_indices)::16>>,
      Enum.map(lang.feature_indices, &<<&1::16>>)
    ]

    IO.iodata_to_binary(data)
  end
end
