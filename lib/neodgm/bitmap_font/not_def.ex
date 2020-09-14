use PixelFont.GlyphSource

glyph_source NeoDGM.BitmapFont.NotDef do
  bmp_glyph name: ".notdef" do
    advance 8
    bounds 0..7, -3..11

    data """
    1111111
    1000001
    1000001
    1000001
    1011101
    1000101
    1001101
    1001001
    1000001
    1001001
    1000001
    1000001
    1000001
    1111111
    """
  end
end
