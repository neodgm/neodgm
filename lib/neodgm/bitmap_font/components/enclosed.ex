defmodule NeoDGM.BitmapFont.Components.Enclosed do
  require TTFLib.GlyphSource
  import TTFLib.GlyphSource

  export_glyphs do
    bmp_glyph name: "circle.enclosure" do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

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
      xmin 1
      xmax 15
      ymin -2
      ymax 12

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
      xmin 12
      xmax 14
      ymin 0
      ymax 2

      data """
      11
      11
      """
    end

    bmp_glyph name: "dblcircle.enclosure" do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

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
      xmin 5
      xmax 11
      ymin 0
      ymax 10

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
      xmin 8
      xmax 13
      ymin 0
      ymax 10

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
      xmin 3
      xmax 6
      ymin 0
      ymax 10

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
      xmin 5
      xmax 11
      ymin 0
      ymax 10

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
      xmin 3
      xmax 7
      ymin 0
      ymax 10

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
      xmin 5
      xmax 11
      ymin 0
      ymax 10

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
      xmin 5
      xmax 11
      ymin 0
      ymax 10

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
      xmin 5
      xmax 11
      ymin 0
      ymax 10

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
      xmin 5
      xmax 11
      ymin 0
      ymax 10

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
      xmin 5
      xmax 11
      ymin 0
      ymax 10

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
      xmin 5
      xmax 11
      ymin 0
      ymax 10

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
      xmin 5
      xmax 11
      ymin 0
      ymax 10

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
      xmin 0
      xmax 6
      ymin 0
      ymax 8

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
      xmin 0
      xmax 5
      ymin 0
      ymax 8

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
      xmin 0
      xmax 4
      ymin 0
      ymax 8

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
      xmin 0
      xmax 3
      ymin 0
      ymax 8

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
      xmin 0
      xmax 6
      ymin 0
      ymax 8

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
      xmin 0
      xmax 4
      ymin 0
      ymax 8

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
      xmin 0
      xmax 6
      ymin 0
      ymax 8

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
      xmin 0
      xmax 6
      ymin 0
      ymax 8

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
      xmin 0
      xmax 6
      ymin 0
      ymax 8

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
      xmin 0
      xmax 6
      ymin 0
      ymax 8

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
      xmin 0
      xmax 6
      ymin 0
      ymax 8

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
      xmin 0
      xmax 6
      ymin 0
      ymax 8

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
      xmin 0
      xmax 6
      ymin 0
      ymax 8

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
      xmin 1
      xmax 4
      ymin 0
      ymax 6

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
      xmin 0
      xmax 6
      ymin 0
      ymax 6

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
      xmin 0
      xmax 6
      ymin 0
      ymax 6

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
      xmin 0
      xmax 6
      ymin 0
      ymax 6

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
      xmin 0
      xmax 6
      ymin 0
      ymax 6

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
      xmin 0
      xmax 6
      ymin 0
      ymax 6

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
      xmin 0
      xmax 6
      ymin 0
      ymax 6

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
      xmin 0
      xmax 6
      ymin 0
      ymax 6

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
      xmin 0
      xmax 6
      ymin 0
      ymax 6

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
      xmin 0
      xmax 6
      ymin 0
      ymax 6

      data """
      010010
      110101
      010101
      010101
      010101
      010010
      """
    end
  end
end
