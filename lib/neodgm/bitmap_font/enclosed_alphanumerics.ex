defmodule NeoDGM.BitmapFont.EnclosedAlphanumerics do
  require TTFLib.GlyphSource
  import TTFLib.GlyphSource

  glyph_names = ~w(two three four five six seven eight nine)

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

    bmp_glyph name: "zero.enclosed" do
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

    bmp_glyph name: "zero.enclosed2" do
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

    bmp_glyph name: "one.enclosed" do
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

    bmp_glyph name: "two.enclosed" do
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

    bmp_glyph name: "two.enclosed2" do
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
      0111
      1100
      1100
      1100
      1100
      1111
      """
    end

    bmp_glyph name: "three.enclosed" do
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

    bmp_glyph name: "four.enclosed" do
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

    bmp_glyph name: "five.enclosed" do
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

    bmp_glyph name: "six.enclosed" do
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

    bmp_glyph name: "seven.enclosed" do
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

    bmp_glyph name: "eight.enclosed" do
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

    bmp_glyph name: "nine.enclosed" do
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

    # Circled Numbers

    composite_glyph unicode: 0x2460 do
      component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:unicode, ?1}, 4, 0
    end

    0x2461..0x2468
    |> Enum.zip(glyph_names)
    |> Enum.map(fn {code, name} ->
      composite_glyph unicode: code do
        component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
        component {:name, name <> ".enclosed"}, 0, 0
      end
    end)

    composite_glyph unicode: 0x2469 do
      component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "zero.enclosed"}, 2, 0
    end

    composite_glyph unicode: 0x246A do
      component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.enclosed"}, 1, 0
      component {:name, "one.enclosed"}, 5, 0
    end

    0x246B..0x2472
    |> Enum.zip(glyph_names)
    |> Enum.map(fn {code, name} ->
      composite_glyph unicode: code do
        component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
        component {:name, "one.enclosed"}, 0, 0
        component {:name, name <> ".enclosed"}, 2, 0
      end
    end)

    composite_glyph unicode: 0x2473 do
      component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "two.enclosed2"}, 0, 0
      component {:name, "zero.enclosed2"}, 0, 0
    end

    # Parenthesized Numbers

    composite_glyph unicode: 0x2474 do
      component {:name, "parens.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:unicode, ?1}, 4, 0
    end

    0x2475..0x247C
    |> Enum.zip(glyph_names)
    |> Enum.map(fn {code, name} ->
      composite_glyph unicode: code do
        component {:name, "parens.enclosure"}, 0, 0, flags: [:use_my_metrics]
        component {:name, name <> ".enclosed"}, 0, 0
      end
    end)

    composite_glyph unicode: 0x247D do
      component {:name, "parens.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "zero.enclosed"}, 2, 0
    end

    composite_glyph unicode: 0x247E do
      component {:name, "parens.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.enclosed"}, 1, 0
      component {:name, "one.enclosed"}, 5, 0
    end

    0x247F..0x2486
    |> Enum.zip(glyph_names)
    |> Enum.map(fn {code, name} ->
      composite_glyph unicode: code do
        component {:name, "parens.enclosure"}, 0, 0, flags: [:use_my_metrics]
        component {:name, "one.enclosed"}, 0, 0
        component {:name, name <> ".enclosed"}, 2, 0
      end
    end)

    composite_glyph unicode: 0x2487 do
      component {:name, "parens.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "two.enclosed2"}, 0, 0
      component {:name, "zero.enclosed2"}, 0, 0
    end

    # Numbers with a Period

    composite_glyph unicode: 0x2488 do
      component {:name, "period.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:unicode, ?1}, 4, 0
    end

    0x2489..0x2490
    |> Enum.zip(glyph_names)
    |> Enum.map(fn {code, name} ->
      composite_glyph unicode: code do
        component {:name, "period.enclosure"}, 0, 0, flags: [:use_my_metrics]
        component {:name, name <> ".enclosed"}, 0, 0
      end
    end)

    composite_glyph unicode: 9361 do
      component {:name, "period.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.enclosed"}, -2, 0
      component {:name, "zero.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9362 do
      component {:name, "period.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.enclosed"}, -2, 0
      component {:name, "one.enclosed"}, 3, 0
    end

    0x2493..0x249A
    |> Enum.zip(glyph_names)
    |> Enum.map(fn {code, name} ->
      composite_glyph unicode: code do
        component {:name, "period.enclosure"}, 0, 0, flags: [:use_my_metrics]
        component {:name, "one.enclosed"}, -2, 0
        component {:name, name <> ".enclosed"}, 0, 0
      end
    end)

    composite_glyph unicode: 0x249B do
      component {:name, "period.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "two.enclosed2"}, -2, 0
      component {:name, "zero.enclosed2"}, -2, 0
    end

    # Circled Digit Zero

    composite_glyph unicode: 0x24EA do
      component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "zero.enclosed"}, 0, 0
    end

    # Negative Circled Numbers

    bmp_glyph unicode: 9451 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01110011001110
      11100010001111
      11110011001111
      11110011001111
      11110011001111
      11110011001111
      11110011001111
      11110011001111
      11110011001111
      01110011001110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9452 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01100100000110
      11000111110011
      11100111110011
      11100111110011
      11100110000111
      11100100111111
      11100100111111
      11100100111111
      11100100111111
      01100100000010
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9453 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01100100000110
      11000111110011
      11100111110011
      11100111110011
      11100110000111
      11100111110011
      11100111110011
      11100111110011
      11100111110011
      01100100000110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9454 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01100111000110
      11000110000111
      11100100100111
      11100100100111
      11100100100111
      11100100000011
      11100111100111
      11100111100111
      11100111100111
      01100111100110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9455 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01100100000010
      11000100111111
      11100100111111
      11100100111111
      11100100000111
      11100111110011
      11100111110011
      11100111110011
      11100111110011
      01100100000110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9456 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01100110000110
      11000100111111
      11100100111111
      11100100111111
      11100100000111
      11100100110011
      11100100110011
      11100100110011
      11100100110011
      01100110000110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9457 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01100100000010
      11000111110011
      11100111110011
      11100111110011
      11100111100111
      11100111001111
      11100111001111
      11100111001111
      11100111001111
      01100111001110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9458 do
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
      11100100110011
      11100110000111
      11100100110011
      11100100110011
      11100100110011
      11100100110011
      01100110000110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9459 do
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
      11100100110011
      11100110000011
      11100111110011
      11100111110011
      11100111110011
      11100111110011
      01100110000110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9460 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01000111000110
      11110010010011
      11110010010011
      11110010010011
      11100010010011
      11001110010011
      11001110010011
      11001110010011
      11001110010011
      01000011000110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9471 do
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
      11110010001111
      11110000001111
      11110001001111
      11110011001111
      11110011001111
      11110011001111
      01111000011110
      00111111111100
      00011111111000
      """
    end
  end
end
