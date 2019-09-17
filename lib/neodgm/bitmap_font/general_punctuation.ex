defmodule NeoDGM.BitmapFont.GeneralPunctuation do
  use TTFLib.BMPGlyphs

  glyph unicode: 0x2000 do
    advance 8
    xmin 0
    xmax 0
    ymin 0
    ymax 0
    data ""
  end

  glyph unicode: 0x2001 do
    advance 16
    xmin 0
    xmax 0
    ymin 0
    ymax 0
    data ""
  end

  glyph unicode: 0x2002 do
    advance 8
    xmin 0
    xmax 0
    ymin 0
    ymax 0
    data ""
  end

  glyph unicode: 0x2003 do
    advance 16
    xmin 0
    xmax 0
    ymin 0
    ymax 0
    data ""
  end

  glyph unicode: 0x2004 do
    advance 8
    xmin 0
    xmax 0
    ymin 0
    ymax 0
    data ""
  end

  glyph unicode: 0x2005 do
    advance 8
    xmin 0
    xmax 0
    ymin 0
    ymax 0
    data ""
  end

  glyph unicode: 0x2006 do
    advance 8
    xmin 0
    xmax 0
    ymin 0
    ymax 0
    data ""
  end

  glyph unicode: 0x2007 do
    advance 8
    xmin 0
    xmax 0
    ymin 0
    ymax 0
    data ""
  end

  glyph unicode: 0x2008 do
    advance 8
    xmin 0
    xmax 0
    ymin 0
    ymax 0
    data ""
  end

  glyph unicode: 0x2009 do
    advance 8
    xmin 0
    xmax 0
    ymin 0
    ymax 0
    data ""
  end

  glyph unicode: 0x200A do
    advance 8
    xmin 0
    xmax 0
    ymin 0
    ymax 0
    data ""
  end

  Enum.each(0x200B..0x200F, fn code ->
    glyph unicode: code do
      advance 0
      xmin 0
      xmax 0
      ymin 0
      ymax 0
      data ""
    end
  end)

  glyph unicode: 0x2010 do
    advance 8
    xmin 0
    xmax 7
    ymin 4
    ymax 5

    data """
    1111111
    """
  end

  glyph unicode: 0x2011 do
    advance 8
    xmin 0
    xmax 7
    ymin 4
    ymax 5

    data """
    1111111
    """
  end

  glyph unicode: 0x2012 do
    advance 8
    xmin 0
    xmax 7
    ymin 4
    ymax 5

    data """
    1111111
    """
  end

  glyph unicode: 0x2013 do
    advance 8
    xmin 0
    xmax 7
    ymin 4
    ymax 5

    data """
    1111111
    """
  end

  glyph unicode: 0x2014 do
    advance 16
    xmin 1
    xmax 8
    ymin 4
    ymax 5

    data """
    11111111
    """
  end

  glyph unicode: 0x2015 do
    advance 16
    xmin 1
    xmax 8
    ymin 4
    ymax 5

    data """
    11111111
    """
  end

  glyph unicode: 0x2016 do
    advance 8
    xmin 1
    xmax 7
    ymin 0
    ymax 10

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
    """
  end

  glyph unicode: 0x2017 do
    advance 8
    xmin 0
    xmax 7
    ymin -3
    ymax 0

    data """
    1111111
    0000000
    1111111
    """
  end

  glyph unicode: 0x2018 do
    advance 8
    xmin 4
    xmax 6
    ymin 7
    ymax 11

    data """
    01
    10
    11
    11
    """
  end

  glyph unicode: 0x2019 do
    advance 8
    xmin 2
    xmax 4
    ymin 7
    ymax 11

    data """
    11
    11
    01
    10
    """
  end

  glyph unicode: 0x201A do
    advance 8
    xmin 2
    xmax 4
    ymin -1
    ymax 3

    data """
    11
    11
    01
    10
    """
  end

  glyph unicode: 0x201B do
    advance 8
    xmin 4
    xmax 6
    ymin 7
    ymax 11

    data """
    11
    11
    10
    01
    """
  end

  glyph unicode: 0x201C do
    advance 8
    xmin 2
    xmax 7
    ymin 7
    ymax 11

    data """
    01001
    10010
    11011
    11011
    """
  end

  glyph unicode: 0x201D do
    advance 8
    xmin 1
    xmax 6
    ymin 7
    ymax 11

    data """
    11011
    11011
    01001
    10010
    """
  end

  glyph unicode: 0x201E do
    advance 8
    xmin 1
    xmax 6
    ymin -1
    ymax 3

    data """
    11011
    11011
    01001
    10010
    """
  end

  glyph unicode: 0x201F do
    advance 8
    xmin 2
    xmax 7
    ymin 7
    ymax 11

    data """
    11011
    11011
    10010
    01001
    """
  end

  glyph unicode: 0x2020 do
    advance 8
    xmin 0
    xmax 7
    ymin -1
    ymax 10

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

  glyph unicode: 0x2021 do
    advance 8
    xmin 0
    xmax 7
    ymin -2
    ymax 10

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

  glyph unicode: 0x2022 do
    advance 8
    xmin 2
    xmax 6
    ymin 3
    ymax 7

    data """
    0110
    1111
    1111
    0110
    """
  end

  glyph unicode: 0x2023 do
    advance 8
    xmin 2
    xmax 5
    ymin 2
    ymax 7

    data """
    100
    110
    111
    110
    100
    """
  end

  glyph unicode: 0x2024 do
    advance 8
    xmin 3
    xmax 5
    ymin 0
    ymax 2

    data """
    11
    11
    """
  end

  glyph unicode: 0x2025 do
    advance 8
    xmin 1
    xmax 7
    ymin 0
    ymax 2

    data """
    110011
    110011
    """
  end

  glyph unicode: 0x2026 do
    advance 8
    xmin 1
    xmax 6
    ymin 0
    ymax 2

    data """
    10101
    10101
    """
  end

  export_glyphs()
end
