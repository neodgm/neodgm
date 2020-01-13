defmodule NeoDGM.BitmapFont.Dingbats do
  require TTFLib.GlyphSource
  import TTFLib.GlyphSource

  export_glyphs do
    bmp_glyph unicode: 10102 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01111100111110
      11111000111111
      11110000111111
      11111100111111
      11111100111111
      11111100111111
      11111100111111
      11111100111111
      11111100111111
      01111100111110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 10103 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01110000011110
      11111111001111
      11111111001111
      11111111001111
      11111000011111
      11110011111111
      11110011111111
      11110011111111
      11110011111111
      01110000001110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 10104 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01110000011110
      11111111001111
      11111111001111
      11111111001111
      11111000011111
      11111111001111
      11111111001111
      11111111001111
      11111111001111
      01110000011110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 10105 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01111100011110
      11111000011111
      11110010011111
      11110010011111
      11110010011111
      11110000001111
      11111110011111
      11111110011111
      11111110011111
      01111110011110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 10106 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01110000001110
      11110011111111
      11110011111111
      11110011111111
      11110000011111
      11111111001111
      11111111001111
      11111111001111
      11111111001111
      01110000011110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 10107 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01111000011110
      11110011111111
      11110011111111
      11110011111111
      11110000011111
      11110011001111
      11110011001111
      11110011001111
      11110011001111
      01111000011110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 10108 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01110000001110
      11111111001111
      11111111001111
      11111111001111
      11111110011111
      11111100111111
      11111100111111
      11111100111111
      11111100111111
      01111100111110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 10109 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01111000011110
      11110011001111
      11110011001111
      11110011001111
      11111000011111
      11110011001111
      11110011001111
      11110011001111
      11110011001111
      01111000011110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 10110 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01111000011110
      11110011001111
      11110011001111
      11110011001111
      11111000001111
      11111111001111
      11111111001111
      11111111001111
      11111111001111
      01111000011110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 10111 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01100110000110
      11000100110011
      11100100110011
      11100100100011
      11100100000011
      11100100010011
      11100100110011
      11100100110011
      11100100110011
      01100110000110
      00111111111100
      00011111111000
      """
    end

    composite_glyph unicode: 10112 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:unicode, ?1}, 4, 0
    end

    composite_glyph unicode: 10113 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "two.enclosed"}, 0, 0
    end

    composite_glyph unicode: 10114 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "three.enclosed"}, 0, 0
    end

    composite_glyph unicode: 10115 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "four.enclosed"}, 0, 0
    end

    composite_glyph unicode: 10116 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "five.enclosed"}, 0, 0
    end

    composite_glyph unicode: 10117 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "six.enclosed"}, 0, 0
    end

    composite_glyph unicode: 10118 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "seven.enclosed"}, 0, 0
    end

    composite_glyph unicode: 10119 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "eight.enclosed"}, 0, 0
    end

    composite_glyph unicode: 10120 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "nine.enclosed"}, 0, 0
    end

    composite_glyph unicode: 10121 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "zero.enclosed"}, 2, 0
    end

    composite_glyph [unicode: 10122], do: component({:unicode, 10102}, 0, 0)
    composite_glyph [unicode: 10123], do: component({:unicode, 10103}, 0, 0)
    composite_glyph [unicode: 10124], do: component({:unicode, 10104}, 0, 0)
    composite_glyph [unicode: 10125], do: component({:unicode, 10105}, 0, 0)
    composite_glyph [unicode: 10126], do: component({:unicode, 10106}, 0, 0)
    composite_glyph [unicode: 10127], do: component({:unicode, 10107}, 0, 0)
    composite_glyph [unicode: 10128], do: component({:unicode, 10108}, 0, 0)
    composite_glyph [unicode: 10129], do: component({:unicode, 10109}, 0, 0)
    composite_glyph [unicode: 10130], do: component({:unicode, 10110}, 0, 0)
    composite_glyph [unicode: 10131], do: component({:unicode, 10111}, 0, 0)
  end
end
