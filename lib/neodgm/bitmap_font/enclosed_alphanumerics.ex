use PixelFont.GlyphSource

glyph_names = ~w(two three four five six seven eight nine)

glyph_source NeoDGM.BitmapFont.EnclosedAlphanumerics do
  # Circled Numbers

  composite_glyph 0x2460 do
    component "circle.enclosure", 0, 0, flags: [:use_my_metrics]
    component "one.enclosed", 5, 1
  end

  0x2461..0x2468
  |> Enum.zip(glyph_names)
  |> Enum.map(fn {code, name} ->
    composite_glyph code do
      component "circle.enclosure", 0, 0, flags: [:use_my_metrics]
      component name <> ".enclosed", 5, 1
    end
  end)

  composite_glyph 0x2469 do
    component "circle.enclosure", 0, 0, flags: [:use_my_metrics]
    component "one.enclosed2", 3, 1
    component "zero.enclosed", 7, 1
  end

  composite_glyph 0x246A do
    component "circle.enclosure", 0, 0, flags: [:use_my_metrics]
    component "one.enclosed2", 4, 1
    component "one.enclosed2", 8, 1
  end

  0x246B..0x2472
  |> Enum.zip(glyph_names)
  |> Enum.map(fn {code, name} ->
    composite_glyph code do
      component "circle.enclosure", 0, 0, flags: [:use_my_metrics]
      component "one.enclosed2", 3, 1
      component name <> ".enclosed", 7, 1
    end
  end)

  composite_glyph 0x2473 do
    component "circle.enclosure", 0, 0, flags: [:use_my_metrics]
    component "two.enclosed2", 3, 1
    component "zero.enclosed2", 8, 1
  end

  # Parenthesized Numbers

  composite_glyph 0x2474 do
    component "parens.enclosure", 0, 0, flags: [:use_my_metrics]
    component "one.enclosed", 5, 1
  end

  0x2475..0x247C
  |> Enum.zip(glyph_names)
  |> Enum.map(fn {code, name} ->
    composite_glyph code do
      component "parens.enclosure", 0, 0, flags: [:use_my_metrics]
      component name <> ".enclosed", 5, 1
    end
  end)

  composite_glyph 0x247D do
    component "parens.enclosure", 0, 0, flags: [:use_my_metrics]
    component "one.enclosed2", 3, 1
    component "zero.enclosed", 7, 1
  end

  composite_glyph 0x247E do
    component "parens.enclosure", 0, 0, flags: [:use_my_metrics]
    component "one.enclosed2", 4, 1
    component "one.enclosed2", 8, 1
  end

  0x247F..0x2486
  |> Enum.zip(glyph_names)
  |> Enum.map(fn {code, name} ->
    composite_glyph code do
      component "parens.enclosure", 0, 0, flags: [:use_my_metrics]
      component "one.enclosed2", 3, 1
      component name <> ".enclosed", 7, 1
    end
  end)

  composite_glyph 0x2487 do
    component "parens.enclosure", 0, 0, flags: [:use_my_metrics]
    component "two.enclosed2", 3, 1
    component "zero.enclosed2", 8, 1
  end

  # Numbers with a Period

  composite_glyph 0x2488 do
    component "period.enclosure", 0, 0, flags: [:use_my_metrics]
    component ?1, 4, 0
  end

  0x2489..0x2490
  |> Enum.zip(glyph_names)
  |> Enum.map(fn {code, name} ->
    composite_glyph code do
      component "period.enclosure", 0, 0, flags: [:use_my_metrics]
      component name <> ".period", 0, 0
    end
  end)

  composite_glyph 9361 do
    component "period.enclosure", 0, 0, flags: [:use_my_metrics]
    component "one.period", -2, 0
    component "zero.period", 0, 0
  end

  composite_glyph 9362 do
    component "period.enclosure", 0, 0, flags: [:use_my_metrics]
    component "one.period", -2, 0
    component "one.period", 3, 0
  end

  0x2493..0x249A
  |> Enum.zip(glyph_names)
  |> Enum.map(fn {code, name} ->
    composite_glyph code do
      component "period.enclosure", 0, 0, flags: [:use_my_metrics]
      component "one.period", -2, 0
      component name <> ".period", 0, 0
    end
  end)

  composite_glyph 0x249B do
    component "period.enclosure", 0, 0, flags: [:use_my_metrics]
    component "two.period2", -2, 0
    component "zero.period2", -2, 0
  end

  # Enclosed Latin Letters
  [{"parens", 32}, {"circle", 0}, {"circle", 32}]
  |> Enum.map(fn {shape, off} -> Enum.map(?A..?Z, &{shape, &1 + off}) end)
  |> List.flatten()
  |> Enum.zip(0x249C..0x24E9)
  |> Enum.map(fn {{shape, char}, code} ->
    composite_glyph code do
      component shape <> ".enclosure", 0, 0, flags: [:use_my_metrics]
      component <<char::utf8, ".enclosed">>, 5, 1
    end
  end)

  [
    {"cv01", "h", "uni24A3", "uni24D7"},
    {"cv02", "i", "uni24A4", "uni24D8"},
    {"cv03", "j", "uni24A5", "uni24D9"},
    {"cv04", "l", "uni24A7", "uni24DB"},
    {"cv05", "n", "uni24A9", "uni24DD"},
    {"cv06", "r", "uni24AD", "uni24E1"},
    {"cv08", "u", "uni24B0", "uni24E4"}
  ]
  |> Enum.map(fn {cv_tag, letter, gname1, gname2} ->
    [
      composite_glyph "#{gname1}.#{cv_tag}" do
        component "parens.enclosure", 0, 0, flags: [:use_my_metrics]
        component "#{letter}.enclosed.#{cv_tag}", 5, 1
      end,
      composite_glyph "#{gname2}.#{cv_tag}" do
        component "circle.enclosure", 0, 0, flags: [:use_my_metrics]
        component "#{letter}.enclosed.#{cv_tag}", 5, 1
      end
    ]
  end)

  # Circled Digit Zero

  composite_glyph 0x24EA do
    component "circle.enclosure", 0, 0, flags: [:use_my_metrics]
    component "zero.enclosed", 5, 1
  end

  # Negative Circled Numbers

  bmp_glyph 0x24EB do
    advance 16
    bounds 1..15, -2..12

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

  bmp_glyph 0x24EC do
    advance 16
    bounds 1..15, -2..12

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

  bmp_glyph 0x24ED do
    advance 16
    bounds 1..15, -2..12

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

  bmp_glyph 0x24EE do
    advance 16
    bounds 1..15, -2..12

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

  bmp_glyph 0x24EF do
    advance 16
    bounds 1..15, -2..12

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

  bmp_glyph 0x24F0 do
    advance 16
    bounds 1..15, -2..12

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

  bmp_glyph 0x24F1 do
    advance 16
    bounds 1..15, -2..12

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

  bmp_glyph 0x24F2 do
    advance 16
    bounds 1..15, -2..12

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

  bmp_glyph 0x24F3 do
    advance 16
    bounds 1..15, -2..12

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

  bmp_glyph 0x24F4 do
    advance 16
    bounds 1..15, -2..12

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

  0x24F5..0x24FE
  |> Enum.zip(~w(one two three four five six seven eight nine ten))
  |> Enum.map(fn {code, name} ->
    composite_glyph code do
      component "dblcircle.enclosure", 0, 0, flags: [:use_my_metrics]
      component name <> ".dblcircle", 5, 2
    end
  end)

  bmp_glyph 0x24FF do
    advance 16
    bounds 1..15, -2..12

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
