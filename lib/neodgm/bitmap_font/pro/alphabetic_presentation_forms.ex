use TTFLib.GlyphSource

glyph_source NeoDGM.BitmapFont.Pro.AlphabeticPresentationForms do
  composite_glyph unicode: 0xFB00 do
    component {:unicode, ?f}, 0, 0
    component {:unicode, ?f}, 4, 0
  end

  composite_glyph unicode: 0xFB01 do
    component {:name, "f.liga"}, 0, 0
    component {:unicode, 0x0131}, 4, 0
  end

  composite_glyph unicode: 0xFB02 do
    component {:unicode, ?f}, 0, 0
    component {:unicode, ?l}, 4, 0
  end

  composite_glyph unicode: 0xFB03 do
    component {:unicode, ?f}, 0, 0
    component {:name, "f.liga"}, 4, 0
    component {:unicode, 0x0131}, 8, 0
  end

  composite_glyph unicode: 0xFB04 do
    component {:unicode, ?f}, 0, 0
    component {:unicode, ?f}, 4, 0
    component {:unicode, ?l}, 8, 0
  end

  bmp_glyph name: "f.liga" do
    advance 7
    bounds 0..7, 0..10

    data """
    0011110
    0110011
    0110000
    1111100
    0110000
    0110000
    0110000
    0110000
    0110000
    0110000
    """
  end
end
