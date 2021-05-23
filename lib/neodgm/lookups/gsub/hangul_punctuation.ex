use PixelFont.OTFLayout

lookups NeoDGM.Lookups.GSUB.HangulPunctuation, for: "GSUB" do
  module do
    import NeoDGM.BitmapFont

    defp scripts do
      %{"DFLT" => [:default], "hang" => [:default], "jamo" => [:default]}
    end
  end

  #
  # Substitutions
  #

  lookup :single_substitution, "Shorter punctuation for Hangul" do
    substitutions do
      substitute ?-, "hyphen.left1px"
      substitute ?~, "asciitilde.left1px"
    end
  end

  #
  # Contexts
  #

  lookup :chained_context, "Proper placement of punctuation between Hangul" do
    feature "dist", scripts()

    # Ignore: This context is covered by a GPOS lookup.
    context do
      backtrack a_and_wa_components()
      backtrack all_cho_glyphs()
      input '-~'
      lookahead [all_cho_glyphs(), ?가..?힣]
    end

    # Ignore: This context is covered by a GPOS lookup.
    context do
      backtrack a_and_wa_syllables()
      input '-~'
      lookahead [all_cho_glyphs(), ?가..?힣]
    end

    # LVT form
    context do
      backtrack a_and_wa_components()
      backtrack all_cho_glyphs()
      input '-~', apply: "Shorter punctuation for Hangul"
    end

    # Hangul syllable form
    context do
      backtrack a_and_wa_syllables()
      input '-~', apply: "Shorter punctuation for Hangul"
    end
  end
end
