defmodule NeoDGM.BitmapFont.BoxDrawing do
  use TTFLib.BMPGlyphs

  glyph unicode: ?─ do
    advance 8
    xmin 0
    xmax 8
    ymin 4
    ymax 5

    data """
    11111111
    """
  end

  glyph unicode: ?━ do
    advance 8
    xmin 0
    xmax 8
    ymin 3
    ymax 5

    data """
    11111111
    11111111
    """
  end

  glyph unicode: ?│ do
    advance 8
    xmin 4
    xmax 5
    ymin -4
    ymax 12

    data """
    1
    1
    1
    1
    1
    1
    1
    1
    1
    1
    1
    1
    1
    1
    1
    1
    """
  end

  glyph unicode: ?┃ do
    advance 8
    xmin 3
    xmax 5
    ymin -4
    ymax 12

    data """
    11
    11
    11
    11
    11
    11
    11
    11
    11
    11
    11
    11
    11
    11
    11
    11
    """
  end

  glyph unicode: ?┄ do
    advance 8
    xmin 0
    xmax 7
    ymin 4
    ymax 5

    data """
    1101101
    """
  end

  glyph unicode: ?┅ do
    advance 8
    xmin 0
    xmax 7
    ymin 3
    ymax 5

    data """
    1101101
    1101101
    """
  end

  glyph unicode: ?┆ do
    advance 8
    xmin 4
    xmax 5
    ymin -1
    ymax 12

    data """
    1
    1
    1
    0
    0
    1
    1
    1
    0
    0
    1
    1
    1
    """
  end

  glyph unicode: ?┇ do
    advance 8
    xmin 3
    xmax 5
    ymin -1
    ymax 12

    data """
    11
    11
    11
    00
    00
    11
    11
    11
    00
    00
    11
    11
    11
    """
  end

  glyph unicode: ?┈ do
    advance 8
    xmin 0
    xmax 7
    ymin 4
    ymax 5

    data """
    1010101
    """
  end

  glyph unicode: ?┉ do
    advance 8
    xmin 0
    xmax 7
    ymin 3
    ymax 5

    data """
    1010101
    1010101
    """
  end

  glyph unicode: ?┊ do
    advance 8
    xmin 4
    xmax 5
    ymin -2
    ymax 12

    data """
    1
    1
    0
    0
    1
    1
    0
    0
    1
    1
    0
    0
    1
    1
    """
  end

  glyph unicode: ?┋ do
    advance 8
    xmin 3
    xmax 5
    ymin -2
    ymax 12

    data """
    11
    11
    00
    00
    11
    11
    00
    00
    11
    11
    00
    00
    11
    11
    """
  end

  glyph unicode: ?┌ do
    advance 8
    xmin 4
    xmax 8
    ymin -4
    ymax 5

    data """
    1111
    1000
    1000
    1000
    1000
    1000
    1000
    1000
    1000
    """
  end

  glyph unicode: ?┍ do
    advance 8
    xmin 4
    xmax 8
    ymin -4
    ymax 5

    data """
    1111
    1111
    1000
    1000
    1000
    1000
    1000
    1000
    1000
    """
  end

  glyph unicode: ?┎ do
    advance 8
    xmin 3
    xmax 8
    ymin -4
    ymax 5

    data """
    11111
    11000
    11000
    11000
    11000
    11000
    11000
    11000
    11000
    """
  end

  glyph unicode: ?┏ do
    advance 8
    xmin 3
    xmax 8
    ymin -4
    ymax 5

    data """
    11111
    11111
    11000
    11000
    11000
    11000
    11000
    11000
    11000
    """
  end

  glyph unicode: ?┐ do
    advance 8
    xmin 0
    xmax 5
    ymin -4
    ymax 5

    data """
    11111
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    """
  end

  glyph unicode: ?┑ do
    advance 8
    xmin 0
    xmax 5
    ymin -4
    ymax 5

    data """
    11111
    11111
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    """
  end

  glyph unicode: ?┒ do
    advance 8
    xmin 0
    xmax 5
    ymin -4
    ymax 5

    data """
    11111
    00011
    00011
    00011
    00011
    00011
    00011
    00011
    00011
    """
  end

  glyph unicode: ?┓ do
    advance 8
    xmin 0
    xmax 5
    ymin -4
    ymax 5

    data """
    11111
    11111
    00011
    00011
    00011
    00011
    00011
    00011
    00011
    """
  end

  glyph unicode: ?└ do
    advance 8
    xmin 4
    xmax 8
    ymin 4
    ymax 12

    data """
    1000
    1000
    1000
    1000
    1000
    1000
    1000
    1111
    """
  end

  glyph unicode: ?┕ do
    advance 8
    xmin 4
    xmax 8
    ymin 3
    ymax 12

    data """
    1000
    1000
    1000
    1000
    1000
    1000
    1000
    1111
    1111
    """
  end

  glyph unicode: ?┖ do
    advance 8
    xmin 3
    xmax 8
    ymin 4
    ymax 12

    data """
    11000
    11000
    11000
    11000
    11000
    11000
    11000
    11111
    """
  end

  glyph unicode: ?┗ do
    advance 8
    xmin 3
    xmax 8
    ymin 3
    ymax 12

    data """
    11000
    11000
    11000
    11000
    11000
    11000
    11000
    11111
    11111
    """
  end

  glyph unicode: ?┘ do
    advance 8
    xmin 0
    xmax 5
    ymin 4
    ymax 12

    data """
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    11111
    """
  end

  glyph unicode: ?┙ do
    advance 8
    xmin 0
    xmax 5
    ymin 3
    ymax 12

    data """
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    11111
    11111
    """
  end

  glyph unicode: ?┚ do
    advance 8
    xmin 0
    xmax 5
    ymin 4
    ymax 12

    data """
    00011
    00011
    00011
    00011
    00011
    00011
    00011
    11111
    """
  end

  glyph unicode: ?┛ do
    advance 8
    xmin 0
    xmax 5
    ymin 3
    ymax 12

    data """
    00011
    00011
    00011
    00011
    00011
    00011
    00011
    11111
    11111
    """
  end

  glyph unicode: ?├ do
    advance 8
    xmin 4
    xmax 8
    ymin -4
    ymax 12

    data """
    1000
    1000
    1000
    1000
    1000
    1000
    1000
    1111
    1000
    1000
    1000
    1000
    1000
    1000
    1000
    1000
    """
  end

  glyph unicode: ?┝ do
    advance 8
    xmin 4
    xmax 8
    ymin -4
    ymax 12

    data """
    1000
    1000
    1000
    1000
    1000
    1000
    1000
    1111
    1111
    1000
    1000
    1000
    1000
    1000
    1000
    1000
    """
  end

  glyph unicode: ?┞ do
    advance 8
    xmin 3
    xmax 8
    ymin -4
    ymax 12

    data """
    11000
    11000
    11000
    11000
    11000
    11000
    11000
    11111
    01000
    01000
    01000
    01000
    01000
    01000
    01000
    01000
    """
  end

  glyph unicode: ?┟ do
    advance 8
    xmin 3
    xmax 8
    ymin -4
    ymax 12

    data """
    01000
    01000
    01000
    01000
    01000
    01000
    01000
    11111
    11000
    11000
    11000
    11000
    11000
    11000
    11000
    11000
    """
  end

  glyph unicode: ?┠ do
    advance 8
    xmin 3
    xmax 8
    ymin -4
    ymax 12

    data """
    11000
    11000
    11000
    11000
    11000
    11000
    11000
    11111
    11000
    11000
    11000
    11000
    11000
    11000
    11000
    11000
    """
  end

  glyph unicode: ?┡ do
    advance 8
    xmin 3
    xmax 8
    ymin -4
    ymax 12

    data """
    11000
    11000
    11000
    11000
    11000
    11000
    11000
    11111
    11111
    01000
    01000
    01000
    01000
    01000
    01000
    01000
    """
  end

  glyph unicode: ?┢ do
    advance 8
    xmin 3
    xmax 8
    ymin -4
    ymax 12

    data """
    01000
    01000
    01000
    01000
    01000
    01000
    01000
    11111
    11111
    11000
    11000
    11000
    11000
    11000
    11000
    11000
    """
  end

  glyph unicode: ?┣ do
    advance 8
    xmin 3
    xmax 8
    ymin -4
    ymax 12

    data """
    11000
    11000
    11000
    11000
    11000
    11000
    11000
    11111
    11111
    11000
    11000
    11000
    11000
    11000
    11000
    11000
    """
  end

  glyph unicode: ?┤ do
    advance 8
    xmin 0
    xmax 5
    ymin -4
    ymax 12

    data """
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    11111
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    """
  end

  glyph unicode: ?┥ do
    advance 8
    xmin 0
    xmax 5
    ymin -4
    ymax 12

    data """
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    11111
    11111
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    """
  end

  glyph unicode: ?┦ do
    advance 8
    xmin 0
    xmax 5
    ymin -4
    ymax 12

    data """
    00011
    00011
    00011
    00011
    00011
    00011
    00011
    11111
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    """
  end

  glyph unicode: ?┧ do
    advance 8
    xmin 0
    xmax 5
    ymin -4
    ymax 12

    data """
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    11111
    00011
    00011
    00011
    00011
    00011
    00011
    00011
    00011
    """
  end

  glyph unicode: ?┨ do
    advance 8
    xmin 0
    xmax 5
    ymin -4
    ymax 12

    data """
    00011
    00011
    00011
    00011
    00011
    00011
    00011
    11111
    00011
    00011
    00011
    00011
    00011
    00011
    00011
    00011
    """
  end

  glyph unicode: ?┩ do
    advance 8
    xmin 0
    xmax 5
    ymin -4
    ymax 12

    data """
    00011
    00011
    00011
    00011
    00011
    00011
    00011
    11111
    11111
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    """
  end

  glyph unicode: ?┪ do
    advance 8
    xmin 0
    xmax 5
    ymin -4
    ymax 12

    data """
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    11111
    11111
    00011
    00011
    00011
    00011
    00011
    00011
    00011
    """
  end

  glyph unicode: ?┫ do
    advance 8
    xmin 0
    xmax 5
    ymin -4
    ymax 12

    data """
    00011
    00011
    00011
    00011
    00011
    00011
    00011
    11111
    11111
    00011
    00011
    00011
    00011
    00011
    00011
    00011
    """
  end

  glyph unicode: ?┬ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 5

    data """
    11111111
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    """
  end

  glyph unicode: ?┭ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 5

    data """
    11111111
    11111000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    """
  end

  glyph unicode: ?┮ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 5

    data """
    11111111
    00001111
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    """
  end

  glyph unicode: ?┯ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 5

    data """
    11111111
    11111111
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    """
  end

  glyph unicode: ?┰ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 5

    data """
    11111111
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    """
  end

  glyph unicode: ?┱ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 5

    data """
    11111111
    11111000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    """
  end

  glyph unicode: ?┲ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 5

    data """
    11111111
    00011111
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    """
  end

  glyph unicode: ?┳ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 5

    data """
    11111111
    11111111
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    """
  end

  glyph unicode: ?┴ do
    advance 8
    xmin 0
    xmax 8
    ymin 4
    ymax 12

    data """
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    11111111
    """
  end

  glyph unicode: ?┵ do
    advance 8
    xmin 0
    xmax 8
    ymin 3
    ymax 12

    data """
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    11111111
    11111000
    """
  end

  glyph unicode: ?┶ do
    advance 8
    xmin 0
    xmax 8
    ymin 3
    ymax 12

    data """
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    11111111
    00001111
    """
  end

  glyph unicode: ?┷ do
    advance 8
    xmin 0
    xmax 8
    ymin 3
    ymax 12

    data """
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    11111111
    11111111
    """
  end

  glyph unicode: ?┸ do
    advance 8
    xmin 0
    xmax 8
    ymin 4
    ymax 12

    data """
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    11111111
    """
  end

  glyph unicode: ?┹ do
    advance 8
    xmin 0
    xmax 8
    ymin 3
    ymax 12

    data """
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    11111111
    11111000
    """
  end

  glyph unicode: ?┺ do
    advance 8
    xmin 0
    xmax 8
    ymin 3
    ymax 12

    data """
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    11111111
    00011111
    """
  end

  glyph unicode: ?┻ do
    advance 8
    xmin 0
    xmax 8
    ymin 3
    ymax 12

    data """
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    11111111
    11111111
    """
  end

  glyph unicode: ?┼ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    11111111
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    """
  end

  glyph unicode: ?┽ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    11111111
    11111000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    """
  end

  glyph unicode: ?┾ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    11111111
    00001111
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    """
  end

  glyph unicode: ?┿ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    11111111
    11111111
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    """
  end

  glyph unicode: ?╀ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    11111111
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    """
  end

  glyph unicode: ?╁ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    11111111
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    """
  end

  glyph unicode: ?╂ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    11111111
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    """
  end

  glyph unicode: ?╃ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    11111111
    11111000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    """
  end

  glyph unicode: ?╄ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    11111111
    00011111
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    """
  end

  glyph unicode: ?╅ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    11111111
    11111000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    """
  end

  glyph unicode: ?╆ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    11111111
    00011111
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    """
  end

  glyph unicode: ?╇ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    11111111
    11111111
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    """
  end

  glyph unicode: ?╈ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    11111111
    11111111
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    """
  end

  glyph unicode: ?╉ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    11111111
    11111000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    """
  end

  glyph unicode: ?╊ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    11111111
    00011111
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    """
  end

  glyph unicode: ?╋ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    11111111
    11111111
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    00011000
    """
  end

  glyph unicode: ?╌ do
    advance 8
    xmin 1
    xmax 7
    ymin 4
    ymax 5

    data """
    110011
    """
  end

  glyph unicode: ?╍ do
    advance 8
    xmin 1
    xmax 7
    ymin 3
    ymax 5

    data """
    110011
    110011
    """
  end

  glyph unicode: ?╎ do
    advance 8
    xmin 4
    xmax 5
    ymin -2
    ymax 10

    data """
    1
    1
    1
    1
    0
    0
    0
    0
    1
    1
    1
    1
    """
  end

  glyph unicode: ?╏ do
    advance 8
    xmin 3
    xmax 5
    ymin -2
    ymax 10

    data """
    11
    11
    11
    11
    00
    00
    00
    00
    11
    11
    11
    11
    """
  end

  glyph unicode: ?═ do
    advance 8
    xmin 0
    xmax 8
    ymin 3
    ymax 6

    data """
    11111111
    00000000
    11111111
    """
  end

  glyph unicode: ?║ do
    advance 8
    xmin 3
    xmax 6
    ymin -4
    ymax 12

    data """
    101
    101
    101
    101
    101
    101
    101
    101
    101
    101
    101
    101
    101
    101
    101
    101
    """
  end

  glyph unicode: ?╒ do
    advance 8
    xmin 4
    xmax 8
    ymin -4
    ymax 6

    data """
    1111
    1000
    1111
    1000
    1000
    1000
    1000
    1000
    1000
    1000
    """
  end

  glyph unicode: ?╓ do
    advance 8
    xmin 3
    xmax 8
    ymin -4
    ymax 5

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
    """
  end

  glyph unicode: ?╔ do
    advance 8
    xmin 3
    xmax 8
    ymin -4
    ymax 6

    data """
    11111
    10000
    10111
    10100
    10100
    10100
    10100
    10100
    10100
    10100
    """
  end

  glyph unicode: ?╕ do
    advance 8
    xmin 0
    xmax 5
    ymin -4
    ymax 6

    data """
    11111
    00001
    11111
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    """
  end

  glyph unicode: ?╖ do
    advance 8
    xmin 0
    xmax 6
    ymin -4
    ymax 5

    data """
    111111
    000101
    000101
    000101
    000101
    000101
    000101
    000101
    000101
    """
  end

  glyph unicode: ?╗ do
    advance 8
    xmin 0
    xmax 6
    ymin -4
    ymax 6

    data """
    111111
    000001
    111101
    000101
    000101
    000101
    000101
    000101
    000101
    000101
    """
  end

  glyph unicode: ?╘ do
    advance 8
    xmin 4
    xmax 8
    ymin 3
    ymax 12

    data """
    1000
    1000
    1000
    1000
    1000
    1000
    1111
    1000
    1111
    """
  end

  glyph unicode: ?╙ do
    advance 8
    xmin 3
    xmax 8
    ymin 4
    ymax 12

    data """
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

  glyph unicode: ?╚ do
    advance 8
    xmin 3
    xmax 8
    ymin 3
    ymax 12

    data """
    10100
    10100
    10100
    10100
    10100
    10100
    10111
    10000
    11111
    """
  end

  glyph unicode: ?╛ do
    advance 8
    xmin 0
    xmax 5
    ymin 3
    ymax 12

    data """
    00001
    00001
    00001
    00001
    00001
    00001
    11111
    00001
    11111
    """
  end

  glyph unicode: ?╜ do
    advance 8
    xmin 0
    xmax 6
    ymin 4
    ymax 12

    data """
    000101
    000101
    000101
    000101
    000101
    000101
    000101
    111111
    """
  end

  glyph unicode: ?╝ do
    advance 8
    xmin 0
    xmax 6
    ymin 3
    ymax 12

    data """
    000101
    000101
    000101
    000101
    000101
    000101
    111101
    000001
    111111
    """
  end

  glyph unicode: ?╞ do
    advance 8
    xmin 4
    xmax 8
    ymin -4
    ymax 12

    data """
    1000
    1000
    1000
    1000
    1000
    1000
    1111
    1000
    1111
    1000
    1000
    1000
    1000
    1000
    1000
    1000
    """
  end

  glyph unicode: ?╟ do
    advance 8
    xmin 3
    xmax 8
    ymin -4
    ymax 12

    data """
    10100
    10100
    10100
    10100
    10100
    10100
    10100
    10111
    10100
    10100
    10100
    10100
    10100
    10100
    10100
    10100
    """
  end

  glyph unicode: ?╠ do
    advance 8
    xmin 3
    xmax 8
    ymin -4
    ymax 12

    data """
    10100
    10100
    10100
    10100
    10100
    10100
    10111
    10000
    10111
    10100
    10100
    10100
    10100
    10100
    10100
    10100
    """
  end

  glyph unicode: ?╡ do
    advance 8
    xmin 0
    xmax 5
    ymin -4
    ymax 12

    data """
    00001
    00001
    00001
    00001
    00001
    00001
    11111
    00001
    11111
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    """
  end

  glyph unicode: ?╢ do
    advance 8
    xmin 0
    xmax 6
    ymin -4
    ymax 12

    data """
    000101
    000101
    000101
    000101
    000101
    000101
    000101
    111101
    000101
    000101
    000101
    000101
    000101
    000101
    000101
    000101
    """
  end

  glyph unicode: ?╣ do
    advance 8
    xmin 0
    xmax 6
    ymin -4
    ymax 12

    data """
    000101
    000101
    000101
    000101
    000101
    000101
    111101
    000001
    111101
    000101
    000101
    000101
    000101
    000101
    000101
    000101
    """
  end

  glyph unicode: ?╤ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 6

    data """
    11111111
    00000000
    11111111
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    """
  end

  glyph unicode: ?╥ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 5

    data """
    11111111
    00010100
    00010100
    00010100
    00010100
    00010100
    00010100
    00010100
    00010100
    """
  end

  glyph unicode: ?╦ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 6

    data """
    11111111
    00000000
    11110111
    00010100
    00010100
    00010100
    00010100
    00010100
    00010100
    00010100
    """
  end

  glyph unicode: ?╧ do
    advance 8
    xmin 0
    xmax 8
    ymin 3
    ymax 12

    data """
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    11111111
    00000000
    11111111
    """
  end

  glyph unicode: ?╨ do
    advance 8
    xmin 0
    xmax 8
    ymin 4
    ymax 12

    data """
    00010100
    00010100
    00010100
    00010100
    00010100
    00010100
    00010100
    11111111
    """
  end

  glyph unicode: ?╩ do
    advance 8
    xmin 0
    xmax 8
    ymin 3
    ymax 12

    data """
    00010100
    00010100
    00010100
    00010100
    00010100
    00010100
    11110111
    00000000
    11111111
    """
  end

  glyph unicode: ?╪ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    11111111
    00001000
    11111111
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    00001000
    """
  end

  glyph unicode: ?╫ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00010100
    00010100
    00010100
    00010100
    00010100
    00010100
    00010100
    11111111
    00010100
    00010100
    00010100
    00010100
    00010100
    00010100
    00010100
    00010100
    """
  end

  glyph unicode: ?╬ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00010100
    00010100
    00010100
    00010100
    00010100
    00010100
    11110111
    00000000
    11110111
    00010100
    00010100
    00010100
    00010100
    00010100
    00010100
    00010100
    """
  end

  glyph unicode: ?╭ do
    advance 8
    xmin 4
    xmax 8
    ymin -4
    ymax 5

    data """
    0011
    0100
    1000
    1000
    1000
    1000
    1000
    1000
    1000
    """
  end

  glyph unicode: ?╮ do
    advance 8
    xmin 0
    xmax 5
    ymin -4
    ymax 5

    data """
    11100
    00010
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    """
  end

  glyph unicode: ?╯ do
    advance 8
    xmin 0
    xmax 5
    ymin 4
    ymax 12

    data """
    00001
    00001
    00001
    00001
    00001
    00001
    00010
    11100
    """
  end

  glyph unicode: ?╰ do
    advance 8
    xmin 4
    xmax 8
    ymin 4
    ymax 12

    data """
    1000
    1000
    1000
    1000
    1000
    1000
    0100
    0011
    """
  end

  glyph unicode: ?╱ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    00000001
    00000001
    00000010
    00000010
    00000100
    00000100
    00001000
    00001000
    00010000
    00010000
    00100000
    00100000
    01000000
    01000000
    10000000
    10000000
    """
  end

  glyph unicode: ?╲ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    10000000
    10000000
    01000000
    01000000
    00100000
    00100000
    00010000
    00010000
    00001000
    00001000
    00000100
    00000100
    00000010
    00000010
    00000001
    00000001
    """
  end

  glyph unicode: ?╳ do
    advance 8
    xmin 0
    xmax 8
    ymin -4
    ymax 12

    data """
    10000001
    10000001
    01000010
    01000010
    00100100
    00100100
    00011000
    00011000
    00011000
    00011000
    00100100
    00100100
    01000010
    01000010
    10000001
    10000001
    """
  end

  glyph unicode: ?╴ do
    advance 8
    xmin 0
    xmax 5
    ymin 4
    ymax 5

    data """
    11111
    """
  end

  glyph unicode: ?╵ do
    advance 8
    xmin 4
    xmax 5
    ymin 4
    ymax 12

    data """
    1
    1
    1
    1
    1
    1
    1
    1
    """
  end

  glyph unicode: ?╶ do
    advance 8
    xmin 4
    xmax 8
    ymin 4
    ymax 5

    data """
    1111
    """
  end

  glyph unicode: ?╷ do
    advance 8
    xmin 4
    xmax 5
    ymin -4
    ymax 5

    data """
    1
    1
    1
    1
    1
    1
    1
    1
    1
    """
  end

  glyph unicode: ?╸ do
    advance 8
    xmin 0
    xmax 5
    ymin 3
    ymax 5

    data """
    11111
    11111
    """
  end

  glyph unicode: ?╹ do
    advance 8
    xmin 3
    xmax 5
    ymin 3
    ymax 12

    data """
    11
    11
    11
    11
    11
    11
    11
    11
    11
    """
  end

  glyph unicode: ?╺ do
    advance 8
    xmin 3
    xmax 8
    ymin 3
    ymax 5

    data """
    11111
    11111
    """
  end

  glyph unicode: ?╻ do
    advance 8
    xmin 3
    xmax 5
    ymin -4
    ymax 5

    data """
    11
    11
    11
    11
    11
    11
    11
    11
    11
    """
  end

  glyph unicode: ?╼ do
    advance 8
    xmin 0
    xmax 8
    ymin 3
    ymax 5

    data """
    11111111
    00001111
    """
  end

  glyph unicode: ?╽ do
    advance 8
    xmin 3
    xmax 5
    ymin -4
    ymax 12

    data """
    01
    01
    01
    01
    01
    01
    01
    01
    11
    11
    11
    11
    11
    11
    11
    11
    """
  end

  glyph unicode: ?╾ do
    advance 8
    xmin 0
    xmax 8
    ymin 3
    ymax 5

    data """
    11111111
    11111000
    """
  end

  glyph unicode: ?╿ do
    advance 8
    xmin 3
    xmax 5
    ymin -4
    ymax 12

    data """
    11
    11
    11
    11
    11
    11
    11
    11
    11
    01
    01
    01
    01
    01
    01
    01
    """
  end

  export_glyphs()
end
