use TTFLib.GlyphSource

glyph_source NeoDGM.BitmapFont.Pro.Components.ShortCapitals,
  based_on: NeoDGM.BitmapFont.Components.ShortCapitals do
  bmp_glyph name: "I.short" do
    advance 5
    bounds 0..4, 0..9

    data """
    1111
    0110
    0110
    0110
    0110
    0110
    0110
    0110
    1111
    """
  end
end
