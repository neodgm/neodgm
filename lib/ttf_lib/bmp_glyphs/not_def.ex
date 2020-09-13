use TTFLib.GlyphSource

glyph_source TTFLib.BMPGlyphs.NotDef do
  bmp_glyph name: ".notdef" do
    advance 8
    xmin 1
    xmax 7
    ymin -3
    ymax 11

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
