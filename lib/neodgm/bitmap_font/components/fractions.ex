use TTFLib.GlyphSource

glyph_source NeoDGM.BitmapFont.Components.Fractions do
  # bmp_glyph name: "fraction_bar" do
  # end

  bmp_glyph name: "zero.fraction" do
    advance 5
    xmin 0
    xmax 5
    ymin 0
    ymax 5

    data """
    01110
    11011
    11011
    11011
    01110
    """
  end

  bmp_glyph name: "one.fraction" do
    advance 3
    xmin 0
    xmax 3
    ymin 0
    ymax 5

    data """
    011
    111
    011
    011
    011
    """
  end

  bmp_glyph name: "two.fraction" do
    advance 5
    xmin 0
    xmax 5
    ymin 0
    ymax 5

    data """
    11110
    00011
    01110
    11000
    11111
    """
  end

  bmp_glyph name: "three.fraction" do
    advance 5
    xmin 0
    xmax 5
    ymin 0
    ymax 5

    data """
    11110
    00011
    01110
    00011
    11110
    """
  end

  bmp_glyph name: "four.fraction" do
    advance 6
    xmin 0
    xmax 6
    ymin 0
    ymax 5

    data """
    011110
    110110
    110110
    111111
    000110
    """
  end

  bmp_glyph name: "five.fraction" do
    advance 5
    xmin 0
    xmax 5
    ymin 0
    ymax 5

    data """
    11111
    11000
    11110
    00011
    11110
    """
  end

  bmp_glyph name: "six.fraction" do
    advance 5
    xmin 0
    xmax 5
    ymin 0
    ymax 5

    data """
    01110
    11000
    11110
    11011
    01110
    """
  end

  bmp_glyph name: "seven.fraction" do
    advance 5
    xmin 0
    xmax 5
    ymin 0
    ymax 5

    data """
    11111
    00011
    00110
    01100
    01100
    """
  end

  bmp_glyph name: "eight.fraction" do
    advance 5
    xmin 0
    xmax 5
    ymin 0
    ymax 5

    data """
    01110
    11011
    01110
    11011
    01110
    """
  end

  bmp_glyph name: "nine.fraction" do
    advance 5
    xmin 0
    xmax 5
    ymin 0
    ymax 5

    data """
    01110
    11011
    01111
    00011
    01110
    """
  end

  bmp_glyph name: "ten.fraction" do
    advance 8
    xmin 0
    xmax 8
    ymin 0
    ymax 5

    data """
    01100110
    11101011
    01101011
    01101011
    01100110
    """
  end
end
