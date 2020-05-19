defmodule NeoDGM.BitmapFont.EnclosedAlphanumerics do
  require TTFLib.GlyphSource
  import TTFLib.GlyphSource

  glyph_names = ~w(two three four five six seven eight nine)

  export_glyphs do
    # Circled Numbers

    composite_glyph unicode: 0x2460 do
      component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.enclosed"}, 5, 1
    end

    0x2461..0x2468
    |> Enum.zip(glyph_names)
    |> Enum.map(fn {code, name} ->
      composite_glyph unicode: code do
        component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
        component {:name, name <> ".enclosed"}, 5, 1
      end
    end)

    composite_glyph unicode: 0x2469 do
      component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.enclosed2"}, 3, 1
      component {:name, "zero.enclosed"}, 7, 1
    end

    composite_glyph unicode: 0x246A do
      component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.enclosed2"}, 4, 1
      component {:name, "one.enclosed2"}, 8, 1
    end

    0x246B..0x2472
    |> Enum.zip(glyph_names)
    |> Enum.map(fn {code, name} ->
      composite_glyph unicode: code do
        component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
        component {:name, "one.enclosed2"}, 3, 1
        component {:name, name <> ".enclosed"}, 7, 1
      end
    end)

    composite_glyph unicode: 0x2473 do
      component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "two.enclosed2"}, 3, 1
      component {:name, "zero.enclosed2"}, 8, 1
    end

    # Parenthesized Numbers

    composite_glyph unicode: 0x2474 do
      component {:name, "parens.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.enclosed"}, 5, 1
    end

    0x2475..0x247C
    |> Enum.zip(glyph_names)
    |> Enum.map(fn {code, name} ->
      composite_glyph unicode: code do
        component {:name, "parens.enclosure"}, 0, 0, flags: [:use_my_metrics]
        component {:name, name <> ".enclosed"}, 5, 1
      end
    end)

    composite_glyph unicode: 0x247D do
      component {:name, "parens.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.enclosed2"}, 3, 1
      component {:name, "zero.enclosed"}, 7, 1
    end

    composite_glyph unicode: 0x247E do
      component {:name, "parens.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.enclosed2"}, 4, 1
      component {:name, "one.enclosed2"}, 8, 1
    end

    0x247F..0x2486
    |> Enum.zip(glyph_names)
    |> Enum.map(fn {code, name} ->
      composite_glyph unicode: code do
        component {:name, "parens.enclosure"}, 0, 0, flags: [:use_my_metrics]
        component {:name, "one.enclosed2"}, 3, 1
        component {:name, name <> ".enclosed"}, 7, 1
      end
    end)

    composite_glyph unicode: 0x2487 do
      component {:name, "parens.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "two.enclosed2"}, 3, 1
      component {:name, "zero.enclosed2"}, 8, 1
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
        component {:name, name <> ".period"}, 0, 0
      end
    end)

    composite_glyph unicode: 9361 do
      component {:name, "period.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.period"}, -2, 0
      component {:name, "zero.period"}, 0, 0
    end

    composite_glyph unicode: 9362 do
      component {:name, "period.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "one.period"}, -2, 0
      component {:name, "one.period"}, 3, 0
    end

    0x2493..0x249A
    |> Enum.zip(glyph_names)
    |> Enum.map(fn {code, name} ->
      composite_glyph unicode: code do
        component {:name, "period.enclosure"}, 0, 0, flags: [:use_my_metrics]
        component {:name, "one.period"}, -2, 0
        component {:name, name <> ".period"}, 0, 0
      end
    end)

    composite_glyph unicode: 0x249B do
      component {:name, "period.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "two.period2"}, -2, 0
      component {:name, "zero.period2"}, -2, 0
    end

    # Circled Digit Zero

    composite_glyph unicode: 0x24EA do
      component {:name, "circle.enclosure"}, 0, 0, flags: [:use_my_metrics]
      component {:name, "zero.enclosed"}, 5, 1
    end

    # Negative Circled Numbers

    bmp_glyph unicode: 0x24EB do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01110011001110
      11100010001111
      11110011001111
      11110011001111
      11110011001111
      11110011001111
      11110011001111
      01110011001110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 0x24EC do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01100100000110
      11000111110011
      11100111110011
      11100110000111
      11100100111111
      11100100111111
      11100100111111
      01100100000010
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 0x24ED do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01100100000110
      11000111110011
      11100111110011
      11100110000111
      11100111110011
      11100111110011
      11100111110011
      01100100000110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 0x24EE do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01100111000110
      11000110000111
      11100100100111
      11100100100111
      11100100000011
      11100111100111
      11100111100111
      01100111100110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 0x24EF do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01100100000010
      11000100111111
      11100100111111
      11100100000111
      11100111110011
      11100111110011
      11100111110011
      01100100000110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 0x24F0 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01100110000010
      11000100111111
      11100100111111
      11100100000111
      11100100110011
      11100100110011
      11100100110011
      01100110000110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 0x24F1 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01100100000010
      11000111110011
      11100111110011
      11100111100111
      11100111001111
      11100111001111
      11100111001111
      01100111001110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 0x24F2 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01100110000110
      11000100110011
      11100100110011
      11100110000111
      11100100110011
      11100100110011
      11100100110011
      01100110000110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 0x24F3 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01100110000110
      11000100110011
      11100100110011
      11100110000011
      11100111110011
      11100111110011
      11100111110011
      01100110000110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 0x24F4 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01000111000110
      11110010010011
      11110010010011
      11100110010011
      11001110010011
      11001110010011
      11001110010011
      01000011000110
      01111111111110
      00111111111100
      00001111110000
      """
    end

    bmp_glyph unicode: 0x24FF do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00001111110000
      00111111111100
      01111111111110
      01111000011110
      11110011001111
      11110010001111
      11110000001111
      11110001001111
      11110011001111
      11110011001111
      01111000011110
      01111111111110
      00111111111100
      00001111110000
      """
    end
  end
end
