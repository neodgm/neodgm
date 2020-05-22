defmodule NeoDGM.BitmapFont.HalfwidthAndFullwidthForms do
  require TTFLib.GlyphSource
  import TTFLib.GlyphSource

  export_glyphs do
    bmp_glyph unicode: 0xFF01 do
      advance 16
      xmin 6
      xmax 10
      ymin 0
      ymax 10

      data """
      0110
      1111
      1111
      1111
      1111
      0110
      0110
      0000
      0110
      0110
      """
    end

    bmp_glyph unicode: 0xFF02 do
      advance 16
      xmin 5
      xmax 11
      ymin 7
      ymax 11

      data """
      110011
      110011
      110011
      010010
      """
    end

    bmp_glyph unicode: 0xFF03 do
      advance 16
      xmin 3
      xmax 13
      ymin 0
      ymax 9

      data """
      0011001100
      0011001100
      1111111111
      0011001100
      0011001100
      0011001100
      1111111111
      0011001100
      0011001100
      """
    end

    bmp_glyph unicode: 0xFF04 do
      advance 16
      xmin 4
      xmax 12
      ymin -1
      ymax 11

      data """
      00011000
      00011000
      01111110
      11011011
      11011000
      01111110
      00011011
      00011011
      11011011
      01111110
      00011000
      00011000
      """
    end

    bmp_glyph unicode: 0xFF05 do
      advance 16
      xmin 2
      xmax 13
      ymin -1
      ymax 9

      data """
      01110000000
      11011000110
      11011001100
      01110011000
      00000110000
      00001100000
      00011001110
      00110011011
      01100011011
      00000001110
      """
    end

    bmp_glyph unicode: 0xFF06 do
      advance 16
      xmin 4
      xmax 11
      ymin 0
      ymax 10

      data """
      0011100
      0110110
      0110110
      0011100
      0111011
      1101110
      1100110
      1100110
      1100110
      0111011
      """
    end

    bmp_glyph unicode: 0xFF07 do
      advance 16
      xmin 7
      xmax 9
      ymin 7
      ymax 11

      data """
      11
      11
      11
      10
      """
    end

    bmp_glyph unicode: 0xFF08 do
      advance 16
      xmin 5
      xmax 11
      ymin -2
      ymax 11

      data """
      000111
      001100
      011000
      110000
      110000
      110000
      110000
      110000
      110000
      110000
      011000
      001100
      000111
      """
    end

    bmp_glyph unicode: 0xFF09 do
      advance 16
      xmin 5
      xmax 11
      ymin -2
      ymax 11

      data """
      111000
      001100
      000110
      000011
      000011
      000011
      000011
      000011
      000011
      000011
      000110
      001100
      111000
      """
    end

    bmp_glyph unicode: 0xFF0A do
      advance 16
      xmin 3
      xmax 13
      ymin 1
      ymax 8

      data """
      0110000110
      0011001100
      0001111000
      1111111111
      0001111000
      0011001100
      0110000110
      """
    end

    bmp_glyph unicode: 0xFF0B do
      advance 16
      xmin 4
      xmax 12
      ymin 1
      ymax 8

      data """
      00011000
      00011000
      00011000
      11111111
      00011000
      00011000
      00011000
      """
    end

    bmp_glyph unicode: 0xFF0C do
      advance 16
      xmin 6
      xmax 9
      ymin -1
      ymax 3

      data """
      011
      011
      011
      110
      """
    end

    bmp_glyph unicode: 0xFF0D do
      advance 16
      xmin 3
      xmax 12
      ymin 4
      ymax 5

      data """
      111111111
      """
    end

    bmp_glyph unicode: 0xFF0E do
      advance 16
      xmin 7
      xmax 9
      ymin 0
      ymax 2

      data """
      11
      11
      """
    end

    bmp_glyph unicode: 0xFF0F do
      advance 16
      xmin 4
      xmax 11
      ymin 0
      ymax 8

      data """
      0000001
      0000011
      0000110
      0001100
      0011000
      0110000
      1100000
      1000000
      """
    end

    bmp_glyph unicode: 0xFF10 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      01111110
      11000011
      11000111
      11001111
      11011011
      11110011
      11100011
      11000011
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF11 do
      advance 16
      xmin 5
      xmax 9
      ymin 0
      ymax 10

      data """
      0011
      0111
      1111
      0011
      0011
      0011
      0011
      0011
      0011
      0011
      """
    end

    bmp_glyph unicode: 0xFF12 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      01111110
      11000011
      00000011
      00000011
      00111110
      01100000
      11000000
      11000000
      11000000
      11111111
      """
    end

    bmp_glyph unicode: 0xFF13 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      01111110
      11000011
      00000011
      00000011
      01111110
      00000011
      00000011
      00000011
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF14 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      00111100
      01101100
      11001100
      11001100
      11001100
      11111111
      00001100
      00001100
      00001100
      00001100
      """
    end

    bmp_glyph unicode: 0xFF15 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11111111
      11000000
      11000000
      11000000
      11111110
      00000011
      00000011
      00000011
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF16 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      01111110
      11000011
      11000000
      11000000
      11111110
      11000011
      11000011
      11000011
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF17 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11111111
      00000011
      00000011
      00000110
      00001100
      00011000
      00011000
      00011000
      00011000
      00011000
      """
    end

    bmp_glyph unicode: 0xFF18 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      01111110
      11000011
      11000011
      11000011
      01111110
      11000011
      11000011
      11000011
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF19 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      01111110
      11000011
      11000011
      11000011
      01111111
      00000011
      00000011
      00000011
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF1A do
      advance 16
      xmin 7
      xmax 9
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

    bmp_glyph unicode: 0xFF1B do
      advance 16
      xmin 6
      xmax 9
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

    bmp_glyph unicode: 0xFF1C do
      advance 16
      xmin 4
      xmax 11
      ymin -1
      ymax 10

      data """
      0000011
      0000110
      0001100
      0011000
      0110000
      1100000
      0110000
      0011000
      0001100
      0000110
      0000011
      """
    end

    bmp_glyph unicode: 0xFF1D do
      advance 16
      xmin 4
      xmax 12
      ymin 3
      ymax 7

      data """
      11111111
      00000000
      00000000
      11111111
      """
    end

    bmp_glyph unicode: 0xFF1E do
      advance 16
      xmin 5
      xmax 12
      ymin -1
      ymax 10

      data """
      1100000
      0110000
      0011000
      0001100
      0000110
      0000011
      0000110
      0001100
      0011000
      0110000
      1100000
      """
    end

    bmp_glyph unicode: 0xFF1F do
      advance 16
      xmin 4
      xmax 11
      ymin 0
      ymax 10

      data """
      0111110
      1100011
      1100011
      0000110
      0001100
      0001100
      0001100
      0000000
      0001100
      0001100
      """
    end

    bmp_glyph unicode: 0xFF20 do
      advance 16
      xmin 2
      xmax 13
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

    bmp_glyph unicode: 0xFF21 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      01111110
      11000011
      11000011
      11000011
      11111111
      11000011
      11000011
      11000011
      11000011
      11000011
      """
    end

    bmp_glyph unicode: 0xFF22 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11111110
      11000011
      11000011
      11000011
      11111110
      11000011
      11000011
      11000011
      11000011
      11111110
      """
    end

    bmp_glyph unicode: 0xFF23 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      01111110
      11000011
      11000000
      11000000
      11000000
      11000000
      11000000
      11000000
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF24 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11111110
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      11111110
      """
    end

    bmp_glyph unicode: 0xFF25 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      01111111
      11000000
      11000000
      11000000
      11111110
      11000000
      11000000
      11000000
      11000000
      01111111
      """
    end

    bmp_glyph unicode: 0xFF26 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      01111111
      11000000
      11000000
      11000000
      11111110
      11000000
      11000000
      11000000
      11000000
      11000000
      """
    end

    bmp_glyph unicode: 0xFF27 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      01111110
      11000011
      11000000
      11000000
      11001111
      11000011
      11000011
      11000011
      11000011
      01111111
      """
    end

    bmp_glyph unicode: 0xFF28 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11000011
      11000011
      11000011
      11000011
      11111111
      11000011
      11000011
      11000011
      11000011
      11000011
      """
    end

    bmp_glyph unicode: 0xFF29 do
      advance 16
      xmin 5
      xmax 11
      ymin 0
      ymax 10

      data """
      111111
      001100
      001100
      001100
      001100
      001100
      001100
      001100
      001100
      111111
      """
    end

    bmp_glyph unicode: 0xFF2A do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      00001111
      00000110
      00000110
      00000110
      00000110
      00000110
      00000110
      00000110
      11000110
      01111100
      """
    end

    bmp_glyph unicode: 0xFF2B do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11000011
      11000011
      11000110
      11001100
      11111000
      11001100
      11000110
      11000011
      11000011
      11000011
      """
    end

    bmp_glyph unicode: 0xFF2C do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11000000
      11000000
      11000000
      11000000
      11000000
      11000000
      11000000
      11000000
      11000000
      11111111
      """
    end

    bmp_glyph unicode: 0xFF2D do
      advance 16
      xmin 4
      xmax 12
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

    bmp_glyph unicode: 0xFF2E do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11111110
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      """
    end

    bmp_glyph unicode: 0xFF2F do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      01111110
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF30 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11111110
      11000011
      11000011
      11000011
      11111110
      11000000
      11000000
      11000000
      11000000
      11000000
      """
    end

    bmp_glyph unicode: 0xFF31 do
      advance 16
      xmin 4
      xmax 12
      ymin -2
      ymax 10

      data """
      01111110
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      01111110
      00001100
      00000111
      """
    end

    bmp_glyph unicode: 0xFF32 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11111110
      11000011
      11000011
      11000011
      11111110
      11000011
      11000011
      11000011
      11000011
      11000011
      """
    end

    bmp_glyph unicode: 0xFF33 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      01111110
      11000011
      11000000
      11000000
      01111110
      00000011
      00000011
      00000011
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF34 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

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
      00011000
      """
    end

    bmp_glyph unicode: 0xFF35 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF36 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      01100110
      00111100
      00011000
      """
    end

    bmp_glyph unicode: 0xFF37 do
      advance 16
      xmin 4
      xmax 12
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

    bmp_glyph unicode: 0xFF38 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11000011
      11000011
      01100110
      00111100
      00011000
      00111100
      01100110
      11000011
      11000011
      11000011
      """
    end

    bmp_glyph unicode: 0xFF39 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11000011
      11000011
      11000011
      01100110
      00111100
      00011000
      00011000
      00011000
      00011000
      00011000
      """
    end

    bmp_glyph unicode: 0xFF3A do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11111111
      00000011
      00000011
      00000110
      00111100
      01100000
      11000000
      11000000
      11000000
      11111111
      """
    end

    bmp_glyph unicode: 0xFF3B do
      advance 16
      xmin 5
      xmax 11
      ymin -2
      ymax 11

      data """
      111111
      110000
      110000
      110000
      110000
      110000
      110000
      110000
      110000
      110000
      110000
      110000
      111111
      """
    end

    bmp_glyph unicode: 0xFF3C do
      advance 16
      xmin 4
      xmax 11
      ymin 0
      ymax 8

      data """
      1000000
      1100000
      0110000
      0011000
      0001100
      0000110
      0000011
      0000001
      """
    end

    bmp_glyph unicode: 0xFF3D do
      advance 16
      xmin 5
      xmax 11
      ymin -2
      ymax 11

      data """
      111111
      000011
      000011
      000011
      000011
      000011
      000011
      000011
      000011
      000011
      000011
      000011
      111111
      """
    end

    bmp_glyph unicode: 0xFF3E do
      advance 16
      xmin 4
      xmax 11
      ymin 8
      ymax 12

      data """
      0001000
      0011100
      0110110
      1100011
      """
    end

    bmp_glyph unicode: 0xFF3F do
      advance 16
      xmin 3
      xmax 12
      ymin -2
      ymax -1

      data """
      111111111
      """
    end

    bmp_glyph unicode: 0xFF40 do
      advance 16
      xmin 6
      xmax 10
      ymin 8
      ymax 11

      data """
      1100
      0110
      0011
      """
    end

    bmp_glyph unicode: 0xFF41 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 7

      data """
      11111110
      00000011
      01111111
      11000011
      11000011
      11000011
      01111111
      """
    end

    bmp_glyph unicode: 0xFF42 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11000000
      11000000
      11000000
      11111110
      11000011
      11000011
      11000011
      11000011
      11000011
      11111110
      """
    end

    bmp_glyph unicode: 0xFF43 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 7

      data """
      01111110
      11000011
      11000000
      11000000
      11000000
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF44 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      00000011
      00000011
      00000011
      01111111
      11000011
      11000011
      11000011
      11000011
      11000011
      01111111
      """
    end

    bmp_glyph unicode: 0xFF45 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 7

      data """
      01111110
      11000011
      11111111
      11000000
      11000000
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF46 do
      advance 16
      xmin 4
      xmax 11
      ymin 0
      ymax 10

      data """
      0011110
      0110011
      0110000
      0110000
      1111100
      0110000
      0110000
      0110000
      0110000
      0110000
      """
    end

    bmp_glyph unicode: 0xFF47 do
      advance 16
      xmin 4
      xmax 12
      ymin -3
      ymax 7

      data """
      01111111
      11000011
      11000011
      11000011
      11000011
      11000011
      01111111
      00000011
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF48 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11000000
      11000000
      11000000
      11111110
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      """
    end

    bmp_glyph unicode: 0xFF49 do
      advance 16
      xmin 5
      xmax 11
      ymin 0
      ymax 10

      data """
      001100
      001100
      000000
      111100
      001100
      001100
      001100
      001100
      001100
      000111
      """
    end

    bmp_glyph unicode: 0xFF4A do
      advance 16
      xmin 5
      xmax 10
      ymin -3
      ymax 10

      data """
      00011
      00011
      00000
      01111
      00011
      00011
      00011
      00011
      00011
      00011
      00011
      00011
      11110
      """
    end

    bmp_glyph unicode: 0xFF4B do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11000000
      11000000
      11000000
      11000011
      11000110
      11001100
      11111000
      11001100
      11000110
      11000011
      """
    end

    bmp_glyph unicode: 0xFF4C do
      advance 16
      xmin 5
      xmax 11
      ymin 0
      ymax 10

      data """
      111100
      001100
      001100
      001100
      001100
      001100
      001100
      001100
      001100
      000111
      """
    end

    bmp_glyph unicode: 0xFF4D do
      advance 16
      xmin 4
      xmax 12
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

    bmp_glyph unicode: 0xFF4E do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 7

      data """
      11111110
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      """
    end

    bmp_glyph unicode: 0xFF4F do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 7

      data """
      01111110
      11000011
      11000011
      11000011
      11000011
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF50 do
      advance 16
      xmin 4
      xmax 12
      ymin -3
      ymax 7

      data """
      11111110
      11000011
      11000011
      11000011
      11000011
      11000011
      11111110
      11000000
      11000000
      11000000
      """
    end

    bmp_glyph unicode: 0xFF51 do
      advance 16
      xmin 4
      xmax 12
      ymin -3
      ymax 7

      data """
      01111111
      11000011
      11000011
      11000011
      11000011
      11000011
      01111111
      00000011
      00000011
      00000011
      """
    end

    bmp_glyph unicode: 0xFF52 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 7

      data """
      11011110
      11110011
      11100011
      11000000
      11000000
      11000000
      11000000
      """
    end

    bmp_glyph unicode: 0xFF53 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 7

      data """
      01111110
      11000011
      11000000
      01111110
      00000011
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF54 do
      advance 16
      xmin 4
      xmax 11
      ymin 0
      ymax 10

      data """
      0110000
      0110000
      0110000
      1111100
      0110000
      0110000
      0110000
      0110000
      0110011
      0011110
      """
    end

    bmp_glyph unicode: 0xFF55 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 7

      data """
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF56 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 7

      data """
      11000011
      11000011
      11000011
      11000011
      01100110
      00111100
      00011000
      """
    end

    bmp_glyph unicode: 0xFF57 do
      advance 16
      xmin 4
      xmax 12
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

    bmp_glyph unicode: 0xFF58 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 7

      data """
      11000011
      01100110
      00111100
      00011000
      00111100
      01100110
      11000011
      """
    end

    bmp_glyph unicode: 0xFF59 do
      advance 16
      xmin 4
      xmax 12
      ymin -3
      ymax 7

      data """
      11000011
      11000011
      11000011
      11000011
      11000011
      11000011
      01111111
      00000011
      11000011
      01111110
      """
    end

    bmp_glyph unicode: 0xFF5A do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 7

      data """
      11111111
      00000011
      00000110
      00111100
      01100000
      11000000
      11111111
      """
    end

    bmp_glyph unicode: 0xFF5B do
      advance 16
      xmin 3
      xmax 11
      ymin -2
      ymax 11

      data """
      00000111
      00001100
      00001100
      00001100
      00001100
      00011000
      11110000
      00011000
      00001100
      00001100
      00001100
      00001100
      00000111
      """
    end

    bmp_glyph unicode: 0xFF5C do
      advance 16
      xmin 7
      xmax 9
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

    bmp_glyph unicode: 0xFF5D do
      advance 16
      xmin 5
      xmax 13
      ymin -2
      ymax 11

      data """
      11100000
      00110000
      00110000
      00110000
      00110000
      00011000
      00001111
      00011000
      00110000
      00110000
      00110000
      00110000
      11100000
      """
    end

    bmp_glyph unicode: 0xFF5E do
      advance 16
      xmin 4
      xmax 12
      ymin 3
      ymax 6

      data """
      01110001
      11011011
      10001110
      """
    end

    bmp_glyph unicode: 0xFFE0 do
      advance 16
      xmin 4
      xmax 11
      ymin 0
      ymax 10

      data """
      0001000
      0001000
      0111110
      1101011
      1101000
      1101000
      1101011
      0111110
      0001000
      0001000
      """
    end

    bmp_glyph unicode: 0xFFE1 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      00111100
      01100110
      01100000
      01100000
      11111100
      00110000
      00110000
      00110000
      01100000
      11111111
      """
    end

    bmp_glyph unicode: 0xFFE2 do
      advance 16
      xmin 2
      xmax 13
      ymin 1
      ymax 6

      data """
      11111111111
      00000000011
      00000000011
      00000000011
      00000000011
      """
    end

    bmp_glyph unicode: 0xFFE3 do
      advance 16
      xmin 4
      xmax 12
      ymin 10
      ymax 11

      data """
      11111111
      """
    end

    bmp_glyph unicode: 0xFFE4 do
      advance 16
      xmin 7
      xmax 9
      ymin -1
      ymax 11

      data """
      11
      11
      11
      11
      11
      00
      00
      11
      11
      11
      11
      11
      """
    end

    bmp_glyph unicode: 0xFFE5 do
      advance 16
      xmin 4
      xmax 12
      ymin 0
      ymax 10

      data """
      11000011
      11000011
      01100110
      00111100
      00011000
      11111111
      00011000
      11111111
      00011000
      00011000
      """
    end

    bmp_glyph unicode: 0xFFE6 do
      advance 16
      xmin 2
      xmax 14
      ymin 0
      ymax 10

      data """
      001100001100
      001101101100
      001101101100
      111111111111
      001101101100
      001101101100
      001101101100
      001101101100
      001111111100
      000110011000
      """
    end
  end
end
