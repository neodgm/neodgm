use PixelFont.GlyphSource

glyph_source NeoDGM.BitmapFont.Components.Fractions do
  # bmp_glyph "fraction_bar" do
  # end

  bmp_glyph "zero.fraction" do
    advance 5
    bounds 0..5, 0..5

    data """
    01110
    11011
    11011
    11011
    01110
    """
  end

  bmp_glyph "one.fraction" do
    advance 3
    bounds 0..3, 0..5

    data """
    011
    111
    011
    011
    011
    """
  end

  bmp_glyph "two.fraction" do
    advance 5
    bounds 0..5, 0..5

    data """
    11110
    00011
    01110
    11000
    11111
    """
  end

  bmp_glyph "three.fraction" do
    advance 5
    bounds 0..5, 0..5

    data """
    11110
    00011
    01110
    00011
    11110
    """
  end

  bmp_glyph "four.fraction" do
    advance 6
    bounds 0..6, 0..5

    data """
    011110
    110110
    110110
    111111
    000110
    """
  end

  bmp_glyph "five.fraction" do
    advance 5
    bounds 0..5, 0..5

    data """
    11111
    11000
    11110
    00011
    11110
    """
  end

  bmp_glyph "six.fraction" do
    advance 5
    bounds 0..5, 0..5

    data """
    01110
    11000
    11110
    11011
    01110
    """
  end

  bmp_glyph "seven.fraction" do
    advance 5
    bounds 0..5, 0..5

    data """
    11111
    00011
    00110
    01100
    01100
    """
  end

  bmp_glyph "eight.fraction" do
    advance 5
    bounds 0..5, 0..5

    data """
    01110
    11011
    01110
    11011
    01110
    """
  end

  bmp_glyph "nine.fraction" do
    advance 5
    bounds 0..5, 0..5

    data """
    01110
    11011
    01111
    00011
    01110
    """
  end

  bmp_glyph "ten.fraction" do
    advance 8
    bounds 0..8, 0..5

    data """
    01100110
    11101011
    01101011
    01101011
    01100110
    """
  end
end
