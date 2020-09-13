use TTFLib.GlyphSource

glyph_source TTFLib.BMPGlyphs.NotDef do
  bmp_glyph name: ".notdef" do
    advance 8
    bounds 1..7, -3..11

    data """
    111111
    100001
    100001
    100001
    101101
    100101
    101101
    101001
    100001
    101001
    100001
    100001
    100001
    111111
    """
  end
end
