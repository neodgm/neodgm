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

  @spec concat(t() | nil, t() | nil) :: t() | nil
  def concat(lang1, lang2)
  def concat(nil, nil), do: nil
  def concat(%__MODULE__{} = lang1, nil), do: lang1
  def concat(nil, %__MODULE__{} = lang2), do: lang2

  def concat(%__MODULE__{tag: tag} = lang1, %__MODULE__{tag: tag} = lang2) do
    %__MODULE__{
      tag: tag,
      required_feature: lang1.required_feature || lang2.required_feature,
      features: lang1.features ++ lang2.features
    }
  end

  def concat(%__MODULE__{} = lang1, %__MODULE__{}), do: lang1
end
