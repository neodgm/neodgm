use PixelFont.GlyphSource

glyph_source NeoDGM.BitmapFont.CJKSymbols do
  # U+3000 IDEOGRAPHIC SPACE
  bmp_glyph 0x3000 do
    advance 16
    bounds 0..0, 0..0
    data ""
  end

  # U+3001 IDEOGRAPHIC COMMA
  bmp_glyph 0x3001 do
    advance 16
    bounds 2..6, -1..2

    data """
    1100
    0111
    0011
    """
  end

  # U+3001 U+FE00 IDEOGRAPHIC COMMA, corner-justified form
  composite_glyph "uni3001.VS01" do
    component 0x3001, 0, 0
  end

  # U+3001 U+FE01 IDEOGRAPHIC COMMA, centered form
  composite_glyph "uni3001.VS02" do
    component 0x3000, 0, 0, flags: [:use_my_metrics]
    component 0x3001, 4, 3
  end

  # U+3002 IDEOGRAPHIC FULL STOP
  bmp_glyph 0x3002 do
    advance 16
    bounds 2..6, -1..3

    data """
    0110
    1001
    1001
    0110
    """
  end

  # U+3002 U+FE00 IDEOGRAPHIC FULL STOP, corner-justified form
  composite_glyph "uni3002.VS01" do
    component 0x3002, 0, 0
  end

  # U+3002 U+FE01 IDEOGRAPHIC FULL STOP, centered form
  composite_glyph "uni3002.VS02" do
    component 0x3000, 0, 0, flags: [:use_my_metrics]
    component 0x3002, 4, 3
  end

  bmp_glyph 0x3008 do
    advance 16
    bounds 8..12, -2..11

    data """
    0001
    0001
    0010
    0010
    0100
    0100
    1000
    0100
    0100
    0010
    0010
    0001
    0001
    """
  end

  bmp_glyph 0x3009 do
    advance 16
    bounds 4..8, -2..11

    data """
    1000
    1000
    0100
    0100
    0010
    0010
    0001
    0010
    0010
    0100
    0100
    1000
    1000
    """
  end

  bmp_glyph 0x300A do
    advance 16
    bounds 6..13, -2..11

    data """
    0001001
    0001001
    0010010
    0010010
    0100100
    0100100
    1001000
    0100100
    0100100
    0010010
    0010010
    0001001
    0001001
    """
  end

  bmp_glyph 0x300B do
    advance 16
    bounds 3..10, -2..11

    data """
    1001000
    1001000
    0100100
    0100100
    0010010
    0010010
    0001001
    0010010
    0010010
    0100100
    0100100
    1001000
    1001000
    """
  end

  bmp_glyph 0x300C do
    advance 16
    bounds 8..13, 4..11

    data """
    11111
    10000
    10000
    10000
    10000
    10000
    10000
    """
  end

  bmp_glyph 0x300D do
    advance 16
    bounds 3..8, -2..5

    data """
    00001
    00001
    00001
    00001
    00001
    00001
    11111
    """
  end

  bmp_glyph 0x300E do
    advance 16
    bounds 8..13, 4..11

    data """
    11111
    10001
    10111
    10100
    10100
    10100
    11100
    """
  end

  bmp_glyph 0x300F do
    advance 16
    bounds 3..8, -2..5

    data """
    00111
    00101
    00101
    00101
    11101
    10001
    11111
    """
  end

  bmp_glyph 0x3010 do
    advance 16
    bounds 8..13, -2..11

    data """
    11111
    11110
    11100
    11100
    11000
    11000
    11000
    11000
    11000
    11100
    11100
    11110
    11111
    """
  end

  bmp_glyph 0x3011 do
    advance 16
    bounds 3..8, -2..11

    data """
    11111
    01111
    00111
    00111
    00011
    00011
    00011
    00011
    00011
    00111
    00111
    01111
    11111
    """
  end

  bmp_glyph 0x3014 do
    advance 16
    bounds 8..13, -2..11

    data """
    00011
    01100
    10000
    10000
    10000
    10000
    10000
    10000
    10000
    10000
    10000
    01100
    00011
    """
  end

  bmp_glyph 0x3015 do
    advance 16
    bounds 3..8, -2..11

    data """
    11000
    00110
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    00110
    11000
    """
  end

  bmp_glyph 0x3016 do
    advance 16
    bounds 7..13, -2..11

    data """
    111111
    100010
    100100
    100100
    101000
    101000
    101000
    101000
    101000
    100100
    100100
    100010
    111111
    """
  end

  bmp_glyph 0x3017 do
    advance 16
    bounds 3..9, -2..11

    data """
    111111
    010001
    001001
    001001
    000101
    000101
    000101
    000101
    000101
    001001
    001001
    010001
    111111
    """
  end

  # FIXME: glyph shape differs from the standard
  bmp_glyph 0x3018 do
    advance 16
    bounds 7..13, -2..11

    data """
    000111
    011001
    100111
    101000
    101000
    101000
    101000
    101000
    101000
    101000
    100111
    011001
    000111
    """
  end

  # FIXME: glyph shape differs from the standard
  bmp_glyph 0x3019 do
    advance 16
    bounds 3..9, -2..11

    data """
    111000
    100110
    111001
    000101
    000101
    000101
    000101
    000101
    000101
    000101
    111001
    100110
    111000
    """
  end

  bmp_glyph 0x301A do
    advance 16
    bounds 8..13, -2..11

    data """
    11111
    10100
    10100
    10100
    10100
    10100
    10100
    10100
    10100
    10100
    10100
    10100
    11111
    """
  end

  bmp_glyph 0x301B do
    advance 16
    bounds 3..8, -2..11

    data """
    11111
    00101
    00101
    00101
    00101
    00101
    00101
    00101
    00101
    00101
    00101
    00101
    11111
    """
  end
end
