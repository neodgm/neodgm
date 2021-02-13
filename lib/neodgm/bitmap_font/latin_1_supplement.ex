use PixelFont.GlyphSource

glyph_source NeoDGM.BitmapFont.Latin1Supplement do
  bmp_glyph 0xA0 do
    advance 8
    bounds 0..0, 0..0
    data ""
  end

  bmp_glyph ?¡ do
    advance 8
    bounds 3..5, -3..7

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

  bmp_glyph ?¢ do
    advance 8
    bounds 0..7, 0..10

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

  bmp_glyph ?£ do
    advance 8
    bounds 0..7, 0..10

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

  bmp_glyph ?¤ do
    advance 8
    bounds 0..7, 0..7

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

  bmp_glyph ?¥ do
    advance 8
    bounds 1..7, 0..10

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

  bmp_glyph ?¦ do
    advance 8
    bounds 3..5, -1..11

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

  bmp_glyph ?§ do
    advance 8
    bounds 1..7, -1..11

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

  composite_glyph ?¨ do
    component "dieresis.component", 0, 0
  end

  bmp_glyph ?© do
    advance 8
    bounds 0..7, -1..10

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

  bmp_glyph ?ª do
    advance 8
    bounds 1..7, 4..10

    data """
    011110
    110110
    110110
    011111
    000000
    111111
    """
  end

  bmp_glyph ?« do
    advance 8
    bounds 0..7, 1..6

    data """
    0011011
    0110110
    1101100
    0110110
    0011011
    """
  end

  bmp_glyph ?¬ do
    advance 8
    bounds 0..7, 1..6

    data """
    1111111
    0000011
    0000011
    0000011
    0000011
    """
  end

  bmp_glyph ?® do
    advance 8
    bounds 0..7, -1..10

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

  bmp_glyph ?¯ do
    advance 8
    bounds 1..6, 10..11

    data """
    11111
    """
  end

  bmp_glyph ?° do
    advance 8
    bounds 2..6, 7..11

    data """
    0110
    1001
    1001
    0110
    """
  end

  bmp_glyph ?± do
    advance 8
    bounds 1..7, 0..7

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

  composite_glyph ?² do
    component 32, 0, 0, flags: [:use_my_metrics]
    component "two.fraction", 1, 6
  end

  composite_glyph ?³ do
    component 32, 0, 0, flags: [:use_my_metrics]
    component "three.fraction", 1, 6
  end

  bmp_glyph ?´ do
    advance 8
    bounds 2..5, 10..12

    data """
    011
    110
    """
  end

  bmp_glyph ?µ do
    advance 8
    bounds 0..7, -3..7

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

  bmp_glyph ?¶ do
    advance 8
    bounds 0..7, -3..7

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

  bmp_glyph ?· do
    advance 8
    bounds 3..5, 3..5

    data """
    11
    11
    """
  end

  bmp_glyph ?¸ do
    advance 8
    bounds 2..6, -3..0

    data """
    0110
    0011
    1110
    """
  end

  composite_glyph ?¹ do
    component 32, 0, 0, flags: [:use_my_metrics]
    component "one.fraction", 2, 6
  end

  bmp_glyph ?º do
    advance 8
    bounds 1..7, 4..10

    data """
    011110
    110011
    110011
    011110
    000000
    111111
    """
  end

  bmp_glyph ?» do
    advance 8
    bounds 0..7, 1..6

    data """
    1101100
    0110110
    0011011
    0110110
    1101100
    """
  end

  composite_glyph 0x00BC do
    component ?-, 0, 0, flags: [:use_my_metrics]
    component "one.fraction", 1, 6
    component "four.fraction", 1, -2
  end

  composite_glyph 0x00BD do
    component ?-, 0, 0, flags: [:use_my_metrics]
    component "one.fraction", 1, 6
    component "two.fraction", 1, -2
  end

  composite_glyph 0x00BE do
    component ?-, 0, 0, flags: [:use_my_metrics]
    component "three.fraction", 1, 6
    component "four.fraction", 1, -2
  end

  bmp_glyph ?¿ do
    advance 8
    bounds 0..7, -2..8

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

  composite_glyph ?À do
    component "grave.component", 0, 0
    component "A.short", 0, 0
  end

  composite_glyph ?Á do
    component 0x00B4, 0, 0
    component "A.short", 0, 0
  end

  composite_glyph ?Â do
    component "circumflex.component", 0, 0
    component "A.short", 0, 0
  end

  composite_glyph ?Ã do
    component "tilde.component", 0, 0
    component "A.short", 0, 0
  end

  composite_glyph ?Ä do
    component "dieresis.component", 0, 0
    component "A.short", 0, 0
  end

  composite_glyph ?Å do
    component "ring.component", 0, 0
    component "A.short", 0, 0
  end

  bmp_glyph ?Æ do
    advance 8
    bounds 0..7, 0..10

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

  composite_glyph ?Ç do
    component 0x00B8, 0, 0
    component ?C, 0, 0
  end

  composite_glyph ?È do
    component "grave.component", 0, 0
    component "E.short", 0, 0
  end

  composite_glyph ?É do
    component 0x00B4, 0, 0
    component "E.short", 0, 0
  end

  composite_glyph ?Ê do
    component "circumflex.component", 0, 0
    component "E.short", 0, 0
  end

  composite_glyph ?Ë do
    component "dieresis.component", 0, 0
    component "E.short", 0, 0
  end

  composite_glyph ?Ì do
    component "grave.component", 0, 0
    component "I.short", 0, 0, flags: [:use_my_metrics]
  end

  composite_glyph ?Í do
    component 0x00B4, 0, 0
    component "I.short", 0, 0, flags: [:use_my_metrics]
  end

  composite_glyph ?Î do
    component "circumflex.component", 0, 0
    component "I.short", 0, 0, flags: [:use_my_metrics]
  end

  composite_glyph ?Ï do
    component "dieresis.component.i", 0, 0
    component "I.short", 0, 0, flags: [:use_my_metrics]
  end

  bmp_glyph ?Ð do
    advance 8
    bounds 0..7, 0..10

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

  composite_glyph ?Ñ do
    component "tilde.component", 0, 0
    component "N.short", 0, 0
  end

  composite_glyph ?Ò do
    component "grave.component", 0, 0
    component "O.short", 0, 0
  end

  composite_glyph ?Ó do
    component 0x00B4, 0, 0
    component "O.short", 0, 0
  end

  composite_glyph ?Ô do
    component "circumflex.component", 0, 0
    component "O.short", 0, 0
  end

  composite_glyph ?Õ do
    component "tilde.component", 0, 0
    component "O.short", 0, 0
  end

  composite_glyph ?Ö do
    component "dieresis.component", 0, 0
    component "O.short", 0, 0
  end

  bmp_glyph ?× do
    advance 8
    bounds 1..7, 1..7

    data """
    100001
    010010
    001100
    001100
    010010
    100001
    """
  end

  bmp_glyph ?Ø do
    advance 8
    bounds 0..7, -2..11

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

  composite_glyph ?Ù do
    component "grave.component", 0, 0
    component "U.short", 0, 0
  end

  composite_glyph ?Ú do
    component 0x00B4, 0, 0
    component "U.short", 0, 0
  end

  composite_glyph ?Û do
    component "circumflex.component", 0, 0
    component "U.short", 0, 0
  end

  composite_glyph ?Ü do
    component "dieresis.component", 0, 0
    component "U.short", 0, 0
  end

  composite_glyph ?Ý do
    component 0x00B4, 1, 0
    component "Y.short", 0, 0, flags: [:use_my_metrics]
  end

  bmp_glyph ?Þ do
    advance 8
    bounds 0..7, 0..10

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

  bmp_glyph ?ß do
    advance 8
    bounds 0..7, 0..10

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

  composite_glyph ?à do
    component "grave.component", 0, -2
    component ?a, 0, 0
  end

  composite_glyph ?á do
    component 0x00B4, 0, -2
    component ?a, 0, 0
  end

  composite_glyph ?â do
    component "circumflex.component", 0, -2
    component ?a, 0, 0
  end

  composite_glyph ?ã do
    component "tilde.component", 0, -2
    component ?a, 0, 0
  end

  composite_glyph ?ä do
    component "dieresis.component", 0, -2
    component ?a, 0, 0
  end

  composite_glyph ?å do
    component "ring.component", 0, -1
    component ?a, 0, 0
  end

  bmp_glyph ?æ do
    advance 8
    bounds 0..8, 0..7

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

  composite_glyph ?ç do
    component 0x00B8, 0, 0
    component ?c, 0, 0
  end

  composite_glyph ?è do
    component "grave.component", 0, -2
    component ?e, 0, 0
  end

  composite_glyph ?é do
    component 0x00B4, 0, -2
    component ?e, 0, 0
  end

  composite_glyph ?ê do
    component "circumflex.component", 0, -2
    component ?e, 0, 0
  end

  composite_glyph ?ë do
    component "dieresis.component", 0, -2
    component ?e, 0, 0
  end

  composite_glyph ?ì do
    component "grave.component", 0, -2
    component 0x0131, 0, 0, flags: [:use_my_metrics]
  end

  composite_glyph ?í do
    component 0x00B4, 1, -2
    component 0x0131, 0, 0, flags: [:use_my_metrics]
  end

  composite_glyph ?î do
    component "circumflex.component", 0, -2
    component 0x0131, 0, 0, flags: [:use_my_metrics]
  end

  composite_glyph ?ï do
    component "dieresis.component.i", 0, -2
    component 0x0131, 0, 0, flags: [:use_my_metrics]
  end

  composite_glyph "igrave.cv02" do
    component "grave.component", -1, -2
    component "dotlessi.cv02", 0, 0, flags: [:use_my_metrics]
  end

  composite_glyph "iacute.cv02" do
    component 0x00B4, 0, -2
    component "dotlessi.cv02", 0, 0, flags: [:use_my_metrics]
  end

  composite_glyph "icircumflex.cv02" do
    component "circumflex.component", 0, -2
    component "dotlessi.cv02", 0, 0, flags: [:use_my_metrics]
  end

  composite_glyph "idieresis.cv02" do
    component "dieresis.component.i", 0, -2
    component "dotlessi.cv02", 1, 0, flags: [:use_my_metrics]
  end

  bmp_glyph ?ð do
    advance 8
    bounds 0..7, 0..11

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

  composite_glyph ?ñ do
    component "tilde.component", 0, -2
    component ?n, 0, 0
  end

  composite_glyph "ntilde.cv05" do
    component "tilde.component", 0, -2
    component "n.cv05", 0, 0
  end

  composite_glyph ?ò do
    component "grave.component", 0, -2
    component ?o, 0, 0
  end

  composite_glyph ?ó do
    component 0x00B4, 0, -2
    component ?o, 0, 0
  end

  composite_glyph ?ô do
    component "circumflex.component", 0, -2
    component ?o, 0, 0
  end

  composite_glyph ?õ do
    component "tilde.component", 0, -2
    component ?o, 0, 0
  end

  composite_glyph ?ö do
    component "dieresis.component", 0, -2
    component ?o, 0, 0
  end

  bmp_glyph ?÷ do
    advance 8
    bounds 1..7, 2..7

    data """
    001100
    000000
    111111
    000000
    001100
    """
  end

  bmp_glyph ?ø do
    advance 8
    bounds 0..7, -2..9

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

  composite_glyph ?ù do
    component "grave.component", 0, -2
    component ?u, 0, 0
  end

  composite_glyph ?ú do
    component 0x00B4, 0, -2
    component ?u, 0, 0
  end

  composite_glyph ?û do
    component "circumflex.component", 0, -2
    component ?u, 0, 0
  end

  composite_glyph ?ü do
    component "dieresis.component", 0, -2
    component ?u, 0, 0
  end

  composite_glyph "ugrave.cv08" do
    component "grave.component", 0, -2
    component "u.cv08", 0, 0
  end

  composite_glyph "uacute.cv08" do
    component 0x00B4, 0, -2
    component "u.cv08", 0, 0
  end

  composite_glyph "ucircumflex.cv08" do
    component "circumflex.component", 0, -2
    component "u.cv08", 0, 0
  end

  composite_glyph "udieresis.cv08" do
    component "dieresis.component", 0, -2
    component "u.cv08", 0, 0
  end

  composite_glyph ?ý do
    component 0x00B4, 0, -2
    component ?y, 0, 0
  end

  bmp_glyph ?þ do
    advance 8
    bounds 0..7, -3..10

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

  composite_glyph ?ÿ do
    component "dieresis.component", 0, -2
    component ?y, 0, 0
  end

  # dotless i
  # TODO: Move this glyph to Latin Extended-A module later.
  bmp_glyph 0x0131 do
    advance 8
    bounds 1..7, 0..7

    data """
    111100
    001100
    001100
    001100
    001100
    001100
    000111
    """
  end

  bmp_glyph "dotlessi.cv02" do
    advance 8
    bounds 2..5, 0..7

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
