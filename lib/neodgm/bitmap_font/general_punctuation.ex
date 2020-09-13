use TTFLib.GlyphSource

glyph_source NeoDGM.BitmapFont.GeneralPunctuation do
  bmp_glyph unicode: 0x2000 do
    advance 8
    bounds 0..0, 0..0
    data ""
  end

  bmp_glyph unicode: 0x2001 do
    advance 16
    bounds 0..0, 0..0
    data ""
  end

  bmp_glyph unicode: 0x2002 do
    advance 8
    bounds 0..0, 0..0
    data ""
  end

  bmp_glyph unicode: 0x2003 do
    advance 16
    bounds 0..0, 0..0
    data ""
  end

  bmp_glyph unicode: 0x2004 do
    advance 8
    bounds 0..0, 0..0
    data ""
  end

  bmp_glyph unicode: 0x2005 do
    advance 8
    bounds 0..0, 0..0
    data ""
  end

  bmp_glyph unicode: 0x2006 do
    advance 8
    bounds 0..0, 0..0
    data ""
  end

  bmp_glyph unicode: 0x2007 do
    advance 8
    bounds 0..0, 0..0
    data ""
  end

  bmp_glyph unicode: 0x2008 do
    advance 8
    bounds 0..0, 0..0
    data ""
  end

  bmp_glyph unicode: 0x2009 do
    advance 8
    bounds 0..0, 0..0
    data ""
  end

  bmp_glyph unicode: 0x200A do
    advance 8
    bounds 0..0, 0..0
    data ""
  end

  Enum.map(0x200B..0x200F, fn code ->
    bmp_glyph unicode: code do
      advance 0
      bounds 0..0, 0..0
      data ""
    end
  end)

  bmp_glyph unicode: 0x2010 do
    advance 8
    bounds 0..7, 4..5

    data """
    1111111
    """
  end

  bmp_glyph unicode: 0x2011 do
    advance 8
    bounds 0..7, 4..5

    data """
    1111111
    """
  end

  bmp_glyph unicode: 0x2012 do
    advance 8
    bounds 0..7, 4..5

    data """
    1111111
    """
  end

  bmp_glyph unicode: 0x2013 do
    advance 8
    bounds 0..7, 4..5

    data """
    1111111
    """
  end

  bmp_glyph unicode: 0x2014 do
    advance 16
    bounds 1..15, 4..5

    data """
    11111111111111
    """
  end

  bmp_glyph unicode: 0x2015 do
    advance 16
    bounds 1..15, 4..5

    data """
    11111111111111
    """
  end

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
end
