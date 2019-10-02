defmodule TTFLib.TableSource.OTFLayout.LanguageSystem do
  defstruct [
    :tag,
    :required_feature,
    :features
  ]

  @type feature_key :: {<<_::32>>, term()}

  @type t :: %__MODULE__{
          tag: <<_::32>>,
          required_feature: feature_key() | nil,
          features: [feature_key()]
        }

  @spec compile(t(), keyword()) :: binary()
  def compile(lang, opts) do
    feature_indices = opts[:feature_indices]

    required_index =
      case lang.required_feature do
        nil -> 0xFFFF
        name -> feature_indices[name]
      end

    data = [
      # Reserved
      <<0::16>>,
      <<required_index::16>>,
      <<length(lang.features)::16>>,
      Enum.map(lang.features, &<<feature_indices[&1]::16>>)
    ]

    IO.iodata_to_binary(data)
  end
end
