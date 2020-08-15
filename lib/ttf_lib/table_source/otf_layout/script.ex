defmodule TTFLib.TableSource.OTFLayout.Script do
  alias TTFLib.TableSource.OTFLayout.LanguageSystem

  defstruct ~w(tag default_language languages)a

  @type t :: %__MODULE__{
          tag: <<_::32>>,
          default_language: LanguageSystem.t() | nil,
          languages: [LanguageSystem.t()]
        }

  @spec compile(t(), keyword()) :: binary()
  def compile(%{languages: langs} = script, opts) do
    lang_count = length(langs)
    offset_base = 4 + lang_count * 6

    {compiled_def_lang, def_lang_offset} =
      case script.default_language do
        nil ->
          {"", 0}

        %LanguageSystem{} = def_lang ->
          {LanguageSystem.compile(def_lang, opts), offset_base}
      end

    offset_base = offset_base + byte_size(compiled_def_lang)

    {_, records, tables} =
      Enum.reduce(langs, {0, [], []}, fn lang, {pos, records, tables} ->
        record = [lang.tag, <<offset_base + pos::16>>]
        table = LanguageSystem.compile(lang, opts)

        {pos + byte_size(table), [record | records], [table | tables]}
      end)

    data = [
      <<def_lang_offset::16>>,
      <<lang_count::16>>,
      Enum.reverse(records),
      compiled_def_lang,
      Enum.reverse(tables)
    ]

    IO.iodata_to_binary(data)
  end

  @spec concat(t(), t()) :: t()
  def concat(script1, script2)

  def concat(%__MODULE__{tag: tag} = script1, %__MODULE__{tag: tag} = script2) do
    dflt_lang = LanguageSystem.concat(script1.default_language, script2.default_language)

    langs =
      [script1.languages, script2.languages]
      |> List.flatten()
      |> Enum.group_by(& &1.tag)
      |> Map.values()
      |> Enum.map(fn ls -> Enum.reduce(ls, &LanguageSystem.concat(&2, &1)) end)

    %__MODULE__{
      tag: tag,
      default_language: dflt_lang,
      languages: langs
    }
  end

  def concat(%__MODULE__{} = script1, %__MODULE__{}), do: script1

  @spec sort_langs(t()) :: t()
  def sort_langs(%__MODULE__{languages: langs} = script) do
    %__MODULE__{script | languages: Enum.sort_by(langs, & &1.tag)}
  end
end
