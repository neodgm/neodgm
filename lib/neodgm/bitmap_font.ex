defmodule NeoDGM.BitmapFont do
  common_glyph_sources =
    [
      BlockElements,
      BoxDrawing,
      BraillePatterns,
      Dingbats,
      EnclosedAlphanumerics,
      GeometricShapes,
      HangulCompatibilityJamo,
      HangulJamo,
      HangulJamoSource,
      HangulSyllables,
      NumberForms,
      Trigrams,
      Components.Diacritics,
      Components.Fractions
    ]
    |> Enum.map(&Module.concat(__MODULE__, &1))

  base_glyph_sources =
    [
      BasicLatin,
      GeneralPunctuation,
      Latin1Supplement,
      PowerlineSymbols,
      Components.ShortCapitals
    ]
    |> Enum.map(&Module.concat(__MODULE__, &1))

  ligature_glyph_sources =
    [
      ProgrammingLigatures.Arrows,
      ProgrammingLigatures.Markup,
      ProgrammingLigatures.Pipes
    ]
    |> Enum.map(&Module.concat(__MODULE__, &1))

  @spec get_sources(term()) :: [module()]
  def get_sources(variant)

  def get_sources("code") do
    [
      unquote_splicing(common_glyph_sources),
      unquote_splicing(base_glyph_sources),
      unquote_splicing(ligature_glyph_sources)
    ]
  end

  def get_sources(_) do
    [
      unquote_splicing(common_glyph_sources),
      unquote_splicing(base_glyph_sources)
    ]
  end
end
