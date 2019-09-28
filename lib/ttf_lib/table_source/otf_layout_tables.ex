defmodule TTFLib.TableSource.OTFLayout.ScriptList do
  alias TTFLib.TableSource.OTFLayout.Script

  defstruct ~w(scripts)a

  @type t :: %__MODULE__{scripts: [Script.t()]}
end

defmodule TTFLib.TableSource.OTFLayout.Script do
  alias TTFLib.TableSource.OTFLayout.LanguageSystem

  defstruct ~w(tag default_language languages)a

  @type t :: %__MODULE__{
          tag: <<_::32>>,
          default_language: LanguageSystem.t() | nil,
          languages: [LanguageSystem.t()]
        }
end

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
end

defmodule TTFLib.TableSource.OTFLayout.FeatureList do
  alias TTFLib.TableSource.OTFLayout.Feature

  defstruct ~w(features)a

  @type t :: %__MODULE__{features: [Feature.t()]}
end

defmodule TTFLib.TableSource.OTFLayout.Feature do
  defstruct ~w(tag name lookup_keys lookup_indices)a

  @type lookup_key :: term()

  @type t :: %__MODULE__{
          tag: <<_::32>>,
          name: term(),
          lookup_keys: [lookup_key()],
          lookup_indices: [integer()]
        }
end

defmodule TTFLib.TableSource.OTFLayout.LookupList do
  alias TTFLib.TableSource.OTFLayout.Lookup

  defstruct ~w(lookups)a

  @type t :: %__MODULE__{lookups: [Lookup.t()]}
end

defmodule TTFLib.TableSource.OTFLayout.Lookup do
  defstruct ~w(type name subtables)a

  @type t :: %__MODULE__{type: integer(), name: term(), subtables: [map()]}
end
