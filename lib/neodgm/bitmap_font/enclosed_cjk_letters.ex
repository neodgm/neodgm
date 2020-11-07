use PixelFont.GlyphSource

letters =
  ~w(giyeok nieun digeut rieul mieum bieup siot ieung jieut chieut kieuk tieut pieup hieut)

glyph_source NeoDGM.BitmapFont.EnclosedCJKLetters do
  for {shape, uni_off} <- [{"parens", 0}, {"circle", 0x60}],
      {type, jung, uni_off2} <- [{"enclosed", nil, 0}, {"enclosed2", "jung_a.enclosed", 14}],
      {letter, code_base} <- Enum.zip(letters, 0x3200..0x320D) do
    composite_glyph code_base + uni_off + uni_off2 do
      component shape <> ".enclosure", 0, 0, flags: [:use_my_metrics]
      component letter <> "." <> type, 0, 0
      jung && component jung, 0, 0
    end
  end

  composite_glyph 0x321C do
    component "parens.enclosure", 0, 0, flags: [:use_my_metrics]
    component "uniC8FC.enclosed", 0, 0
  end

  composite_glyph 0x327E do
    component "circle.enclosure", 0, 0, flags: [:use_my_metrics]
    component "uniC6B0.enclosed", 0, 0
  end
end
