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
end
