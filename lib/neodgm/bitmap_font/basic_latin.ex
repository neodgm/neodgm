use PixelFont.GlyphSource

glyph_source NeoDGM.BitmapFont.BasicLatin do
  bmp_glyph 0 do
    advance 0
    bounds 0..0, 0..0
    data ""
  end

  bmp_glyph ?\s do
    advance 8
    bounds 0..0, 0..0
    data ""
  end

  bmp_glyph ?! do
    advance 8
    bounds 3..5, 0..10

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

  bmp_glyph ?" do
    advance 8
    bounds 1..7, 7..11

    data """
    110011
    110011
    110011
    010010
    """
  end

  bmp_glyph ?# do
    advance 8
    bounds 0..7, 0..9

    data """
    0110110
    0110110
    1111111
    0110110
    0110110
    0110110
    1111111
    0110110
    0110110
    """
  end

  bmp_glyph ?$ do
    advance 8
    bounds 0..7, -1..11

    data """
    0001000
    0001000
    0111110
    1101011
    1101000
    0111110
    0001011
    0001011
    1101011
    0111110
    0001000
    0001000
    """
  end

  bmp_glyph ?% do
    advance 8
    bounds 0..7, 0..8

    data """
    1100001
    1100011
    0000110
    0001100
    0011000
    0110000
    1100011
    1000011
    """
  end

  bmp_glyph ?& do
    advance 8
    bounds 0..7, 0..10

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

  bmp_glyph ?' do
    advance 8
    bounds 3..5, 7..11

    data """
    11
    11
    11
    10
    """
  end

  bmp_glyph ?( do
    advance 8
    bounds 2..6, -2..11

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

  bmp_glyph ?) do
    advance 8
    bounds 2..6, -2..11

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

  bmp_glyph ?* do
    advance 8
    bounds 0..8, 2..7

    data """
    01100110
    00111100
    11111111
    00111100
    01100110
    """
  end

  bmp_glyph ?+ do
    advance 8
    bounds 1..7, 2..7

    data """
    001100
    001100
    111111
    001100
    001100
    """
  end

  bmp_glyph ?, do
    advance 8
    bounds 2..5, -1..3

    data """
    011
    011
    011
    110
    """
  end

  bmp_glyph ?- do
    advance 8
    bounds 0..7, 4..5

    data """
    1111111
    """
  end

  bmp_glyph "hyphen.left1px" do
    advance 8
    bounds 1..7, 4..5

    data """
    111111
    """
  end

  bmp_glyph ?. do
    advance 8
    bounds 3..5, 0..2

    data """
    11
    11
    """
  end

  bmp_glyph ?/ do
    advance 8
    bounds 0..7, 0..8

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

  # Slashed zero (default)
  bmp_glyph ?0 do
    advance 8
    bounds 0..7, 0..10

    data """
    0111110
    1100011
    1100011
    1100111
    1101111
    1111011
    1110011
    1100011
    1100011
    0111110
    """
  end

  # cv08-0: Empty zero, which looks exactly like Latin captal letter O
  bmp_glyph "zero.cv08.1" do
    advance 8
    bounds 0..7, 0..10

    data """
    0111110
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

  # cv08-1: Dotted zero
  bmp_glyph "zero.cv08.2" do
    advance 8
    bounds 0..7, 0..10

    data """
    0111110
    1100011
    1100011
    1100011
    1101011
    1101011
    1100011
    1100011
    1100011
    0111110
    """
  end

  # cv08-2: Reverse-slashed zero
  bmp_glyph "zero.cv08.3" do
    advance 8
    bounds 0..7, 0..10

    data """
    0111110
    1100011
    1100011
    1110011
    1111011
    1101111
    1100111
    1100011
    1100011
    0111110
    """
  end

  # cv08-3: Slashed zero, more rounded
  bmp_glyph "zero.cv08.4" do
    advance 8
    bounds 0..7, 0..10

    data """
    0011100
    0110110
    1100011
    1100111
    1101111
    1111011
    1110011
    1100011
    0110110
    0011100
    """
  end

  bmp_glyph "zero.cv08.5" do
    advance 8
    bounds 0..7, 0..10

    data """
    0011100
    0110110
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

  bmp_glyph "zero.cv08.6" do
    advance 8
    bounds 0..7, 0..10

    data """
    0011100
    0110110
    1100011
    1100011
    1101011
    1101011
    1100011
    1100011
    0110110
    0011100
    """
  end

  bmp_glyph "zero.cv08.7" do
    advance 8
    bounds 0..7, 0..10

    data """
    0011100
    0110110
    1100011
    1110011
    1111011
    1101111
    1100111
    1100011
    0110110
    0011100
    """
  end

  bmp_glyph ?1 do
    advance 8
    bounds 1..5, 0..10

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

  bmp_glyph ?2 do
    advance 8
    bounds 0..7, 0..10

    data """
    1111110
    0000011
    0000011
    0000011
    0111110
    1100000
    1100000
    1100000
    1100000
    1111111
    """
  end

  bmp_glyph "two.cv09.1" do
    advance 8
    bounds 0..7, 0..10

    data """
    0111110
    1100011
    0000011
    0000011
    0011110
    0110000
    1100000
    1100000
    1100000
    1111111
    """
  end

  bmp_glyph ?3 do
    advance 8
    bounds 0..7, 0..10

    data """
    1111110
    0000011
    0000011
    0000011
    0111110
    0000011
    0000011
    0000011
    0000011
    1111110
    """
  end

  bmp_glyph "three.cv10.1" do
    advance 8
    bounds 0..7, 0..10

    data """
    0111110
    1100011
    0000011
    0000011
    0011110
    0000011
    0000011
    0000011
    1100011
    0111110
    """
  end

  bmp_glyph ?4 do
    advance 8
    bounds 0..7, 0..10

    data """
    0011110
    0110110
    1100110
    1100110
    1100110
    1111111
    0000110
    0000110
    0000110
    0000110
    """
  end

  bmp_glyph "four.cv11.1" do
    advance 8
    bounds 0..7, 0..10

    data """
    0001110
    0011110
    0110110
    1100110
    1100110
    1111111
    0000110
    0000110
    0000110
    0000110
    """
  end

  bmp_glyph ?5 do
    advance 8
    bounds 0..7, 0..10

    data """
    1111111
    1100000
    1100000
    1100000
    1111110
    0000011
    0000011
    0000011
    0000011
    1111110
    """
  end

  bmp_glyph "five.cv12.1" do
    advance 8
    bounds 0..7, 0..10

    data """
    1111111
    1100000
    1100000
    1100000
    1111110
    0000011
    0000011
    0000011
    1100011
    0111110
    """
  end

  bmp_glyph ?6 do
    advance 8
    bounds 0..7, 0..10

    data """
    0111110
    1100000
    1100000
    1100000
    1111110
    1100011
    1100011
    1100011
    1100011
    0111110
    """
  end

  bmp_glyph "six.cv13.1" do
    advance 8
    bounds 0..7, 0..10

    data """
    0111110
    1100011
    1100000
    1100000
    1111110
    1100011
    1100011
    1100011
    1100011
    0111110
    """
  end

  bmp_glyph ?7 do
    advance 8
    bounds 0..7, 0..10

    data """
    1111111
    0000011
    0000011
    0000011
    0001110
    0011000
    0011000
    0011000
    0011000
    0011000
    """
  end

  bmp_glyph "seven.cv14.1" do
    advance 8
    bounds 0..7, 0..10

    data """
    1111111
    0000011
    0000011
    0000110
    0001100
    0011000
    0011000
    0011000
    0011000
    0011000
    """
  end

  bmp_glyph ?8 do
    advance 8
    bounds 0..7, 0..10

    data """
    0111110
    1100011
    1100011
    1100011
    0111110
    1100011
    1100011
    1100011
    1100011
    0111110
    """
  end

  bmp_glyph ?9 do
    advance 8
    bounds 0..7, 0..10

    data """
    0111110
    1100011
    1100011
    1100011
    0111111
    0000011
    0000011
    0000011
    0000011
    0111110
    """
  end

  bmp_glyph "nine.cv15.1" do
    advance 8
    bounds 0..7, 0..10

    data """
    0111110
    1100011
    1100011
    1100011
    1100011
    0111111
    0000011
    0000011
    1100011
    0111110
    """
  end

  bmp_glyph ?: do
    advance 8
    bounds 3..5, 1..8

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

  bmp_glyph ?; do
    advance 8
    bounds 2..5, 0..8

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

  bmp_glyph ?< do
    advance 8
    bounds 1..7, 0..9

    data """
    000011
    000110
    001100
    011000
    110000
    011000
    001100
    000110
    000011
    """
  end

  bmp_glyph ?= do
    advance 8
    bounds 1..7, 3..7

    data """
    111111
    000000
    000000
    111111
    """
  end

  bmp_glyph ?> do
    advance 8
    bounds 1..7, 0..9

    data """
    110000
    011000
    001100
    000110
    000011
    000110
    001100
    011000
    110000
    """
  end

  bmp_glyph ?? do
    advance 8
    bounds 0..7, 0..10

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

  bmp_glyph ?@ do
    advance 8
    bounds 0..7, 0..9

    data """
    0111110
    1100011
    1100011
    1101111
    1101111
    1101111
    1101110
    1100000
    0111110
    """
  end

  bmp_glyph ?A do
    advance 8
    bounds 0..7, 0..10

    data """
    0111110
    1100011
    1100011
    1100011
    1111111
    1100011
    1100011
    1100011
    1100011
    1100011
    """
  end

  bmp_glyph ?B do
    advance 8
    bounds 0..7, 0..10

    data """
    1111110
    1100011
    1100011
    1100011
    1111110
    1100011
    1100011
    1100011
    1100011
    1111110
    """
  end

  bmp_glyph ?C do
    advance 8
    bounds 0..7, 0..10

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
    """
  end

  bmp_glyph ?D do
    advance 8
    bounds 0..7, 0..10

    data """
    1111110
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    1111110
    """
  end

  bmp_glyph ?E do
    advance 8
    bounds 0..7, 0..10

    data """
    0111111
    1100000
    1100000
    1100000
    1111110
    1100000
    1100000
    1100000
    1100000
    0111111
    """
  end

  bmp_glyph ?F do
    advance 8
    bounds 0..7, 0..10

    data """
    0111111
    1100000
    1100000
    1100000
    1111110
    1100000
    1100000
    1100000
    1100000
    1100000
    """
  end

  bmp_glyph ?G do
    advance 8
    bounds 0..7, 0..10

    data """
    0111110
    1100011
    1100000
    1100000
    1100111
    1100011
    1100011
    1100011
    1100011
    0111111
    """
  end

  bmp_glyph ?H do
    advance 8
    bounds 0..7, 0..10

    data """
    1100011
    1100011
    1100011
    1100011
    1111111
    1100011
    1100011
    1100011
    1100011
    1100011
    """
  end

  bmp_glyph ?I do
    advance 8
    bounds 1..7, 0..10

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

  bmp_glyph ?J do
    advance 8
    bounds 0..7, 0..10

    data """
    0001111
    0000110
    0000110
    0000110
    0000110
    0000110
    0000110
    0000110
    1100110
    0111100
    """
  end

  bmp_glyph ?K do
    advance 8
    bounds 0..7, 0..10

    data """
    1100011
    1100011
    1100011
    1100110
    1111100
    1100110
    1100011
    1100011
    1100011
    1100011
    """
  end

  bmp_glyph ?L do
    advance 8
    bounds 0..7, 0..10

    data """
    1100000
    1100000
    1100000
    1100000
    1100000
    1100000
    1100000
    1100000
    1100000
    1111111
    """
  end

  bmp_glyph ?M do
    advance 8
    bounds 0..7, 0..10

    data """
    1111110
    1101011
    1101011
    1101011
    1101011
    1101011
    1101011
    1101011
    1101011
    1101011
    """
  end

  bmp_glyph ?N do
    advance 8
    bounds 0..7, 0..10

    data """
    1111110
    1100011
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

  bmp_glyph ?O do
    advance 8
    bounds 0..7, 0..10

    data """
    0111110
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

  bmp_glyph ?P do
    advance 8
    bounds 0..7, 0..10

    data """
    1111110
    1100011
    1100011
    1100011
    1111110
    1100000
    1100000
    1100000
    1100000
    1100000
    """
  end

  bmp_glyph ?Q do
    advance 8
    bounds 0..7, -2..10

    data """
    0111110
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    0111110
    0001100
    0000111
    """
  end

  bmp_glyph ?R do
    advance 8
    bounds 0..7, 0..10

    data """
    1111110
    1100011
    1100011
    1100011
    1111110
    1100011
    1100011
    1100011
    1100011
    1100011
    """
  end

  bmp_glyph ?S do
    advance 8
    bounds 0..7, 0..10

    data """
    0111110
    1100011
    1100000
    1100000
    0111110
    0000011
    0000011
    0000011
    1100011
    0111110
    """
  end

  bmp_glyph ?T do
    advance 8
    bounds 1..7, 0..10

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
    001100
    """
  end

  bmp_glyph ?U do
    advance 8
    bounds 0..7, 0..10

    data """
    1100011
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

  bmp_glyph ?V do
    advance 8
    bounds 0..7, 0..10

    data """
    1100011
    1100011
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

  bmp_glyph ?W do
    advance 8
    bounds 0..7, 0..10

    data """
    1101011
    1101011
    1101011
    1101011
    1101011
    1101011
    1101011
    1101011
    1101011
    0111110
    """
  end

  bmp_glyph ?X do
    advance 8
    bounds 0..7, 0..10

    data """
    1100011
    1100011
    1100011
    0110110
    0011100
    0110110
    1100011
    1100011
    1100011
    1100011
    """
  end

  bmp_glyph ?Y do
    advance 8
    bounds 1..7, 0..10

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

  bmp_glyph ?Z do
    advance 8
    bounds 0..7, 0..10

    data """
    1111111
    0000011
    0000011
    0000110
    0011100
    0110000
    1100000
    1100000
    1100000
    1111111
    """
  end

  bmp_glyph ?[ do
    advance 8
    bounds 2..6, -2..11

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

  bmp_glyph ?\\ do
    advance 8
    bounds 0..7, 0..8

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

  bmp_glyph ?] do
    advance 8
    bounds 2..6, -2..11

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

  bmp_glyph ?^ do
    advance 8
    bounds 0..7, 8..12

    data """
    0001000
    0011100
    0110110
    1100011
    """
  end

  bmp_glyph ?_ do
    advance 8
    bounds 0..8, -2..-1

    data """
    11111111
    """
  end

  bmp_glyph ?` do
    advance 8
    bounds 2..6, 8..11

    data """
    1100
    0110
    0011
    """
  end

  bmp_glyph ?a do
    advance 8
    bounds 0..7, 0..7

    data """
    1111110
    0000011
    0111111
    1100011
    1100011
    1100011
    0111111
    """
  end

  bmp_glyph ?b do
    advance 8
    bounds 0..7, 0..10

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
    """
  end

  bmp_glyph ?c do
    advance 8
    bounds 0..7, 0..7

    data """
    0111110
    1100011
    1100000
    1100000
    1100000
    1100011
    0111110
    """
  end

  bmp_glyph ?d do
    advance 8
    bounds 0..7, 0..10

    data """
    0000011
    0000011
    0000011
    0111111
    1100011
    1100011
    1100011
    1100011
    1100011
    0111111
    """
  end

  bmp_glyph ?e do
    advance 8
    bounds 0..7, 0..7

    data """
    0111110
    1100011
    1111111
    1100000
    1100000
    1100011
    0111110
    """
  end

  bmp_glyph ?f do
    advance 8
    bounds 0..7, 0..10

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

  bmp_glyph ?g do
    advance 8
    bounds 0..7, -3..7

    data """
    0111111
    1100011
    1100011
    1100011
    1100011
    1100011
    0111111
    0000011
    1100011
    0111110
    """
  end

  bmp_glyph ?h do
    advance 8
    bounds 0..7, 0..10

    data """
    1100000
    1100000
    1100000
    1101110
    1110011
    1100011
    1100011
    1100011
    1100011
    1100011
    """
  end

  bmp_glyph "h.cv01" do
    advance 8
    bounds 0..7, 0..10

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
    1100011
    """
  end

  bmp_glyph ?i do
    advance 8
    bounds 1..7, 0..10

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

  bmp_glyph "i.cv02" do
    advance 8
    bounds 2..5, 0..10

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

  bmp_glyph ?j do
    advance 8
    bounds 1..6, -3..10

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

  bmp_glyph "j.cv03" do
    advance 8
    bounds 0..6, -3..10

    data """
    000011
    000011
    000000
    000011
    000011
    000011
    000011
    000011
    000011
    000011
    110011
    110011
    011110
    """
  end

  bmp_glyph ?k do
    advance 8
    bounds 0..7, 0..10

    data """
    1100000
    1100000
    1100000
    1100011
    1100011
    1100110
    1111100
    1100110
    1100011
    1100011
    """
  end

  bmp_glyph ?l do
    advance 8
    bounds 1..7, 0..10

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

  bmp_glyph "l.cv04" do
    advance 8
    bounds 2..5, 0..10

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

  bmp_glyph ?m do
    advance 8
    bounds 0..7, 0..7

    data """
    1111110
    1101011
    1101011
    1101011
    1101011
    1101011
    1101011
    """
  end

  bmp_glyph ?n do
    advance 8
    bounds 0..7, 0..7

    data """
    1101110
    1110011
    1100011
    1100011
    1100011
    1100011
    1100011
    """
  end

  bmp_glyph "n.cv05" do
    advance 8
    bounds 0..7, 0..7

    data """
    1111110
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    """
  end

  bmp_glyph ?o do
    advance 8
    bounds 0..7, 0..7

    data """
    0111110
    1100011
    1100011
    1100011
    1100011
    1100011
    0111110
    """
  end

  bmp_glyph ?p do
    advance 8
    bounds 0..7, -3..7

    data """
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

  bmp_glyph ?q do
    advance 8
    bounds 0..7, -3..7

    data """
    0111111
    1100011
    1100011
    1100011
    1100011
    1100011
    0111111
    0000011
    0000011
    0000011
    """
  end

  bmp_glyph ?r do
    advance 8
    bounds 0..7, 0..7

    data """
    1101110
    1110011
    1100011
    1100000
    1100000
    1100000
    1100000
    """
  end

  bmp_glyph "r.cv06" do
    advance 8
    bounds 0..7, 0..7

    data """
    1111110
    1100011
    1100000
    1100000
    1100000
    1100000
    1100000
    """
  end

  bmp_glyph ?s do
    advance 8
    bounds 0..7, 0..7

    data """
    0111110
    1100011
    1100000
    0111110
    0000011
    1100011
    0111110
    """
  end

  bmp_glyph ?t do
    advance 8
    bounds 0..7, 0..10

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

  bmp_glyph ?u do
    advance 8
    bounds 0..7, 0..7

    data """
    1100011
    1100011
    1100011
    1100011
    1100011
    1100111
    0111011
    """
  end

  bmp_glyph "u.cv07" do
    advance 8
    bounds 0..7, 0..7

    data """
    1100011
    1100011
    1100011
    1100011
    1100011
    1100011
    0111110
    """
  end

  bmp_glyph ?v do
    advance 8
    bounds 0..7, 0..7

    data """
    1100011
    1100011
    1100011
    1100011
    1100011
    0110110
    0011100
    """
  end

  bmp_glyph ?w do
    advance 8
    bounds 0..7, 0..7

    data """
    1101011
    1101011
    1101011
    1101011
    1101011
    1101011
    0111110
    """
  end

  bmp_glyph ?x do
    advance 8
    bounds 0..7, 0..7

    data """
    1100011
    1100011
    0110110
    0011100
    0110110
    1100011
    1100011
    """
  end

  bmp_glyph ?y do
    advance 8
    bounds 0..7, -3..7

    data """
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

  bmp_glyph ?z do
    advance 8
    bounds 0..7, 0..7

    data """
    1111111
    0000011
    0000110
    0011100
    0110000
    1100000
    1111111
    """
  end

  bmp_glyph ?{ do
    advance 8
    bounds 1..7, -2..11

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

  bmp_glyph ?| do
    advance 8
    bounds 3..5, -2..11

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

  bmp_glyph ?} do
    advance 8
    bounds 1..7, -2..11

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

  bmp_glyph ?~ do
    advance 8
    bounds 0..7, 4..6

    data """
    0111011
    1101110
    """
  end

  bmp_glyph "asciitilde.left1px" do
    advance 8
    bounds 1..7, 4..6

    data """
    011101
    110110
    """
  end
end
