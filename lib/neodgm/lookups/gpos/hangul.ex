use PixelFont.OTFLayout

lookups NeoDGM.Lookups.GPOS.Hangul, for: "GPOS" do
  module do
    defp scripts do
      %{"DFLT" => [:default], "hang" => [:default], "jamo" => [:default]}
    end

    glyph_names = fn prefix, set_range, num_range ->
      for set <- set_range, num <- num_range do
        "#{prefix}_#{set}_#{num |> to_string() |> String.pad_leading(2, "0")}"
      end
    end

    @all_cho glyph_names.("cho", 0..7, 0..18)
    @all_jung glyph_names.("jung", 0..3, 0..20)
    @all_jong glyph_names.("jong", 0..3, 1..27)
  end

  lookup :single_adjustment, "Overlap jungseong letters" do
    adjust_uniform @all_jung, x_placement: -16, x_advance: -16
  end

  lookup :single_adjustment, "Overlap jongseong letters" do
    adjust_uniform @all_jong, x_placement: -16, x_advance: -16
  end

  lookup :chained_context, "Hangul LVT form, jungseong" do
    feature "vjmo", scripts()

    context do
      backtrack @all_cho
      input @all_jung, apply: "Overlap jungseong letters"
    end
  end

  lookup :chained_context, "Hangul LVT form, jongseong" do
    feature "tjmo", scripts()

    context do
      backtrack @all_jung
      backtrack @all_cho
      input @all_jong, apply: "Overlap jongseong letters"
    end
  end
end
