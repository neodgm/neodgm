defmodule NeoDGM.BitmapFont.PowerlineSymbols do
  use TTFLib.BMPGlyphs

  glyph unicode: 0xE0A0 do
    advance 8
    xmin 0
    xmax 7
    ymin -4
    ymax 12

    data """
    1100000
    1100000
    1100000
    1100000
    1100110
    1101111
    1100110
    1100110
    1100110
    0000110
    1111100
    1100000
    1100000
    1100000
    1100000
    1100000
    """
  end

  glyph unicode: 0xE0A1 do
    advance 8
    xmin 1
    xmax 7
    ymin -2
    ymax 10

    data """
    110000
    110000
    110000
    110000
    111110
    000000
    000000
    011110
    011011
    011011
    011011
    011011
    """
  end

  glyph unicode: 0xE0A2 do
    advance 8
    xmin 1
    xmax 7
    ymin 0
    ymax 8

    data """
    001100
    010010
    010010
    111111
    111111
    111111
    111111
    111111
    """
  end

  glyph unicode: 0xE0B0 do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    10000000
    11000000
    11100000
    11110000
    11111000
    11111100
    11111110
    11111111
    11111111
    11111110
    11111100
    11111000
    11110000
    11100000
    11000000
    10000000
    """
  end

  glyph unicode: 0xE0B1 do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    10000000
    01000000
    00100000
    00010000
    00001000
    00000100
    00000010
    00000001
    00000001
    00000010
    00000100
    00001000
    00010000
    00100000
    01000000
    10000000
    """
  end

  glyph unicode: 0xE0B2 do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00000001
    00000011
    00000111
    00001111
    00011111
    00111111
    01111111
    11111111
    11111111
    01111111
    00111111
    00011111
    00001111
    00000111
    00000011
    00000001
    """
  end

  glyph unicode: 0xE0B3 do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00000001
    00000010
    00000100
    00001000
    00010000
    00100000
    01000000
    10000000
    10000000
    01000000
    00100000
    00010000
    00001000
    00000100
    00000010
    00000001
    """
  end

  export_glyphs()
end
