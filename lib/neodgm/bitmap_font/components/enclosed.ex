use PixelFont.GlyphSource

glyph_source NeoDGM.BitmapFont.Components.Enclosed do
  bmp_glyph name: "circle.enclosure" do
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

  bmp_glyph name: "parens.enclosure" do
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

  bmp_glyph name: "period.enclosure" do
    advance 16
    bounds 12..14, 0..2

    data """
    11
    11
    """
  end

  bmp_glyph name: "dblcircle.enclosure" do
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

  bmp_glyph name: "zero.period" do
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

  bmp_glyph name: "zero.period2" do
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

  bmp_glyph name: "one.period" do
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

  bmp_glyph name: "two.period" do
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

  bmp_glyph name: "two.period2" do
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

  bmp_glyph name: "three.period" do
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

  bmp_glyph name: "four.period" do
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

  bmp_glyph name: "five.period" do
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

  bmp_glyph name: "six.period" do
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

  bmp_glyph name: "seven.period" do
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

  bmp_glyph name: "eight.period" do
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

  bmp_glyph name: "nine.period" do
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

  bmp_glyph name: "zero.enclosed" do
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

  bmp_glyph name: "zero.enclosed2" do
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

  bmp_glyph name: "one.enclosed" do
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

  bmp_glyph name: "one.enclosed2" do
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

  bmp_glyph name: "two.enclosed" do
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

  bmp_glyph name: "two.enclosed2" do
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

  bmp_glyph name: "three.enclosed" do
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

  bmp_glyph name: "four.enclosed" do
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

  bmp_glyph name: "five.enclosed" do
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

  bmp_glyph name: "six.enclosed" do
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

  bmp_glyph name: "seven.enclosed" do
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

  bmp_glyph name: "eight.enclosed" do
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

  bmp_glyph name: "nine.enclosed" do
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

  bmp_glyph name: "one.dblcircle" do
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

  bmp_glyph name: "two.dblcircle" do
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

  bmp_glyph name: "three.dblcircle" do
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

  bmp_glyph name: "four.dblcircle" do
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

  bmp_glyph name: "five.dblcircle" do
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

  bmp_glyph name: "six.dblcircle" do
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

  bmp_glyph name: "seven.dblcircle" do
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

  bmp_glyph name: "eight.dblcircle" do
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

  bmp_glyph name: "nine.dblcircle" do
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

  bmp_glyph name: "ten.dblcircle" do
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

  bmp_glyph name: "A.enclosed" do
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

  bmp_glyph name: "B.enclosed" do
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

  bmp_glyph name: "C.enclosed" do
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

  bmp_glyph name: "D.enclosed" do
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

  bmp_glyph name: "E.enclosed" do
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

  bmp_glyph name: "F.enclosed" do
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

  bmp_glyph name: "G.enclosed" do
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

  bmp_glyph name: "H.enclosed" do
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

  bmp_glyph name: "I.enclosed" do
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

  bmp_glyph name: "J.enclosed" do
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

  bmp_glyph name: "K.enclosed" do
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

  bmp_glyph name: "L.enclosed" do
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

  bmp_glyph name: "M.enclosed" do
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

  bmp_glyph name: "N.enclosed" do
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

  bmp_glyph name: "O.enclosed" do
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

  bmp_glyph name: "P.enclosed" do
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

  bmp_glyph name: "Q.enclosed" do
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

  bmp_glyph name: "R.enclosed" do
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

  bmp_glyph name: "S.enclosed" do
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

  bmp_glyph name: "T.enclosed" do
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

  bmp_glyph name: "U.enclosed" do
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

  bmp_glyph name: "V.enclosed" do
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

  bmp_glyph name: "W.enclosed" do
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

  bmp_glyph name: "X.enclosed" do
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

  bmp_glyph name: "Y.enclosed" do
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

  bmp_glyph name: "Z.enclosed" do
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

  bmp_glyph name: "a.enclosed" do
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

  bmp_glyph name: "b.enclosed" do
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

  bmp_glyph name: "c.enclosed" do
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

  bmp_glyph name: "d.enclosed" do
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

  bmp_glyph name: "e.enclosed" do
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

  bmp_glyph name: "f.enclosed" do
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

  bmp_glyph name: "g.enclosed" do
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

  bmp_glyph name: "h.enclosed" do
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

  bmp_glyph name: "h.enclosed.cv01" do
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

  bmp_glyph name: "i.enclosed" do
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

  bmp_glyph name: "i.enclosed.cv02" do
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

  bmp_glyph name: "j.enclosed" do
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

  bmp_glyph name: "j.enclosed.cv03" do
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

  bmp_glyph name: "k.enclosed" do
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

  bmp_glyph name: "l.enclosed" do
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

  bmp_glyph name: "l.enclosed.cv04" do
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

  bmp_glyph name: "m.enclosed" do
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

  bmp_glyph name: "n.enclosed" do
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

  bmp_glyph name: "n.enclosed.cv05" do
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

  bmp_glyph name: "o.enclosed" do
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

  bmp_glyph name: "p.enclosed" do
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

  bmp_glyph name: "q.enclosed" do
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

  bmp_glyph name: "r.enclosed" do
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

  bmp_glyph name: "r.enclosed.cv06" do
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

  bmp_glyph name: "s.enclosed" do
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

  bmp_glyph name: "t.enclosed" do
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

  bmp_glyph name: "u.enclosed" do
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

  bmp_glyph name: "v.enclosed" do
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

  bmp_glyph name: "w.enclosed" do
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

  bmp_glyph name: "x.enclosed" do
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

  bmp_glyph name: "y.enclosed" do
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

  bmp_glyph name: "z.enclosed" do
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

  bmp_glyph name: "giyeok.enclosed" do
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

  bmp_glyph name: "nieun.enclosed" do
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

  bmp_glyph name: "digeut.enclosed" do
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

  bmp_glyph name: "rieul.enclosed" do
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

  bmp_glyph name: "mieum.enclosed" do
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

  bmp_glyph name: "bieup.enclosed" do
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

  bmp_glyph name: "siot.enclosed" do
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

  bmp_glyph name: "ieung.enclosed" do
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

  bmp_glyph name: "jieut.enclosed" do
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

  bmp_glyph name: "chieut.enclosed" do
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

  bmp_glyph name: "kieuk.enclosed" do
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

  bmp_glyph name: "tieut.enclosed" do
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

  bmp_glyph name: "pieup.enclosed" do
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

  bmp_glyph name: "hieut.enclosed" do
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

  bmp_glyph name: "jung_a.enclosed" do
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

  bmp_glyph name: "giyeok.enclosed2" do
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

  bmp_glyph name: "nieun.enclosed2" do
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

  bmp_glyph name: "digeut.enclosed2" do
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

  bmp_glyph name: "rieul.enclosed2" do
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

  bmp_glyph name: "mieum.enclosed2" do
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

  bmp_glyph name: "bieup.enclosed2" do
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

  bmp_glyph name: "siot.enclosed2" do
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

  bmp_glyph name: "ieung.enclosed2" do
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

  bmp_glyph name: "jieut.enclosed2" do
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

  bmp_glyph name: "chieut.enclosed2" do
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

  bmp_glyph name: "kieuk.enclosed2" do
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

  bmp_glyph name: "tieut.enclosed2" do
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

  bmp_glyph name: "pieup.enclosed2" do
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

  bmp_glyph name: "hieut.enclosed2" do
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
  bmp_glyph name: "uniC8FC.enclosed" do
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
  bmp_glyph name: "uniC6B0.enclosed" do
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
