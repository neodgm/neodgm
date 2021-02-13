use PixelFont.OTFLayout

lookups NeoDGM.Lookups.GPOS.HangulPunctuation, for: "GPOS" do
  module do
    import NeoDGM.BitmapFont, only: [all_cho_glyphs: 0]

    defp scripts do
      %{"DFLT" => [:default], "hang" => [:default], "jamo" => [:default]}
    end
  end

  lookup :chained_context, "Proper placement of punctuation between Hangul" do
    feature "dist", scripts()

    # LVT form
    context do
      backtrack Enum.map(0..3, &"jung_#{&1}_00")
      backtrack all_cho_glyphs()
      input '-~', apply: "Move 1px forward"
      lookahead [all_cho_glyphs(), ?가..?힣]
    end

    # Hangul syllable form
    context do
      backtrack '가까나다따라마바빠사싸아자짜차카타파하'
      input '-~', apply: "Move 1px forward"
      lookahead [all_cho_glyphs(), ?가..?힣]
    end
  end
end
