defmodule TTFLib.TableSource.Name.Definitions do
  platform_ids = %{
    unicode: 0,
    macintosh: 1,
    iso: 2,
    windows: 3,
    custom: 4
  }

  encoding_ids = %{
    unicode: %{
      unicode_10: 0,
      unicode_11: 1,
      iso_10646: 2,
      unicode_20_bmp: 3,
      unicode_20_full: 4,
      unicode_variation: 5,
      unicode_full: 6
    },
    macintosh: %{
      roman: 0
    },
    windows: %{
      symbol: 0,
      unicode_bmp: 1,
      shift_jis: 2,
      prc: 3,
      big5: 4,
      wansung: 5,
      johab: 6,
      unicode_full: 10
    }
  }

  language_ids = %{
    macintosh: %{
      en: 0,
      ko: 23
    },
    windows: %{
      en_us: 0x0409,
      ko_kr: 0x0412
    }
  }

  name_ids = %{
    copyright: 0,
    family: 1,
    subfamily: 2,
    unique_id: 3,
    full_name: 4,
    version: 5,
    postscript_name: 6,
    trademark: 7,
    manufacturer: 8,
    designer: 9,
    description: 10,
    vendor_url: 11,
    designer_url: 12,
    license: 13,
    license_url: 14,
    typographic_family: 16,
    typographic_subfamily: 17,
    sample_text: 19,
    postscript_cid_findfont_name: 20
  }

  @spec platform_id(atom()) :: integer()
  def platform_id(name)

  Enum.each(platform_ids, fn {key, value} ->
    def platform_id(unquote(key)), do: unquote(value)
  end)

  @spec encoding_id(atom(), atom()) :: integer()
  def encoding_id(platform, name)

  Enum.each(encoding_ids, fn {platform, encodings} ->
    Enum.each(encodings, fn {key, value} ->
      def encoding_id(unquote(platform), unquote(key)), do: unquote(value)
    end)
  end)

  @spec language_id(atom(), atom()) :: integer()
  def language_id(platform, name)

  Enum.each(language_ids, fn {platform, languages} ->
    Enum.each(languages, fn {key, value} ->
      def language_id(unquote(platform), unquote(key)), do: unquote(value)
    end)
  end)

  @spec name_id(atom()) :: integer()
  def name_id(name)

  Enum.each(name_ids, fn {key, value} ->
    def name_id(unquote(key)), do: unquote(value)
  end)

  @spec name_ids() :: %{optional(atom()) => integer()}
  def name_ids, do: unquote(Macro.escape(name_ids))
end
