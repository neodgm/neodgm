use PixelFont.GlyphSource

glyph_source NeoDGM.BitmapFont.Components.Enclosed do
  bmp_glyph "circle.enclosure" do
    advance 16
    bounds 1..15, -2..12

    data """
    00011111111000
    00100000000100
    01000000000010
    10000000000001
    10000000000001
    10000000000001
    10000000000001
    10000000000001
    10000000000001
    10000000000001
    10000000000001
    01000000000010
    00100000000100
    00011111111000
    """
  end

  bmp_glyph "parens.enclosure" do
    advance 16
    bounds 1..15, -2..12

    data """
    00100000000100
    01000000000010
    10000000000001
    10000000000001
    10000000000001
    10000000000001
    10000000000001
    10000000000001
    10000000000001
    10000000000001
    10000000000001
    10000000000001
    01000000000010
    00100000000100
    """
  end

  bmp_glyph "period.enclosure" do
    advance 16
    bounds 12..14, 0..2

    data """
    11
    11
    """
  end

  bmp_glyph "dblcircle.enclosure" do
    advance 16
    bounds 1..15, -2..12

    data """
    00011111111000
    00100000000100
    01011111111010
    10100000000101
    10100000000101
    10100000000101
    10100000000101
    10100000000101
    10100000000101
    10100000000101
    10100000000101
    01011111111010
    00100000000100
    00011111111000
    """
  end

  bmp_glyph "zero.period" do
    advance 16
    bounds 5..11, 0..10

    data """
    011110
    110011
    110011
    110111
    111111
    111011
    110011
    110011
    110011
    011110
    """
  end

  bmp_glyph "zero.period2" do
    advance 16
    bounds 8..13, 0..10

    data """
    01110
    11011
    11011
    11011
    11011
    11011
    11011
    11011
    11011
    01110
    """
  end

  bmp_glyph "one.period" do
    advance 16
    bounds 3..6, 0..10

    data """
    011
    111
    011
    011
    011
    011
    011
    011
    011
    011
    """
  end

  bmp_glyph "two.period" do
    advance 16
    bounds 5..11, 0..10

    data """
    111110
    000011
    000011
    000011
    011110
    110000
    110000
    110000
    110000
    111111
    """
  end

  bmp_glyph "two.period2" do
    advance 16
    bounds 3..7, 0..10

    data """
    1110
    0011
    0011
    0011
    0110
    1100
    1100
    1100
    1100
    1111
    """
  end

  bmp_glyph "three.period" do
    advance 16
    bounds 5..11, 0..10

    data """
    111110
    000011
    000011
    000011
    011110
    000011
    000011
    000011
    000011
    111110
    """
  end

  bmp_glyph "four.period" do
    advance 16
    bounds 5..11, 0..10

    data """
    001110
    011110
    110110
    110110
    110110
    111111
    000110
    000110
    000110
    000110
    """
  end

  bmp_glyph "five.period" do
    advance 16
    bounds 5..11, 0..10

    data """
    111111
    110000
    110000
    110000
    111110
    000011
    000011
    000011
    000011
    111110
    """
  end

  bmp_glyph "six.period" do
    advance 16
    bounds 5..11, 0..10

    data """
    011110
    110000
    110000
    110000
    111110
    110011
    110011
    110011
    110011
    011110
    """
  end

  bmp_glyph "seven.period" do
    advance 16
    bounds 5..11, 0..10

    data """
    111111
    000011
    000011
    000011
    000110
    001100
    001100
    001100
    001100
    001100
    """
  end

  bmp_glyph "eight.period" do
    advance 16
    bounds 5..11, 0..10

    data """
    011110
    110011
    110011
    110011
    011110
    110011
    110011
    110011
    110011
    011110
    """
  end

  bmp_glyph "nine.period" do
    advance 16
    bounds 5..11, 0..10

    data """
    011110
    110011
    110011
    110011
    011111
    000011
    000011
    000011
    000011
    011110
    """
  end

  bmp_glyph "zero.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    011110
    110011
    110111
    111111
    111011
    110011
    110011
    011110
    """
  end

  bmp_glyph "zero.enclosed2" do
    advance 5
    bounds 0..5, 0..8

    data """
    01110
    11011
    11011
    11011
    11011
    11011
    11011
    01110
    """
  end

  bmp_glyph "one.enclosed" do
    advance 4
    bounds 0..4, 0..8

    data """
    0011
    0111
    1111
    0011
    0011
    0011
    0011
    0011
    """
  end

  bmp_glyph "one.enclosed2" do
    advance 3
    bounds 0..3, 0..8

    data """
    011
    111
    011
    011
    011
    011
    011
    011
    """
  end

  bmp_glyph "two.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    111110
    000011
    000011
    011110
    110000
    110000
    110000
    111111
    """
  end

  bmp_glyph "two.enclosed2" do
    advance 4
    bounds 0..4, 0..8

    data """
    1110
    0011
    0011
    0110
    1100
    1100
    1100
    1111
    """
  end

  bmp_glyph "three.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    111110
    000011
    000011
    011110
    000011
    000011
    000011
    111110
    """
  end

  bmp_glyph "four.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    001110
    011110
    110110
    110110
    111111
    000110
    000110
    000110
    """
  end

  bmp_glyph "five.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    111111
    110000
    110000
    111110
    000011
    000011
    000011
    111110
    """
  end

  bmp_glyph "six.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    011110
    110000
    110000
    111110
    110011
    110011
    110011
    011110
    """
  end

  bmp_glyph "seven.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    111111
    000011
    000011
    000110
    001100
    001100
    001100
    001100
    """
  end

  bmp_glyph "eight.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    011110
    110011
    110011
    011110
    110011
    110011
    110011
    011110
    """
  end

  bmp_glyph "nine.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    011110
    110011
    110011
    011111
    000011
    000011
    000011
    011110
    """
  end

  bmp_glyph "one.dblcircle" do
    advance 6
    bounds 1..4, 0..6

    data """
    011
    111
    011
    011
    011
    011
    """
  end

  bmp_glyph "two.dblcircle" do
    advance 6
    bounds 0..6, 0..6

    data """
    111110
    000011
    011110
    110000
    110000
    111111
    """
  end

  bmp_glyph "three.dblcircle" do
    advance 6
    bounds 0..6, 0..6

    data """
    111110
    000011
    011110
    000011
    000011
    111110
    """
  end

  bmp_glyph "four.dblcircle" do
    advance 6
    bounds 0..6, 0..6

    data """
    011110
    110110
    110110
    111111
    000110
    000110
    """
  end

  bmp_glyph "five.dblcircle" do
    advance 6
    bounds 0..6, 0..6

    data """
    111111
    110000
    111110
    000011
    000011
    111110
    """
  end

  bmp_glyph "six.dblcircle" do
    advance 6
    bounds 0..6, 0..6

    data """
    011110
    110000
    111110
    110011
    110011
    011110
    """
  end

  bmp_glyph "seven.dblcircle" do
    advance 6
    bounds 0..6, 0..6

    data """
    111111
    000011
    000110
    001100
    001100
    001100
    """
  end

  bmp_glyph "eight.dblcircle" do
    advance 6
    bounds 0..6, 0..6

    data """
    011110
    110011
    011110
    110011
    110011
    011110
    """
  end

  bmp_glyph "nine.dblcircle" do
    advance 6
    bounds 0..6, 0..6

    data """
    011110
    110011
    011111
    000011
    000011
    011110
    """
  end

  bmp_glyph "ten.dblcircle" do
    advance 6
    bounds 0..6, 0..6

    data """
    010010
    110101
    010101
    010101
    010101
    010010
    """
  end

  bmp_glyph "A.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    011110
    110011
    110011
    111111
    110011
    110011
    110011
    110011
    """
  end

  bmp_glyph "B.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    111110
    110011
    110011
    111110
    110011
    110011
    110011
    111110
    """
  end

  bmp_glyph "C.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    011110
    110011
    110000
    110000
    110000
    110000
    110011
    011110
    """
  end

  bmp_glyph "D.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    111110
    110011
    110011
    110011
    110011
    110011
    110011
    111110
    """
  end

  bmp_glyph "E.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    011111
    110000
    110000
    111110
    110000
    110000
    110000
    011111
    """
  end

  bmp_glyph "F.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    011111
    110000
    110000
    111110
    110000
    110000
    110000
    110000
    """
  end

  bmp_glyph "G.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    011110
    110011
    110000
    110111
    110011
    110011
    110011
    011111
    """
  end

  bmp_glyph "H.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    110011
    110011
    110011
    111111
    110011
    110011
    110011
    110011
    """
  end

  bmp_glyph "I.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    111111
    001100
    001100
    001100
    001100
    001100
    001100
    111111
    """
  end

  bmp_glyph "J.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    001111
    000110
    000110
    000110
    000110
    000110
    110110
    011100
    """
  end

  bmp_glyph "K.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    110011
    110011
    110110
    111100
    110110
    110011
    110011
    110011
    """
  end

  bmp_glyph "L.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
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

  bmp_glyph "M.enclosed" do
    advance 7
    bounds -1..7, 0..8

    data """
    11111110
    11011011
    11011011
    11011011
    11011011
    11011011
    11011011
    11011011
    """
  end

  bmp_glyph "N.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    111110
    110011
    110011
    110011
    110011
    110011
    110011
    110011
    """
  end

  bmp_glyph "O.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    011110
    110011
    110011
    110011
    110011
    110011
    110011
    011110
    """
  end

  bmp_glyph "P.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    111110
    110011
    110011
    111110
    110000
    110000
    110000
    110000
    """
  end

  bmp_glyph "Q.enclosed" do
    advance 6
    bounds 0..6, -1..8

    data """
    011110
    110011
    110011
    110011
    110011
    110011
    110011
    011110
    000011
    """
  end

  bmp_glyph "R.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    111110
    110011
    110011
    111110
    110011
    110011
    110011
    110011
    """
  end

  bmp_glyph "S.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    011110
    110011
    110000
    011110
    000011
    000011
    110011
    011110
    """
  end

  bmp_glyph "T.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    111111
    001100
    001100
    001100
    001100
    001100
    001100
    001100
    """
  end

  bmp_glyph "U.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    110011
    110011
    110011
    110011
    110011
    110011
    110011
    011111
    """
  end

  bmp_glyph "U.enclosed.cv07" do
    advance 6
    bounds 0..6, 0..8

    data """
    110011
    110011
    110011
    110011
    110011
    110011
    110011
    011110
    """
  end

  bmp_glyph "V.enclosed" do
    advance 6
    bounds -1..6, 0..8

    data """
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    0110110
    0011100
    """
  end

  bmp_glyph "W.enclosed" do
    advance 7
    bounds -1..7, 0..8

    data """
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

  bmp_glyph "X.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    110011
    110011
    011110
    001100
    011110
    110011
    110011
    110011
    """
  end

  bmp_glyph "Y.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
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

  bmp_glyph "Z.enclosed" do
    advance 6
    bounds 0..6, 0..8

    data """
    111111
    000011
    000110
    001100
    011000
    110000
    110000
    111111
    """
  end

  bmp_glyph "a.enclosed" do
    advance 6
    bounds 0..6, 0..6

    data """
    111110
    000011
    011111
    110011
    110011
    011111
    """
  end

  bmp_glyph "b.enclosed" do
    advance 6
    bounds 0..6, 0..9

    data """
    110000
    110000
    110000
    111110
    110011
    110011
    110011
    110011
    111110
    """
  end

  bmp_glyph "c.enclosed" do
    advance 6
    bounds 0..6, 0..6

    data """
    011110
    110011
    110000
    110000
    110011
    011110
    """
  end

  bmp_glyph "d.enclosed" do
    advance 6
    bounds 0..6, 0..9

    data """
    000011
    000011
    000011
    011111
    110011
    110011
    110011
    110011
    011111
    """
  end

  bmp_glyph "e.enclosed" do
    advance 6
    bounds 0..6, 0..6

    data """
    011110
    110011
    111111
    110000
    110011
    011110
    """
  end

  bmp_glyph "f.enclosed" do
    advance 6
    bounds 0..6, 0..9

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
    """
  end

  bmp_glyph "g.enclosed" do
    advance 6
    bounds 0..6, -1..8

    data """
    011111
    110011
    110011
    110011
    110011
    011111
    000011
    110011
    011110
    """
  end

  bmp_glyph "h.enclosed" do
    advance 6
    bounds 0..6, 0..9

    data """
    110000
    110000
    110000
    110110
    111011
    110011
    110011
    110011
    110011
    """
  end

  bmp_glyph "h.enclosed.cv01" do
    advance 6
    bounds 0..6, 0..9

    data """
    110000
    110000
    110000
    111110
    110011
    110011
    110011
    110011
    110011
    """
  end

  bmp_glyph "i.enclosed" do
    advance 5
    bounds 1..5, 0..9

    data """
    0110
    0110
    0000
    1110
    0110
    0110
    0110
    0110
    0011
    """
  end

  bmp_glyph "i.enclosed.cv02" do
    advance 4
    bounds 1..4, 0..9

    data """
    110
    110
    000
    110
    110
    110
    110
    110
    011
    """
  end

  bmp_glyph "j.enclosed" do
    advance 4
    bounds 1..4, -1..9

    data """
    011
    011
    000
    111
    011
    011
    011
    011
    011
    110
    """
  end

  bmp_glyph "j.enclosed.cv03" do
    advance 4
    bounds 1..4, -1..9

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
    110
    """
  end

  bmp_glyph "k.enclosed" do
    advance 6
    bounds 0..6, 0..9

    data """
    110000
    110000
    110000
    110011
    110110
    111100
    110110
    110011
    110011
    """
  end

  bmp_glyph "l.enclosed" do
    advance 5
    bounds 1..5, 0..9

    data """
    1110
    0110
    0110
    0110
    0110
    0110
    0110
    0110
    0011
    """
  end

  bmp_glyph "l.enclosed.cv04" do
    advance 4
    bounds 1..4, 0..9

    data """
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

  bmp_glyph "m.enclosed" do
    advance 7
    bounds -1..7, 0..6

    data """
    11111110
    11011011
    11011011
    11011011
    11011011
    11011011
    """
  end

  bmp_glyph "n.enclosed" do
    advance 6
    bounds 0..6, 0..6

    data """
    110110
    111011
    110011
    110011
    110011
    110011
    """
  end

  bmp_glyph "n.enclosed.cv05" do
    advance 6
    bounds 0..6, 0..6

    data """
    111110
    110011
    110011
    110011
    110011
    110011
    """
  end

  bmp_glyph "o.enclosed" do
    advance 6
    bounds 0..6, 0..6

    data """
    011110
    110011
    110011
    110011
    110011
    011110
    """
  end

  bmp_glyph "p.enclosed" do
    advance 6
    bounds 0..6, -1..8

    data """
    111110
    110011
    110011
    110011
    110011
    111110
    110000
    110000
    110000
    """
  end

  bmp_glyph "q.enclosed" do
    advance 6
    bounds 0..6, -1..8

    data """
    011111
    110011
    110011
    110011
    110011
    011111
    000011
    000011
    000011
    """
  end

  bmp_glyph "r.enclosed" do
    advance 6
    bounds 0..6, 0..6

    data """
    110110
    111011
    110011
    110000
    110000
    110000
    """
  end

  bmp_glyph "r.enclosed.cv06" do
    advance 6
    bounds 0..6, 0..6

    data """
    111110
    110011
    110000
    110000
    110000
    110000
    """
  end

  bmp_glyph "s.enclosed" do
    advance 6
    bounds 0..6, 0..6

    data """
    011111
    110000
    011110
    000011
    000011
    111110
    """
  end

  bmp_glyph "t.enclosed" do
    advance 5
    bounds 0..5, 0..9

    data """
    01100
    01100
    01100
    11111
    01100
    01100
    01100
    01100
    00111
    """
  end

  bmp_glyph "u.enclosed" do
    advance 6
    bounds 0..6, 0..6

    data """
    110011
    110011
    110011
    110011
    110111
    011011
    """
  end

  bmp_glyph "u.enclosed.cv08" do
    advance 6
    bounds 0..6, 0..6

    data """
    110011
    110011
    110011
    110011
    110011
    011110
    """
  end

  bmp_glyph "v.enclosed" do
    advance 6
    bounds -1..6, 0..6

    data """
    1100011
    1100011
    1100011
    1100011
    0110110
    0011100
    """
  end

  bmp_glyph "w.enclosed" do
    advance 7
    bounds -1..7, 0..6

    data """
    11011011
    11011011
    11011011
    11011011
    11011011
    01111110
    """
  end

  bmp_glyph "x.enclosed" do
    advance 6
    bounds 0..6, 0..7

    data """
    110011
    110011
    011110
    001100
    011110
    110011
    110011
    """
  end

  bmp_glyph "y.enclosed" do
    advance 6
    bounds 0..6, -1..8

    data """
    110011
    110011
    110011
    110011
    110011
    011111
    000011
    000011
    011110
    """
  end

  bmp_glyph "z.enclosed" do
    advance 6
    bounds 0..6, 0..6

    data """
    111111
    000011
    001110
    011000
    110000
    111111
    """
  end

  bmp_glyph "giyeok.enclosed" do
    advance 16
    bounds 4..12, 1..9

    data """
    11111111
    00000011
    00000011
    00000011
    00000011
    00000011
    00000110
    00001100
    """
  end

  bmp_glyph "nieun.enclosed" do
    advance 16
    bounds 4..12, 1..9

    data """
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

  bmp_glyph "digeut.enclosed" do
    advance 16
    bounds 4..12, 1..9

    data """
    11111111
    11000000
    11000000
    11000000
    11000000
    11000000
    11000011
    01111110
    """
  end

  bmp_glyph "rieul.enclosed" do
    advance 16
    bounds 4..12, 1..9

    data """
    11111111
    00000011
    00000011
    11111111
    11000000
    11000000
    11000011
    01111110
    """
  end

  bmp_glyph "mieum.enclosed" do
    advance 16
    bounds 4..12, 1..9

    data """
    11111111
    11000011
    11000011
    11000011
    11000011
    11000011
    11000011
    01111110
    """
  end

  bmp_glyph "bieup.enclosed" do
    advance 16
    bounds 4..12, 1..9

    data """
    11000011
    11000011
    11000011
    11111111
    11000011
    11000011
    11000011
    01111110
    """
  end

  bmp_glyph "siot.enclosed" do
    advance 16
    bounds 4..12, 1..9

    data """
    00011000
    00011000
    00011000
    00011000
    00011000
    00111100
    01100110
    11000011
    """
  end

  bmp_glyph "ieung.enclosed" do
    advance 16
    bounds 4..12, 1..9

    data """
    00111100
    01100110
    11000011
    11000011
    11000011
    11000011
    01100110
    00111100
    """
  end

  bmp_glyph "jieut.enclosed" do
    advance 16
    bounds 4..12, 1..9

    data """
    11111111
    00011000
    00011000
    00011000
    00011000
    00111100
    01100110
    11000011
    """
  end

  bmp_glyph "chieut.enclosed" do
    advance 16
    bounds 4..12, 1..10

    data """
    00011000
    11111111
    00011000
    00011000
    00011000
    00011000
    00111100
    01100110
    11000011
    """
  end

  bmp_glyph "kieuk.enclosed" do
    advance 16
    bounds 4..12, 1..9

    data """
    11111111
    00000011
    00000011
    11111111
    00000011
    00000011
    00000110
    00001100
    """
  end

  bmp_glyph "tieut.enclosed" do
    advance 16
    bounds 4..12, 1..9

    data """
    11111111
    11000000
    11000000
    11111111
    11000000
    11000000
    11000011
    01111110
    """
  end

  bmp_glyph "pieup.enclosed" do
    advance 16
    bounds 4..12, 1..9

    data """
    11111111
    01100110
    01100110
    01100110
    01100110
    01100110
    01100110
    11111111
    """
  end

  bmp_glyph "hieut.enclosed" do
    advance 16
    bounds 4..12, 1..10

    data """
    00011000
    11111111
    00111100
    01100110
    11000011
    11000011
    11000011
    01100110
    00111100
    """
  end

  bmp_glyph "jung_a.enclosed" do
    advance 16
    bounds 10..13, 0..10

    data """
    110
    110
    110
    110
    111
    110
    110
    110
    110
    110
    """
  end

  bmp_glyph "giyeok.enclosed2" do
    advance 16
    bounds 3..8, 1..9

    data """
    11111
    00011
    00011
    00011
    00011
    00011
    00110
    01100
    """
  end

  bmp_glyph "nieun.enclosed2" do
    advance 16
    bounds 3..9, 1..9

    data """
    110000
    110000
    110000
    110000
    110000
    110000
    110011
    011110
    """
  end

  bmp_glyph "digeut.enclosed2" do
    advance 16
    bounds 3..9, 1..9

    data """
    111111
    110000
    110000
    110000
    110000
    110000
    110011
    011110
    """
  end

  bmp_glyph "rieul.enclosed2" do
    advance 16
    bounds 3..9, 1..9

    data """
    111111
    000011
    000011
    111111
    110000
    110000
    110011
    011110
    """
  end

  bmp_glyph "mieum.enclosed2" do
    advance 16
    bounds 3..9, 1..9

    data """
    111111
    110011
    110011
    110011
    110011
    110011
    110011
    011110
    """
  end

  bmp_glyph "bieup.enclosed2" do
    advance 16
    bounds 3..9, 1..9

    data """
    110011
    110011
    110011
    111111
    110011
    110011
    110011
    011110
    """
  end

  bmp_glyph "siot.enclosed2" do
    advance 16
    bounds 3..9, 1..9

    data """
    001100
    001100
    001100
    001100
    001100
    001100
    011110
    110011
    """
  end

  bmp_glyph "ieung.enclosed2" do
    advance 16
    bounds 3..9, 1..9

    data """
    011110
    110011
    110011
    110011
    110011
    110011
    110011
    011110
    """
  end

  bmp_glyph "jieut.enclosed2" do
    advance 16
    bounds 3..9, 1..9

    data """
    111111
    001100
    001100
    001100
    001100
    001100
    011110
    110011
    """
  end

  bmp_glyph "chieut.enclosed2" do
    advance 16
    bounds 3..9, 1..10

    data """
    001100
    111111
    001100
    001100
    001100
    001100
    001100
    011110
    110011
    """
  end

  bmp_glyph "kieuk.enclosed2" do
    advance 16
    bounds 3..8, 1..9

    data """
    11111
    00011
    00011
    11111
    00011
    00011
    00110
    01100
    """
  end

  bmp_glyph "tieut.enclosed2" do
    advance 16
    bounds 3..9, 1..9

    data """
    111111
    110000
    110000
    111111
    110000
    110000
    110011
    011110
    """
  end

  bmp_glyph "pieup.enclosed2" do
    advance 16
    bounds 2..9, 1..9

    data """
    1111111
    0110110
    0110110
    0110110
    0110110
    0110110
    0110110
    1111111
    """
  end

  bmp_glyph "hieut.enclosed2" do
    advance 16
    bounds 3..9, 1..10

    data """
    001100
    111111
    000000
    011110
    110011
    110011
    110011
    110011
    011110
    """
  end

  # Hangul Syllable Jieut-U
  bmp_glyph "uniC8FC.enclosed" do
    advance 16
    bounds 3..13, 0..9

    data """
    0111111110
    0000110000
    0001111000
    0111001110
    0000000000
    1111111111
    0000110000
    0000110000
    0000110000
    """
  end

  # Hangul Syllable Ieung-U
  bmp_glyph "uniC6B0.enclosed" do
    advance 16
    bounds 3..13, 0..9

    data """
    0011111100
    0110000110
    0110000110
    0011111100
    0000000000
    1111111111
    0000110000
    0000110000
    0000110000
    """
  end
end
