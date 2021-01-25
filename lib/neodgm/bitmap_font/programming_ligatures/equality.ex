use PixelFont.GlyphSource

glyph_source NeoDGM.BitmapFont.ProgrammingLigatures.Equality do
  bmp_glyph "slash.noteq" do
    advance 8
    bounds 0..9, 0..10

    data """
    000000001
    000000011
    000000110
    000001100
    000011000
    000110000
    001100000
    011000000
    110000000
    100000000
    """
  end

  bmp_glyph "colon.eq" do
    advance 8
    bounds 3..5, 2..8

    data """
    11
    11
    00
    00
    11
    11
    """
  end

  bmp_glyph "equal.1px" do
    advance 8
    bounds 0..7, 3..7

    data """
    1111111
    0000000
    0000000
    1111111
    """
  end

  bmp_glyph "equal.2px" do
    advance 8
    bounds -1..7, 3..7

    data """
    11111111
    00000000
    00000000
    11111111
    """
  end

  bmp_glyph "equal.3px" do
    advance 8
    bounds -2..7, 3..7

    data """
    111111111
    000000000
    000000000
    111111111
    """
  end

  bmp_glyph "equal.slashed.left" do
    advance 8
    bounds 1..11, 3..7

    data """
    1111111111
    0000000000
    0000000000
    1111111000
    """
  end

  bmp_glyph "equal.slashed.right" do
    advance 8
    bounds -2..7, 3..7

    data """
    000111111
    000000000
    000000000
    111111111
    """
  end
end
