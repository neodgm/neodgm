defmodule NeoDGM.BitmapFont.Pro.BasicLatin do
  require TTFLib.GlyphSource
  import TTFLib.GlyphSource

  export_glyphs based_on: NeoDGM.BitmapFont.BasicLatin do
    bmp_glyph unicode: ?\s do
      advance 5
      xmin 0
      xmax 0
      ymin 0
      ymax 0
      data ""
    end

    bmp_glyph unicode: ?! do
      advance 5
      xmin 1
      xmax 3
      ymin 0
      ymax 10

      data """
      11
      11
      11
      11
      11
      11
      11
      00
      11
      11
      """
    end

    bmp_glyph unicode: ?" do
      advance 6
      xmin 0
      xmax 5
      ymin 7
      ymax 11

      data """
      11011
      11011
      11011
      01010
      """
    end

    bmp_glyph unicode: ?' do
      advance 3
      xmin 0
      xmax 2
      ymin 7
      ymax 11

      data """
      11
      11
      11
      10
      """
    end

    bmp_glyph unicode: ?( do
      advance 6
      xmin 1
      xmax 5
      ymin -2
      ymax 11

      data """
      0011
      0110
      1100
      1100
      1100
      1100
      1100
      1100
      1100
      1100
      1100
      0110
      0011
      """
    end

    bmp_glyph unicode: ?) do
      advance 5
      xmin 0
      xmax 4
      ymin -2
      ymax 11

      data """
      1100
      0110
      0011
      0011
      0011
      0011
      0011
      0011
      0011
      0011
      0011
      0110
      1100
      """
    end

    bmp_glyph unicode: ?* do
      advance 9
      xmin 0
      xmax 8
      ymin 2
      ymax 7

      data """
      01100110
      00111100
      11111111
      00111100
      01100110
      """
    end

    bmp_glyph unicode: ?+ do
      advance 7
      xmin 0
      xmax 6
      ymin 2
      ymax 7

      data """
      001100
      001100
      111111
      001100
      001100
      """
    end

    bmp_glyph unicode: ?, do
      advance 5
      xmin 0
      xmax 3
      ymin -2
      ymax 2

      data """
      011
      011
      011
      110
      """
    end

    bmp_glyph unicode: ?. do
      advance 5
      xmin 1
      xmax 3
      ymin 0
      ymax 2

      data """
      11
      11
      """
    end

    bmp_glyph unicode: ?: do
      advance 5
      xmin 1
      xmax 3
      ymin 1
      ymax 8

      data """
      11
      11
      00
      00
      00
      11
      11
      """
    end

    bmp_glyph unicode: ?; do
      advance 5
      xmin 0
      xmax 3
      ymin 0
      ymax 8

      data """
      011
      011
      000
      000
      000
      011
      011
      110
      """
    end

    bmp_glyph unicode: ?@ do
      advance 12
      xmin 0
      xmax 11
      ymin 0
      ymax 10

      data """
      00111111100
      01100000110
      11000000011
      11001111011
      11011011011
      11011011011
      11011011011
      11001111110
      01100000000
      00111111100
      """
    end

    bmp_glyph unicode: ?I do
      advance 5
      xmin 0
      xmax 4
      ymin 0
      ymax 10

      data """
      1111
      0110
      0110
      0110
      0110
      0110
      0110
      0110
      0110
      1111
      """
    end

    bmp_glyph unicode: ?M do
      advance 9
      xmin 0
      xmax 8
      ymin 0
      ymax 10

      data """
      11111110
      11011011
      11011011
      11011011
      11011011
      11011011
      11011011
      11011011
      11011011
      11011011
      """
    end

    bmp_glyph unicode: ?T do
      advance 9
      xmin 0
      xmax 8
      ymin 0
      ymax 10

      data """
      111111110
      000110000
      000110000
      000110000
      000110000
      000110000
      000110000
      000110000
      000110000
      000110000
      """
    end

    bmp_glyph unicode: ?W do
      advance 9
      xmin 0
      xmax 8
      ymin 0
      ymax 10

      data """
      11011011
      11011011
      11011011
      11011011
      11011011
      11011011
      11011011
      11011011
      11011011
      01111110
      """
    end

    bmp_glyph unicode: ?Y do
      advance 7
      xmin 0
      xmax 6
      ymin 0
      ymax 10

      data """
      110011
      110011
      110011
      110011
      011110
      001100
      001100
      001100
      001100
      001100
      """
    end

    bmp_glyph unicode: ?[ do
      advance 6
      xmin 1
      xmax 5
      ymin -2
      ymax 11

      data """
      1111
      1100
      1100
      1100
      1100
      1100
      1100
      1100
      1100
      1100
      1100
      1100
      1111
      """
    end

    bmp_glyph unicode: ?] do
      advance 5
      xmin 0
      xmax 4
      ymin -2
      ymax 11

      data """
      1111
      0011
      0011
      0011
      0011
      0011
      0011
      0011
      0011
      0011
      0011
      0011
      1111
      """
    end

    bmp_glyph unicode: ?` do
      advance 5
      xmin 0
      xmax 4
      ymin 8
      ymax 11

      data """
      1100
      0110
      0011
      """
    end

    bmp_glyph unicode: ?f do
      advance 6
      xmin 0
      xmax 5
      ymin 0
      ymax 10

      data """
      00111
      01100
      01100
      11111
      01100
      01100
      01100
      01100
      01100
      01100
      """
    end

    bmp_glyph unicode: ?i do
      advance 5
      xmin 1
      xmax 4
      ymin 0
      ymax 10

      data """
      110
      110
      000
      110
      110
      110
      110
      110
      110
      011
      """
    end

    bmp_glyph unicode: ?j do
      advance 5
      xmin 0
      xmax 3
      ymin -3
      ymax 10

      data """
      011
      011
      000
      011
      011
      011
      011
      011
      011
      011
      011
      011
      110
      """
    end

    bmp_glyph unicode: ?l do
      advance 5
      xmin 1
      xmax 4
      ymin 0
      ymax 10

      data """
      110
      110
      110
      110
      110
      110
      110
      110
      110
      011
      """
    end

    bmp_glyph unicode: ?m do
      advance 9
      xmin 0
      xmax 8
      ymin 0
      ymax 7

      data """
      11111110
      11011011
      11011011
      11011011
      11011011
      11011011
      11011011
      """
    end

    bmp_glyph unicode: ?r do
      advance 7
      xmin 0
      xmax 6
      ymin 0
      ymax 7

      data """
      111110
      110011
      110000
      110000
      110000
      110000
      110000
      """
    end

    bmp_glyph unicode: ?t do
      advance 6
      xmin 0
      xmax 5
      ymin 0
      ymax 10

      data """
      01100
      01100
      01100
      11111
      01100
      01100
      01100
      01100
      01100
      00111
      """
    end

    bmp_glyph unicode: ?w do
      advance 9
      xmin 0
      xmax 8
      ymin 0
      ymax 7

      data """
      11011011
      11011011
      11011011
      11011011
      11011011
      11011011
      01111110
      """
    end

    bmp_glyph unicode: ?{ do
      advance 7
      xmin 0
      xmax 6
      ymin -2
      ymax 11

      data """
      000111
      001100
      001100
      001100
      001100
      001100
      111000
      001100
      001100
      001100
      001100
      001100
      000111
      """
    end

    bmp_glyph unicode: ?| do
      advance 5
      xmin 1
      xmax 3
      ymin -2
      ymax 11

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
      """
    end

    bmp_glyph unicode: ?} do
      advance 7
      xmin 0
      xmax 6
      ymin -2
      ymax 11

      data """
      111000
      001100
      001100
      001100
      001100
      001100
      000111
      001100
      001100
      001100
      001100
      001100
      111000
      """
    end
  end
end
