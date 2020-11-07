defmodule NeoDGM.BitmapFont do
  common_glyph_sources =
    [
      BasicLatin,
      BlockElements,
      BoxDrawing,
      BraillePatterns,
      Dingbats,
      EnclosedAlphanumerics,
      EnclosedCJKLetters,
      GeneralPunctuation,
      GeometricShapes,
      HalfwidthAndFullwidthForms,
      HangulCompatibilityJamo,
      HangulJamo,
      HangulJamoSource,
      HangulSyllables,
      Latin1Supplement,
      NumberForms,
      PowerlineSymbols,
      SuperscriptsAndSubscripts,
      Trigrams,
      Components.Diacritics,
      Components.Enclosed,
      Components.Fractions,
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
      unquote_splicing(ligature_glyph_sources)
    ]
  end

  def get_sources(_) do
    [
      unquote_splicing(common_glyph_sources)
    ]
  end
end
