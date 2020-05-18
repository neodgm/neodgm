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

    composite_glyph unicode: ?¨ do
      component {:name, "dieresis.component"}, 0, 0
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

    composite_glyph unicode: ?² do
      component {:unicode, 32}, 0, 0, flags: [:use_my_metrics]
      component {:name, "two.fraction"}, 1, 6
    end

    composite_glyph unicode: ?³ do
      component {:unicode, 32}, 0, 0, flags: [:use_my_metrics]
      component {:name, "three.fraction"}, 1, 6
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

    composite_glyph unicode: ?¹ do
      component {:unicode, 32}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.fraction"}, 2, 6
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

    composite_glyph unicode: 0x00BC do
      component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.fraction"}, 1, 6
      component {:name, "four.fraction"}, 1, -2
    end

    composite_glyph unicode: 0x00BD do
      component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.fraction"}, 1, 6
      component {:name, "two.fraction"}, 1, -2
    end

    composite_glyph unicode: 0x00BE do
      component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
      component {:name, "three.fraction"}, 1, 6
      component {:name, "four.fraction"}, 1, -2
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

    composite_glyph unicode: ?À do
      component {:name, "grave.component"}, 0, 0
      component {:name, "A.short"}, 0, 0
    end

    composite_glyph unicode: ?Á do
      component {:unicode, 0x00B4}, 0, 0
      component {:name, "A.short"}, 0, 0
    end

    composite_glyph unicode: ?Â do
      component {:name, "circumflex.component"}, 0, 0
      component {:name, "A.short"}, 0, 0
    end

    composite_glyph unicode: ?Ã do
      component {:name, "tilde.component"}, 0, 0
      component {:name, "A.short"}, 0, 0
    end

    composite_glyph unicode: ?Ä do
      component {:name, "dieresis.component"}, 0, 0
      component {:name, "A.short"}, 0, 0
    end

    composite_glyph unicode: ?Å do
      component {:name, "ring.component"}, 0, 0
      component {:name, "A.short"}, 0, 0
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

    composite_glyph unicode: ?Ç do
      component {:unicode, 0x00B8}, 0, 0
      component {:unicode, ?C}, 0, 0
    end

    composite_glyph unicode: ?È do
      component {:name, "grave.component"}, 0, 0
      component {:name, "E.short"}, 0, 0
    end

    composite_glyph unicode: ?É do
      component {:unicode, 0x00B4}, 0, 0
      component {:name, "E.short"}, 0, 0
    end

    composite_glyph unicode: ?Ê do
      component {:name, "circumflex.component"}, 0, 0
      component {:name, "E.short"}, 0, 0
    end

    composite_glyph unicode: ?Ë do
      component {:name, "dieresis.component"}, 0, 0
      component {:name, "E.short"}, 0, 0
    end

    composite_glyph unicode: ?Ì do
      component {:name, "grave.component"}, 0, 0
      component {:name, "I.short"}, 0, 0, flags: [:use_my_metrics]
    end

    composite_glyph unicode: ?Í do
      component {:unicode, 0x00B4}, 0, 0
      component {:name, "I.short"}, 0, 0, flags: [:use_my_metrics]
    end

    composite_glyph unicode: ?Î do
      component {:name, "circumflex.component"}, 0, 0
      component {:name, "I.short"}, 0, 0, flags: [:use_my_metrics]
    end

    composite_glyph unicode: ?Ï do
      component {:name, "dieresis.component.i"}, 0, 0
      component {:name, "I.short"}, 0, 0, flags: [:use_my_metrics]
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

    composite_glyph unicode: ?Ñ do
      component {:name, "tilde.component"}, 0, 0
      component {:name, "N.short"}, 0, 0
    end

    composite_glyph unicode: ?Ò do
      component {:name, "grave.component"}, 0, 0
      component {:name, "O.short"}, 0, 0
    end

    composite_glyph unicode: ?Ó do
      component {:unicode, 0x00B4}, 0, 0
      component {:name, "O.short"}, 0, 0
    end

    composite_glyph unicode: ?Ô do
      component {:name, "circumflex.component"}, 0, 0
      component {:name, "O.short"}, 0, 0
    end

    composite_glyph unicode: ?Õ do
      component {:name, "tilde.component"}, 0, 0
      component {:name, "O.short"}, 0, 0
    end

    composite_glyph unicode: ?Ö do
      component {:name, "dieresis.component"}, 0, 0
      component {:name, "O.short"}, 0, 0
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

    composite_glyph unicode: ?Ù do
      component {:name, "grave.component"}, 0, 0
      component {:name, "U.short"}, 0, 0
    end

    composite_glyph unicode: ?Ú do
      component {:unicode, 0x00B4}, 0, 0
      component {:name, "U.short"}, 0, 0
    end

    composite_glyph unicode: ?Û do
      component {:name, "circumflex.component"}, 0, 0
      component {:name, "U.short"}, 0, 0
    end

    composite_glyph unicode: ?Ü do
      component {:name, "dieresis.component"}, 0, 0
      component {:name, "U.short"}, 0, 0
    end

    composite_glyph unicode: ?Ý do
      component {:unicode, 0x00B4}, 1, 0
      component {:name, "Y.short"}, 0, 0
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

    composite_glyph unicode: ?à do
      component {:name, "grave.component"}, 0, -2
      component {:unicode, ?a}, 0, 0
    end

    composite_glyph unicode: ?á do
      component {:unicode, 0x00B4}, 0, -2
      component {:unicode, ?a}, 0, 0
    end

    composite_glyph unicode: ?â do
      component {:name, "circumflex.component"}, 0, -2
      component {:unicode, ?a}, 0, 0
    end

    composite_glyph unicode: ?ã do
      component {:name, "tilde.component"}, 0, -2
      component {:unicode, ?a}, 0, 0
    end

    composite_glyph unicode: ?ä do
      component {:name, "dieresis.component"}, 0, -2
      component {:unicode, ?a}, 0, 0
    end

    composite_glyph unicode: ?å do
      component {:name, "ring.component"}, 0, -1
      component {:unicode, ?a}, 0, 0
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

    composite_glyph unicode: ?ç do
      component {:unicode, 0x00B8}, 0, 0
      component {:unicode, ?c}, 0, 0
    end

    composite_glyph unicode: ?è do
      component {:name, "grave.component"}, 0, -2
      component {:unicode, ?e}, 0, 0
    end

    composite_glyph unicode: ?é do
      component {:unicode, 0x00B4}, 0, -2
      component {:unicode, ?e}, 0, 0
    end

    composite_glyph unicode: ?ê do
      component {:name, "circumflex.component"}, 0, -2
      component {:unicode, ?e}, 0, 0
    end

    composite_glyph unicode: ?ë do
      component {:name, "dieresis.component"}, 0, -2
      component {:unicode, ?e}, 0, 0
    end

    composite_glyph unicode: ?ì do
      component {:name, "grave.component"}, -1, -2
      component {:unicode, 0x0131}, 0, 0, flags: [:use_my_metrics]
    end

    composite_glyph unicode: ?í do
      component {:unicode, 0x00B4}, 0, -2
      component {:unicode, 0x0131}, 0, 0, flags: [:use_my_metrics]
    end

    composite_glyph unicode: ?î do
      component {:name, "circumflex.component"}, 0, -2
      component {:unicode, 0x0131}, 0, 0, flags: [:use_my_metrics]
    end

    composite_glyph unicode: ?ï do
      component {:name, "dieresis.component.i"}, 0, -2
      component {:unicode, 0x0131}, 1, 0, flags: [:use_my_metrics]
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

    composite_glyph unicode: ?ñ do
      component {:name, "tilde.component"}, 0, -2
      component {:unicode, ?n}, 0, 0
    end

    composite_glyph unicode: ?ò do
      component {:name, "grave.component"}, 0, -2
      component {:unicode, ?o}, 0, 0
    end

    composite_glyph unicode: ?ó do
      component {:unicode, 0x00B4}, 0, -2
      component {:unicode, ?o}, 0, 0
    end

    composite_glyph unicode: ?ô do
      component {:name, "circumflex.component"}, 0, -2
      component {:unicode, ?o}, 0, 0
    end

    composite_glyph unicode: ?õ do
      component {:name, "tilde.component"}, 0, -2
      component {:unicode, ?o}, 0, 0
    end

    composite_glyph unicode: ?ö do
      component {:name, "dieresis.component"}, 0, -2
      component {:unicode, ?o}, 0, 0
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

    composite_glyph unicode: ?ù do
      component {:name, "grave.component"}, 0, -2
      component {:unicode, ?u}, 0, 0
    end

    composite_glyph unicode: ?ú do
      component {:unicode, 0x00B4}, 0, -2
      component {:unicode, ?u}, 0, 0
    end

    composite_glyph unicode: ?û do
      component {:name, "circumflex.component"}, 0, -2
      component {:unicode, ?u}, 0, 0
    end

    composite_glyph unicode: ?ü do
      component {:name, "dieresis.component"}, 0, -2
      component {:unicode, ?u}, 0, 0
    end

    composite_glyph unicode: ?ý do
      component {:unicode, 0x00B4}, 0, -2
      component {:unicode, ?y}, 0, 0
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

    composite_glyph unicode: ?ÿ do
      component {:name, "dieresis.component"}, 0, -2
      component {:unicode, ?y}, 0, 0
    end

    # dotless i
    # TODO: Move this glyph to Latin Extended-A module later.
    bmp_glyph unicode: 0x0131 do
      advance 8
      xmin 2
      xmax 5
      ymin 0
      ymax 7

      data """
      110
      110
      110
      110
      110
      110
      011
      """
    end
  end
end
