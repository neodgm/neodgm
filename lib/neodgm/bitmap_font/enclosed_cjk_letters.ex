defmodule NeoDGM.BitmapFont.EnclosedCJKLetters do
  require TTFLib.GlyphSource
  import TTFLib.GlyphSource

  letters =
    ~w(giyeok nieun digeut rieul mieum bieup siot ieung jieut chieut kieuk tieut pieup hieut)

  export_glyphs do
    for {shape, uni_off} <- [{"parens", 0}, {"circle", 0x60}],
        {type, jung, uni_off2} <- [{"enclosed", nil, 0}, {"enclosed2", "jung_a.enclosed", 14}],
        {letter, code_base} <- Enum.zip(letters, 0x3200..0x320D) do
      composite_glyph unicode: code_base + uni_off + uni_off2 do
        component {:name, shape <> ".enclosure"}, 0, 0, flags: [:use_my_metrics]
        component {:name, letter <> "." <> type}, 0, 0
        jung && component {:name, jung}, 0, 0
      end
    end

    composite_glyph unicode: 0x321C do
      component {:name, "parens.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "uniC8FC.enclosed"}, 0, 0
    end

    composite_glyph unicode: 0x327E do
      component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "uniC6B0.enclosed"}, 0, 0
    end
  end
end
