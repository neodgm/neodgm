defmodule NeoDGM.BitmapFont.BasicLatin do
  use TTFLib.BMPGlyphs

  glyph unicode: 0 do
    advance 0
    xmin 0
    xmax 0
    ymin 0
    ymax 0
    data ""
  end

  glyph unicode: ?\s do
    advance 8
    xmin 0
    xmax 0
    ymin 0
    ymax 0
    data ""
  end

  glyph unicode: ?! do
    advance 8
    xmin 3
    xmax 5
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

  glyph unicode: ?" do
    advance 8
    xmin 1
    xmax 7
    ymin 7
    ymax 11

    data """
    110011
    110011
    110011
    010010
    """
  end

  glyph unicode: ?# do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 9

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

  glyph unicode: ?$ do
    advance 8
    xmin 0
    xmax 7
    ymin -1
    ymax 11

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

  glyph unicode: ?% do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 8

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

  glyph unicode: ?& do
    advance 8
    xmin 0
    xmax 7
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

  glyph unicode: ?' do
    advance 8
    xmin 1
    xmax 4
    ymin 7
    ymax 11

    data """
    011
    011
    011
    110
    """
  end

  glyph unicode: ?( do
    advance 8
    xmin 2
    xmax 6
    ymin 0
    ymax 10

    data """
    0111
    1100
    1100
    1100
    1100
    1100
    1100
    1100
    1100
    0111
    """
  end

  glyph unicode: ?) do
    advance 8
    xmin 2
    xmax 6
    ymin 0
    ymax 10

    data """
    1110
    0011
    0011
    0011
    0011
    0011
    0011
    0011
    0011
    1110
    """
  end

  glyph unicode: ?* do
    advance 8
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

  glyph unicode: ?+ do
    advance 8
    xmin 1
    xmax 7
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

  glyph unicode: ?, do
    advance 8
    xmin 2
    xmax 5
    ymin -1
    ymax 3

    data """
    011
    011
    011
    110
    """
  end

  glyph unicode: ?- do
    advance 8
    xmin 0
    xmax 7
    ymin 4
    ymax 5

    data """
    1111111
    """
  end

  glyph unicode: ?. do
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

  glyph unicode: ?/ do
    advance 8
    xmin 0
    xmax 7
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

  glyph unicode: ?0 do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?1 do
    advance 8
    xmin 1
    xmax 5
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

  glyph unicode: ?2 do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?3 do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?4 do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?5 do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?6 do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?7 do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?8 do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?9 do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?: do
    advance 8
    xmin 3
    xmax 5
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

  glyph unicode: ?; do
    advance 8
    xmin 2
    xmax 5
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

  glyph unicode: ?< do
    advance 8
    xmin 1
    xmax 7
    ymin 0
    ymax 9

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

  glyph unicode: ?= do
    advance 8
    xmin 1
    xmax 7
    ymin 3
    ymax 7

    data """
    111111
    000000
    000000
    111111
    """
  end

  glyph unicode: ?> do
    advance 8
    xmin 1
    xmax 7
    ymin 0
    ymax 9

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

  glyph unicode: ?? do
    advance 8
    xmin 0
    xmax 7
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

  glyph unicode: ?@ do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 9

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

  glyph unicode: ?A do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?B do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?C do
    advance 8
    xmin 0
    xmax 7
    ymin 0
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
    """
  end

  glyph unicode: ?D do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?E do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?F do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?G do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?H do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?I do
    advance 8
    xmin 1
    xmax 7
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

  glyph unicode: ?J do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

    data """
    0000011
    0000011
    0000011
    0000011
    0000011
    1100011
    1100011
    1100011
    1100011
    0111110
    """
  end

  glyph unicode: ?K do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?L do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?M do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?N do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?O do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?P do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?Q do
    advance 8
    xmin 0
    xmax 7
    ymin -2
    ymax 10

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

  glyph unicode: ?R do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?S do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?T do
    advance 8
    xmin 1
    xmax 7
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
    001100
    """
  end

  glyph unicode: ?U do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?V do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?W do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?X do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?Y do
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
    011110
    001100
    001100
    001100
    001100
    001100
    """
  end

  glyph unicode: ?Z do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?[ do
    advance 8
    xmin 2
    xmax 6
    ymin 0
    ymax 10

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
    1111
    """
  end

  glyph unicode: ?\ do
    advance 8
    xmin 0
    xmax 7
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

  glyph unicode: ?] do
    advance 8
    xmin 2
    xmax 6
    ymin 0
    ymax 10

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
    1111
    """
  end

  glyph unicode: ?^ do
    advance 8
    xmin 0
    xmax 7
    ymin 8
    ymax 12

    data """
    0001000
    0011100
    0110110
    1100011
    """
  end

  glyph unicode: ?_ do
    advance 8
    xmin 0
    xmax 8
    ymin -2
    ymax -1

    data """
    11111111
    """
  end

  glyph unicode: ?` do
    advance 8
    xmin 2
    xmax 6
    ymin 8
    ymax 11

    data """
    1100
    0110
    0011
    """
  end

  glyph unicode: ?a do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 7

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

  glyph unicode: ?b do
    advance 8
    xmin 0
    xmax 7
    ymin 0
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
    """
  end

  glyph unicode: ?c do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 7

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

  glyph unicode: ?d do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?e do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 7

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

  glyph unicode: ?f do
    advance 8
    xmin 0
    xmax 7
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

  glyph unicode: ?g do
    advance 8
    xmin 0
    xmax 7
    ymin -3
    ymax 7

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

  glyph unicode: ?h do
    advance 8
    xmin 0
    xmax 7
    ymin 0
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
    1100011
    """
  end

  glyph unicode: ?i do
    advance 8
    xmin 2
    xmax 5
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

  glyph unicode: ?j do
    advance 8
    xmin 0
    xmax 6
    ymin -3
    ymax 10

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

  glyph unicode: ?k do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 10

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

  glyph unicode: ?l do
    advance 8
    xmin 2
    xmax 5
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

  glyph unicode: ?m do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 7

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

  glyph unicode: ?n do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 7

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

  glyph unicode: ?o do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 7

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

  glyph unicode: ?p do
    advance 8
    xmin 0
    xmax 7
    ymin -3
    ymax 7

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

  glyph unicode: ?q do
    advance 8
    xmin 0
    xmax 7
    ymin -3
    ymax 7

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

  glyph unicode: ?r do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 7

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

  glyph unicode: ?s do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 7

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

  glyph unicode: ?t do
    advance 8
    xmin 0
    xmax 7
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

  glyph unicode: ?u do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 7

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

  glyph unicode: ?v do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 7

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

  glyph unicode: ?w do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 7

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

  glyph unicode: ?x do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 7

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

  glyph unicode: ?y do
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
    1100011
    0111111
    0000011
    0000011
    0111110
    """
  end

  glyph unicode: ?z do
    advance 8
    xmin 0
    xmax 7
    ymin 0
    ymax 7

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

  glyph unicode: ?{ do
    advance 8
    xmin 1
    xmax 7
    ymin 0
    ymax 10

    data """
    000111
    001100
    001100
    001100
    111000
    001100
    001100
    001100
    001100
    000111
    """
  end

  glyph unicode: ?| do
    advance 8
    xmin 3
    xmax 5
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
    11
    11
    11
    """
  end

  glyph unicode: ?} do
    advance 8
    xmin 1
    xmax 7
    ymin 0
    ymax 10

    data """
    111000
    001100
    001100
    001100
    000111
    001100
    001100
    001100
    001100
    111000
    """
  end

  glyph unicode: ?~ do
    advance 8
    xmin 0
    xmax 7
    ymin 9
    ymax 11

    data """
    0111011
    1101110
    """
  end

  export_glyphs()
end
