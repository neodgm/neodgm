use PixelFont.OTFLayout

lookups NeoDGM.Lookups.GPOS.HangulPunctuation, for: "GPOS" do
  module do
    import NeoDGM.BitmapFont

    defp scripts do
      %{"DFLT" => [:default], "hang" => [:default], "jamo" => [:default]}
    end
  end

  lookup :chained_context, "Proper placement of punctuation between Hangul" do
    feature "dist", scripts()

    # LVT form
    context do
      backtrack a_and_wa_components()
      backtrack all_cho_glyphs()
      input '-~', apply: "Move 1px forward"
      lookahead [all_cho_glyphs(), ?가..?힣]
    end

    # Hangul syllable form
    context do
      backtrack a_and_wa_syllables()
      input '-~', apply: "Move 1px forward"
      lookahead [all_cho_glyphs(), ?가..?힣]
    end
  end
end
