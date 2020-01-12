defmodule NeoDGM.BitmapFont.Latin1Supplement do
  require TTFLib.GlyphSource
  import TTFLib.GlyphSource

  export_glyphs do
    bmp_glyph unicode: 0xA0 do
      advance 8
      xmin 0
      xmax 0
      ymin 0
      ymax 0
      data ""
    end

    bmp_glyph unicode: ?¡ do
      advance 8
      xmin 3
      xmax 5
      ymin -3
      ymax 7

      data """
      11
      11
      00
      11
      11
      11
      11
      11
      11
      11
      """
    end

    bmp_glyph unicode: ?¢ do
      advance 8
      xmin 0
      xmax 7
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

    bmp_glyph unicode: ?£ do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0011100
      0110110
      0110000
      0110000
      1111100
      0110000
      0110000
      0110000
      0110000
      1111111
      """
    end

    bmp_glyph unicode: ?¤ do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 7

      data """
      1100011
      0111110
      0110110
      0110110
      0110110
      0111110
      1100011
      """
    end

    bmp_glyph unicode: ?¥ do
      advance 8
      xmin 1
      xmax 7
      ymin 0
      ymax 10

      data """
      110011
      110011
      110011
      011110
      001100
      111111
      001100
      111111
      001100
      001100
      """
    end

    bmp_glyph unicode: ?¦ do
      advance 8
      xmin 3
      xmax 5
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

    bmp_glyph unicode: ?§ do
      advance 8
      xmin 1
      xmax 7
      ymin -1
      ymax 11

      data """
      011110
      110011
      011000
      001100
      011110
      110011
      110011
      011110
      001100
      000110
      110011
      011110
      """
    end

    bmp_glyph unicode: ?¨ do
      advance 8
      xmin 1
      xmax 6
      ymin 10
      ymax 11

      data """
      11011
      """
    end

    bmp_glyph unicode: ?© do
      advance 8
      xmin 0
      xmax 7
      ymin -1
      ymax 10

      data """
      0011100
      0100010
      1000001
      1001101
      1010001
      1010001
      1010001
      1001101
      1000001
      0100010
      0011100
      """
    end

    bmp_glyph unicode: ?ª do
      advance 8
      xmin 1
      xmax 7
      ymin 4
      ymax 10

      data """
      011110
      110110
      110110
      011111
      000000
      111111
      """
    end

    bmp_glyph unicode: ?« do
      advance 8
      xmin 0
      xmax 7
      ymin 1
      ymax 6

      data """
      0011011
      0110110
      1101100
      0110110
      0011011
      """
    end

    bmp_glyph unicode: ?¬ do
      advance 8
      xmin 0
      xmax 7
      ymin 1
      ymax 6

      data """
      1111111
      0000011
      0000011
      0000011
      0000011
      """
    end

    bmp_glyph unicode: ?® do
      advance 8
      xmin 0
      xmax 7
      ymin -1
      ymax 10

      data """
      0011100
      0100010
      1000001
      1011001
      1010101
      1011001
      1010101
      1010101
      1000001
      0100010
      0011100
      """
    end

    bmp_glyph unicode: ?¯ do
      advance 8
      xmin 1
      xmax 6
      ymin 10
      ymax 11

      data """
      11111
      """
    end

    bmp_glyph unicode: ?° do
      advance 8
      xmin 2
      xmax 6
      ymin 7
      ymax 11

      data """
      0110
      1001
      1001
      0110
      """
    end

    bmp_glyph unicode: ?± do
      advance 8
      xmin 1
      xmax 7
      ymin 0
      ymax 7

      data """
      001100
      001100
      111111
      001100
      001100
      000000
      111111
      """
    end

    bmp_glyph unicode: ?² do
      advance 8
      xmin 1
      xmax 6
      ymin 4
      ymax 11

      data """
      11110
      00011
      00011
      01110
      11000
      11000
      11111
      """
    end

    bmp_glyph unicode: ?³ do
      advance 8
      xmin 1
      xmax 6
      ymin 4
      ymax 11

      data """
      11110
      00011
      00011
      01110
      00011
      00011
      11110
      """
    end

    bmp_glyph unicode: ?´ do
      advance 8
      xmin 2
      xmax 5
      ymin 10
      ymax 12

      data """
      011
      110
      """
    end

    bmp_glyph unicode: ?µ do
      advance 8
      xmin 0
      xmax 7
      ymin -3
      ymax 7

      data """
      1100011
      1100011
      1100011
      1100011
      1100011
      1100111
      1111101
      1100000
      1100000
      1100000
      """
    end

    bmp_glyph unicode: ?¶ do
      advance 8
      xmin 0
      xmax 7
      ymin -3
      ymax 7

      data """
      0111111
      1111010
      1111010
      1111010
      0111010
      0001010
      0001010
      0001010
      0001010
      0001010
      """
    end

    bmp_glyph unicode: ?· do
      advance 8
      xmin 3
      xmax 5
      ymin 3
      ymax 5

      data """
      11
      11
      """
    end

    bmp_glyph unicode: ?¸ do
      advance 8
      xmin 2
      xmax 6
      ymin -3
      ymax 0

      data """
      0110
      0011
      1110
      """
    end

    bmp_glyph unicode: ?¹ do
      advance 8
      xmin 1
      xmax 5
      ymin 4
      ymax 11

      data """
      0011
      0111
      1111
      0011
      0011
      0011
      0011
      """
    end

    bmp_glyph unicode: ?º do
      advance 8
      xmin 1
      xmax 7
      ymin 4
      ymax 10

      data """
      011110
      110011
      110011
      011110
      000000
      111111
      """
    end

    bmp_glyph unicode: ?» do
      advance 8
      xmin 0
      xmax 7
      ymin 1
      ymax 6

      data """
      1101100
      0110110
      0011011
      0110110
      1101100
      """
    end

    bmp_glyph unicode: ?¼ do
      advance 8
      xmin 0
      xmax 8
      ymin -2
      ymax 10

      data """
      01100000
      11100000
      01100010
      01100100
      01101000
      00010000
      00100000
      01001110
      10011010
      00011010
      00011111
      00000010
      """
    end

    bmp_glyph unicode: ?½ do
      advance 8
      xmin 0
      xmax 7
      ymin -2
      ymax 10

      data """
      0110000
      1110000
      0110001
      0110010
      0110100
      0001000
      0010000
      0101110
      1000011
      0000110
      0001100
      0001111
      """
    end

    bmp_glyph unicode: ?¾ do
      advance 8
      xmin 0
      xmax 8
      ymin -2
      ymax 10

      data """
      11100000
      00110000
      01100010
      00110100
      11101000
      00010000
      00100000
      01001110
      10011010
      00011010
      00011111
      00000010
      """
    end

    bmp_glyph unicode: ?¿ do
      advance 8
      xmin 0
      xmax 7
      ymin -2
      ymax 8

      data """
      0011000
      0011000
      0000000
      0011000
      0011000
      0110000
      1100000
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?À do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 12

      data """
      0011000
      0001100
      0000000
      0111110
      1100011
      1100011
      1100011
      1111111
      1100011
      1100011
      1100011
      1100011
      """
    end

    bmp_glyph unicode: ?Á do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 12

      data """
      0001100
      0011000
      0000000
      0111110
      1100011
      1100011
      1100011
      1111111
      1100011
      1100011
      1100011
      1100011
      """
    end

    bmp_glyph unicode: ?Â do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 12

      data """
      0011100
      0110110
      0000000
      0111110
      1100011
      1100011
      1100011
      1111111
      1100011
      1100011
      1100011
      1100011
      """
    end

    bmp_glyph unicode: ?Ã do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 12

      data """
      0111011
      1101110
      0000000
      0111110
      1100011
      1100011
      1100011
      1111111
      1100011
      1100011
      1100011
      1100011
      """
    end

    bmp_glyph unicode: ?Ä do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 11

      data """
      0110110
      0000000
      0111110
      1100011
      1100011
      1100011
      1111111
      1100011
      1100011
      1100011
      1100011
      """
    end

    bmp_glyph unicode: ?Å do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 12

      data """
      0011100
      0110110
      0011100
      0111110
      1100011
      1100011
      1100011
      1111111
      1100011
      1100011
      1100011
      1100011
      """
    end

    bmp_glyph unicode: ?Æ do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0111111
      1101100
      1101100
      1101100
      1111111
      1101100
      1101100
      1101100
      1101100
      1101111
      """
    end

    bmp_glyph unicode: ?Ç do
      advance 8
      xmin 0
      xmax 7
      ymin -3
      ymax 10

      data """
      0111110
      1100011
      1100000
      1100000
      1100000
      1100000
      1100000
      1100000
      1100011
      0111110
      0001100
      0000110
      0011100
      """
    end

    bmp_glyph unicode: ?È do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 12

      data """
      0011000
      0001100
      0000000
      0111111
      1100000
      1100000
      1100000
      1111110
      1100000
      1100000
      1100000
      0111111
      """
    end

    bmp_glyph unicode: ?É do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 12

      data """
      0001100
      0011000
      0000000
      0111111
      1100000
      1100000
      1100000
      1111110
      1100000
      1100000
      1100000
      0111111
      """
    end

    bmp_glyph unicode: ?Ê do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 12

      data """
      0011100
      0110110
      0000000
      0111111
      1100000
      1100000
      1100000
      1111110
      1100000
      1100000
      1100000
      0111111
      """
    end

    bmp_glyph unicode: ?Ë do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 11

      data """
      0110110
      0000000
      0111111
      1100000
      1100000
      1100000
      1111110
      1100000
      1100000
      1100000
      0111111
      """
    end

    bmp_glyph unicode: ?Ì do
      advance 8
      xmin 1
      xmax 7
      ymin 0
      ymax 12

      data """
      011000
      001100
      000000
      111111
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

    bmp_glyph unicode: ?Í do
      advance 8
      xmin 1
      xmax 7
      ymin 0
      ymax 12

      data """
      001100
      011000
      000000
      111111
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

    bmp_glyph unicode: ?Î do
      advance 8
      xmin 1
      xmax 7
      ymin 0
      ymax 12

      data """
      011100
      110110
      000000
      111111
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

    bmp_glyph unicode: ?Ï do
      advance 8
      xmin 1
      xmax 7
      ymin 0
      ymax 11

      data """
      110011
      000000
      111111
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

    bmp_glyph unicode: ?Ð do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0111110
      0110011
      0110011
      0110011
      1111011
      0110011
      0110011
      0110011
      0110011
      0111110
      """
    end

    bmp_glyph unicode: ?Ñ do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 12

      data """
      0111011
      1101110
      0000000
      1111110
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      """
    end

    bmp_glyph unicode: ?Ò do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 12

      data """
      0011000
      0001100
      0000000
      0111110
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?Ó do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 12

      data """
      0001100
      0011000
      0000000
      0111110
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?Ô do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 12

      data """
      0011100
      0110110
      0000000
      0111110
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?Õ do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 12

      data """
      0111011
      1101110
      0000000
      0111110
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?Ö do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 11

      data """
      0110110
      0000000
      0111110
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?× do
      advance 8
      xmin 1
      xmax 7
      ymin 1
      ymax 7

      data """
      100001
      010010
      001100
      001100
      010010
      100001
      """
    end

    bmp_glyph unicode: ?Ø do
      advance 8
      xmin 0
      xmax 7
      ymin -2
      ymax 11

      data """
      0000001
      0000001
      0111110
      1100111
      1100111
      1101011
      1101011
      1110011
      1110011
      1100011
      0111110
      1000000
      1000000
      """
    end

    bmp_glyph unicode: ?Ù do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 12

      data """
      0011000
      0001100
      0000000
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?Ú do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 12

      data """
      0001100
      0011000
      0000000
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?Û do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 12

      data """
      0011100
      0110110
      0000000
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?Ü do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 11

      data """
      0110110
      0000000
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?Ý do
      advance 8
      xmin 1
      xmax 7
      ymin 0
      ymax 12

      data """
      000110
      001100
      000000
      110011
      110011
      110011
      110011
      011110
      001100
      001100
      001100
      001100
      """
    end

    bmp_glyph unicode: ?Þ do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      1100000
      1100000
      1111110
      1100011
      1100011
      1100011
      1100011
      1111110
      1100000
      1100000
      """
    end

    bmp_glyph unicode: ?ß do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0111110
      1100011
      1100011
      1100110
      1101100
      1100110
      1100011
      1100011
      1100011
      1101110
      """
    end

    bmp_glyph unicode: ?à do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0011000
      0001100
      0000000
      1111110
      0000011
      0111111
      1100011
      1100011
      1100011
      0111111
      """
    end

    bmp_glyph unicode: ?á do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0001100
      0011000
      0000000
      1111110
      0000011
      0111111
      1100011
      1100011
      1100011
      0111111
      """
    end

    bmp_glyph unicode: ?â do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0011100
      0110110
      0000000
      1111110
      0000011
      0111111
      1100011
      1100011
      1100011
      0111111
      """
    end

    bmp_glyph unicode: ?ã do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0111011
      1101110
      0000000
      1111110
      0000011
      0111111
      1100011
      1100011
      1100011
      0111111
      """
    end

    bmp_glyph unicode: ?ä do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 9

      data """
      0110110
      0000000
      1111110
      0000011
      0111111
      1100011
      1100011
      1100011
      0111111
      """
    end

    bmp_glyph unicode: ?å do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 11

      data """
      0011100
      0110110
      0011100
      0000000
      1111110
      0000011
      0111111
      1100011
      1100011
      1100011
      0111111
      """
    end

    bmp_glyph unicode: ?æ do
      advance 8
      xmin 0
      xmax 8
      ymin 0
      ymax 7

      data """
      11110110
      00011011
      01111110
      11011000
      11011000
      11011000
      01110111
      """
    end

    bmp_glyph unicode: ?ç do
      advance 8
      xmin 0
      xmax 7
      ymin -3
      ymax 7

      data """
      0111110
      1100011
      1100000
      1100000
      1100000
      1100011
      0111110
      0001100
      0000110
      0011100
      """
    end

    bmp_glyph unicode: ?è do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0011000
      0001100
      0000000
      0111110
      1100011
      1111111
      1100000
      1100000
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?é do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0001100
      0011000
      0000000
      0111110
      1100011
      1111111
      1100000
      1100000
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?ê do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0011100
      0110110
      0000000
      0111110
      1100011
      1111111
      1100000
      1100000
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?ë do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 9

      data """
      0110110
      0000000
      0111110
      1100011
      1111111
      1100000
      1100000
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?ì do
      advance 8
      xmin 2
      xmax 6
      ymin 0
      ymax 10

      data """
      1100
      0110
      0000
      0110
      0110
      0110
      0110
      0110
      0110
      0011
      """
    end

    bmp_glyph unicode: ?í do
      advance 8
      xmin 3
      xmax 6
      ymin 0
      ymax 10

      data """
      011
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

    bmp_glyph unicode: ?î do
      advance 8
      xmin 2
      xmax 7
      ymin 0
      ymax 10

      data """
      01110
      11011
      00000
      01100
      01100
      01100
      01100
      01100
      01100
      00110
      """
    end

    bmp_glyph unicode: ?ï do
      advance 8
      xmin 1
      xmax 7
      ymin 0
      ymax 9

      data """
      110011
      000000
      001100
      001100
      001100
      001100
      001100
      001100
      000110
      """
    end

    bmp_glyph unicode: ?ð do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 11

      data """
      0011010
      0001100
      0010110
      0000011
      0111111
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?ñ do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0111011
      1101110
      0000000
      1111110
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      """
    end

    bmp_glyph unicode: ?ò do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0011000
      0001100
      0000000
      0111110
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?ó do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0001100
      0011000
      0000000
      0111110
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?ô do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0011100
      0110110
      0000000
      0111110
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?õ do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0111011
      1101110
      0000000
      0111110
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?ö do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 9

      data """
      0110110
      0000000
      0111110
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?÷ do
      advance 8
      xmin 1
      xmax 7
      ymin 2
      ymax 7

      data """
      001100
      000000
      111111
      000000
      001100
      """
    end

    bmp_glyph unicode: ?ø do
      advance 8
      xmin 0
      xmax 7
      ymin -2
      ymax 9

      data """
      0000001
      0000010
      0111110
      1100111
      1100111
      1101011
      1110011
      1110011
      0111110
      0100000
      1000000
      """
    end

    bmp_glyph unicode: ?ù do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0011000
      0001100
      0000000
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?ú do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0001100
      0011000
      0000000
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?û do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 10

      data """
      0011100
      0110110
      0000000
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?ü do
      advance 8
      xmin 0
      xmax 7
      ymin 0
      ymax 9

      data """
      0110110
      0000000
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end

    bmp_glyph unicode: ?ý do
      advance 8
      xmin 0
      xmax 7
      ymin -3
      ymax 10

      data """
      0001100
      0011000
      0000000
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0111111
      0000011
      0000011
      0111110
      """
    end

    bmp_glyph unicode: ?þ do
      advance 8
      xmin 0
      xmax 7
      ymin -3
      ymax 10

      data """
      1100000
      1100000
      1100000
      1111110
      1100011
      1100011
      1100011
      1100011
      1100011
      1111110
      1100000
      1100000
      1100000
      """
    end

    bmp_glyph unicode: ?ÿ do
      advance 8
      xmin 0
      xmax 7
      ymin -3
      ymax 9

      data """
      0110110
      0000000
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0111111
      0000011
      0000011
      0111110
      """
    end
  end
end
