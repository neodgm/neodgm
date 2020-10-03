use PixelFont.GlyphSource
import PixelFont.Util, only: :macros

glyph_source NeoDGM.BitmapFont.GeneralPunctuation do
  # U+2000 EN QUAD
  # U+2001 EM QUAD
  # U+2002 EN SPACE
  # U+2003 EM SPACE
  # U+2004 THREE-PER-EM SPACE
  # U+2005 FOUR-PER-EM SPACE
  # U+2006 SIX-PER-EM SPACE
  # U+2007 FIGURE SPACE
  # U+2008 PUNCTUATION SPACE
  # U+2009 THIN SPACE
  # U+200A HAIR SPACE
  # U+200B ZERO WIDTH SPACE
  # U+200C ZERO WIDTH NON-JOINER
  # U+200D ZERO WIDTH JOINER
  # U+200E LEFT-TO-RIGHT MARK
  # U+200F RIGHT-TO-LEFT MARK
  0x2000..0x200F
  |> Enum.zip(~i(8 16 8 16 8 8 8 8 8 8 8 0 0 0 0 0))
  |> Enum.map(fn {code, aw} ->
    bmp_glyph unicode: code do
      advance aw
      bounds 0..0, 0..0
      data ""
    end
  end)

  # U+2010 HYPHEN
  # U+2011 NON-BREAKING HYPHEN
  # U+2012 FIGURE DASH
  # U+2013 EN DASH
  # U+2014 EM DASH
  # U+2015 HORIZONTAL BAR
  0x2010..0x2015
  |> Enum.zip(~i(8 8 8 8 16 16))
  |> Enum.map(fn {code, aw} ->
    bmp_glyph unicode: code do
      advance aw
      bounds 0..(aw - 1), 4..5
      data String.duplicate("1", aw - 1)
    end
  end)

  bmp_glyph unicode: 0x2016 do
    advance 8
    bounds 1..7, -2..11

    data """
    110011
    110011
    110011
    110011
    110011
    110011
    110011
    110011
    110011
    110011
    110011
    110011
    110011
    """
  end

  bmp_glyph unicode: 0x2017 do
    advance 8
    bounds 0..7, -3..0

    data """
    1111111
    0000000
    1111111
    """
  end

  bmp_glyph unicode: 0x2018 do
    advance 8
    bounds 4..6, 7..11

    data """
    01
    10
    11
    11
    """
  end

  bmp_glyph unicode: 0x2019 do
    advance 8
    bounds 2..4, 7..11

    data """
    11
    11
    01
    10
    """
  end

  bmp_glyph unicode: 0x201A do
    advance 8
    bounds 2..4, -1..3

    data """
    11
    11
    01
    10
    """
  end

  bmp_glyph unicode: 0x201B do
    advance 8
    bounds 4..6, 7..11

    data """
    11
    11
    10
    01
    """
  end

  bmp_glyph unicode: 0x201C do
    advance 8
    bounds 2..7, 7..11

    data """
    01001
    10010
    11011
    11011
    """
  end

  bmp_glyph unicode: 0x201D do
    advance 8
    bounds 1..6, 7..11

    data """
    11011
    11011
    01001
    10010
    """
  end

  bmp_glyph unicode: 0x201E do
    advance 8
    bounds 1..6, -1..3

    data """
    11011
    11011
    01001
    10010
    """
  end

  bmp_glyph unicode: 0x201F do
    advance 8
    bounds 2..7, 7..11

    data """
    11011
    11011
    10010
    01001
    """
  end

  bmp_glyph unicode: 0x2020 do
    advance 8
    bounds 0..7, -1..10

    data """
    0001000
    0001000
    0001000
    1111111
    0001000
    0001000
    0001000
    0001000
    0001000
    0001000
    0001000
    """
  end

  bmp_glyph unicode: 0x2021 do
    advance 8
    bounds 0..7, -2..10

    data """
    0001000
    0001000
    0001000
    1111111
    0001000
    0001000
    0001000
    0001000
    1111111
    0001000
    0001000
    0001000
    """
  end

  bmp_glyph unicode: 0x2022 do
    advance 8
    bounds 2..6, 3..7

    data """
    0110
    1111
    1111
    0110
    """
  end

  bmp_glyph unicode: 0x2023 do
    advance 8
    bounds 2..5, 2..7

    data """
    100
    110
    111
    110
    100
    """
  end

  bmp_glyph unicode: 0x2024 do
    advance 8
    bounds 3..5, 0..2

    data """
    11
    11
    """
  end

  bmp_glyph unicode: 0x2025 do
    advance 8
    bounds 1..7, 0..2

    data """
    110011
    110011
    """
  end

  bmp_glyph unicode: 0x2026 do
    advance 8
    bounds 1..6, 0..2

    data """
    10101
    10101
    """
  end

  composite_glyph unicode: 0x2027 do
    component {:unicode, 0x00B7}, 0, 0
  end

  bmp_glyph unicode: 0x2045 do
    advance 8
    bounds 2..6, -2..11

    data """
    1111
    1100
    1100
    1100
    1100
    1100
    1111
    1100
    1100
    1100
    1100
    1100
    1111
    """
  end

  bmp_glyph unicode: 0x2046 do
    advance 8
    bounds 2..6, -2..11

    data """
    1111
    0011
    0011
    0011
    0011
    0011
    1111
    0011
    0011
    0011
    0011
    0011
    1111
    """
  end

  bmp_glyph unicode: 0x204B do
    advance 8
    bounds 0..7, -3..7

    data """
    1111110
    0101111
    0101111
    0101111
    0101110
    0101000
    0101000
    0101000
    0101000
    0101000
    """
  end

  bmp_glyph unicode: 0x204C do
    advance 8
    bounds 0..7, 2..7

    data """
    0111111
    1111010
    1111010
    1111010
    0111111
    """
  end

  bmp_glyph unicode: 0x204D do
    advance 8
    bounds 0..7, 2..7

    data """
    1111110
    0101111
    0101111
    0101111
    1111110
    """
  end

  composite_glyph unicode: 0x204E do
    component {:unicode, ?*}, 0, -3
  end

  bmp_glyph unicode: 0x204F do
    advance 8
    bounds 3..6, 0..8

    data """
    110
    110
    000
    000
    000
    110
    110
    011
    """
  end
end
