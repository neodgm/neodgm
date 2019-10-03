defmodule NeoDGM.BitmapFont do
  base_glyph_sources =
    [
      BasicLatin,
      BlockElements,
      BoxDrawing,
      BraillePatterns,
      Dingbats,
      EnclosedAlphanumerics,
      GeneralPunctuation,
      GeometricShapes,
      HangulCompatibilityJamo,
      HangulJamo,
      HangulJamoSource,
      HangulSyllables,
      Latin1Supplement,
      PowerlineSymbols,
      Trigrams
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
      unquote_splicing(base_glyph_sources),
      unquote_splicing(ligature_glyph_sources)
    ]
  end

  def get_sources(_), do: unquote(base_glyph_sources)
end
