use PixelFont.OTFLayout

lookups NeoDGM.Lookups.GPOS.Hangul, for: "GPOS" do
  module do
    import NeoDGM.BitmapFont,
      only: [
        all_cho_glyphs: 0,
        all_jung_glyphs: 0,
        all_jong_glyphs: 0
      ]

    defp scripts do
      %{"DFLT" => [:default], "hang" => [:default], "jamo" => [:default]}
    end
  end

  lookup :single_adjustment, "Overlap jungseong letters" do
    adjust_uniform all_jung_glyphs(), x_placement: -16, x_advance: -16
  end

  lookup :single_adjustment, "Overlap jongseong letters" do
    adjust_uniform all_jong_glyphs(), x_placement: -16, x_advance: -16
  end

  lookup :chained_context, "Hangul LVT form, jungseong" do
    feature "vjmo", scripts()

    context do
      backtrack all_cho_glyphs()
      input all_jung_glyphs(), apply: "Overlap jungseong letters"
    end
  end

  lookup :chained_context, "Hangul LVT form, jongseong" do
    feature "tjmo", scripts()

    context do
      backtrack all_jung_glyphs()
      backtrack all_cho_glyphs()
      input all_jong_glyphs(), apply: "Overlap jongseong letters"
    end
  end
end
