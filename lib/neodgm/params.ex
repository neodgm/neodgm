defmodule NeoDGM.Params do
  alias NeoDGM.NameTable

  @version Version.parse!(Mix.Project.config()[:version])

  @spec params(keyword()) :: map()
  def params(opts \\ []) do
    variant = to_string(opts[:variant])

    glyph_sources =
      case variant do
        "ligature" -> glyph_sources() ++ ligature_glyph_sources()
        _ -> glyph_sources()
      end

    %{
      version: @version,
      name_table: NameTable.name_table(),
      metrics: metrics(),
      os_2: os_2(),
      glyph_sources: glyph_sources,
      gsub: if(variant === "ligature", do: NeoDGM.GSUB.gsub())
    }
  end

  defp metrics do
    %{
      units_per_em: 16,
      ascender: 12,
      descender: 4,
      line_gap: 0,
      underline_size: 1,
      underline_position: -1,
      is_fixed_pitch: true
    }
  end

  defp os_2 do
    %{
      avg_char_width: 8,
      weight_class: :normal,
      width_class: :medium,
      subscript_size: {8, 16},
      subscript_offset: {0, 8},
      superscript_size: {8, 16},
      superscript_offset: {0, 8},
      strike_size: 1,
      strike_position: 4,
      family_class: {:sans_serif, :no_classification},
      panose: [2, 1, 5, 9, 6, 2, 1, 4, 2, 3],
      vendor_id: "5757",
      x_height: 7,
      cap_height: 10
    }
  end

  defp glyph_sources do
    [
      NeoDGM.BitmapFont.BasicLatin,
      NeoDGM.BitmapFont.BlockElements,
      NeoDGM.BitmapFont.BoxDrawing,
      NeoDGM.BitmapFont.BraillePatterns,
      NeoDGM.BitmapFont.Dingbats,
      NeoDGM.BitmapFont.EnclosedAlphanumerics,
      NeoDGM.BitmapFont.GeneralPunctuation,
      NeoDGM.BitmapFont.GeometricShapes,
      NeoDGM.BitmapFont.HangulCompatibilityJamo,
      NeoDGM.BitmapFont.HangulJamo,
      NeoDGM.BitmapFont.HangulJamoSource,
      NeoDGM.BitmapFont.HangulSyllables,
      NeoDGM.BitmapFont.Latin1Supplement,
      NeoDGM.BitmapFont.PowerlineSymbols,
      NeoDGM.BitmapFont.Trigrams,
    ]
  end

  defp ligature_glyph_sources do
    [
      NeoDGM.BitmapFont.ProgrammingLigatures.Arrows,
      NeoDGM.BitmapFont.ProgrammingLigatures.Markup
    ]
  end
end
