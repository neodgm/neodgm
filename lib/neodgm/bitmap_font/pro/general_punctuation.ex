use PixelFont.GlyphSource
import PixelFont.Util, only: :macros

glyph_source NeoDGM.BitmapFont.Pro.GeneralPunctuation,
  based_on: NeoDGM.BitmapFont.GeneralPunctuation do
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
  |> Enum.zip(~i(8 16 8 16 5 4 3 8 8 3 1 0 0 0 0 0))
  |> Enum.map(fn {code, aw} ->
    bmp_glyph unicode: code do
      advance aw
      bounds 0..0, 0..0
      data ""
    end
  end)

  bmp_glyph unicode: 0x2018 do
    advance 5
    bounds 1..3, 7..11

    data """
    01
    10
    11
    11
    """
  end

  bmp_glyph unicode: 0x2019 do
    advance 5
    bounds 1..3, 7..11

    data """
    11
    11
    01
    10
    """
  end

  bmp_glyph unicode: 0x201A do
    advance 5
    bounds 1..3, -1..3

    data """
    11
    11
    01
    10
    """
  end

  bmp_glyph unicode: 0x201B do
    advance 5
    bounds 1..3, 7..11

    data """
    11
    11
    10
    01
    """
  end

  bmp_glyph unicode: 0x201C do
    advance 8
    bounds 1..6, 7..11

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
    bounds 1..6, 7..11

    data """
    11011
    11011
    10010
    01001
    """
  end

  composite_glyph unicode: 0x2024 do
    component {:unicode, ?.}, 0, 0
  end

  composite_glyph unicode: 0x2025 do
    component {:unicode, ?.}, 0, 0
    component {:unicode, ?.}, 5, 0
  end

  composite_glyph unicode: 0x2026 do
    component {:unicode, ?.}, 0, 0
    component {:unicode, ?.}, 5, 0
    component {:unicode, ?.}, 10, 0
  end

  bmp_glyph unicode: 0x2045 do
    advance 6
    bounds 1..5, -2..11

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
    advance 5
    bounds 0..4, -2..11

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

  bmp_glyph unicode: 0x204F do
    advance 5
    bounds 1..4, 0..8

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
