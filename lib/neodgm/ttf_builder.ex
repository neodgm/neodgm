defmodule NeoDGM.TTFBuilder do
  alias NeoDGM.NameTable
  alias TTFLib.Builder

  @version Version.parse!(Mix.Project.config()[:version])

  @glyph_sources [
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
    # For programming ligatures
    NeoDGM.BitmapFont.ProgrammingLigatures.Arrows,
    NeoDGM.BitmapFont.ProgrammingLigatures.Markup
  ]

  def build_font do
    metrics = %{
      units_per_em: 16,
      ascender: 12,
      descender: 4,
      line_gap: 0,
      underline_size: 1,
      underline_position: -1,
      is_fixed_pitch: true
    }

    os_2 = %{
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

    params = %{
      glyph_sources: @glyph_sources,
      gsub: NeoDGM.GSUB.gsub(),
      metrics: metrics,
      os_2: os_2,
      version: @version,
      name_table: NameTable.name_table()
    }

    ttf = Builder.build_ttf(params)

    "neodgm.ttf"
    |> Path.expand(File.cwd!())
    |> File.open!([:write, :binary], &IO.binwrite(&1, ttf))
  end
end
