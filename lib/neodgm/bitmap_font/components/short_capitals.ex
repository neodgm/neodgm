use TTFLib.GlyphSource

glyph_source NeoDGM.BitmapFont.Components.ShortCapitals do
  bmp_glyph name: "A.short" do
    advance 8
    bounds 0..7, 0..9

    data """
    0111110
    1100011
    1100011
    1100011
    1111111
    1100011
    1100011
    1100011
    1100011
    """
  end

  bmp_glyph name: "E.short" do
    advance 8
    bounds 0..7, 0..9

    data """
    0111111
    1100000
    1100000
    1100000
    1111110
    1100000
    1100000
    1100000
    0111111
    """
  end

  bmp_glyph name: "I.short" do
    advance 8
    bounds 1..7, 0..9

    data """
    111111
    001100
    001100
    001100
    001100
    001100
    001100
    001100
    111111
    """
  end

  bmp_glyph name: "N.short" do
    advance 8
    bounds 0..7, 0..9

    data """
    1111110
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    """
  end

  bmp_glyph name: "O.short" do
    advance 8
    bounds 0..7, 0..9

    data """
    0111110
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    0111110
    """
  end

  bmp_glyph name: "U.short" do
    advance 8
    bounds 0..7, 0..9

    data """
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    0111110
    """
  end

  bmp_glyph name: "Y.short" do
    advance 8
    bounds 1..7, 0..9

    data """
    110011
    110011
    110011
    110011
    011110
    001100
    001100
    001100
    001100
    """
  end
end
