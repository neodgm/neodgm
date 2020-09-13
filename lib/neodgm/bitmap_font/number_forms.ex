use TTFLib.GlyphSource

glyph_source NeoDGM.BitmapFont.NumberForms do
  composite_glyph unicode: 0x2150 do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "one.fraction"}, 1, 6
    component {:name, "seven.fraction"}, 1, -2
  end

  composite_glyph unicode: 0x2151 do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "one.fraction"}, 1, 6
    component {:name, "nine.fraction"}, 1, -2
  end

  composite_glyph unicode: 0x2152 do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "one.fraction"}, 1, 6
    component {:name, "ten.fraction"}, 0, -2
  end

  composite_glyph unicode: 0x2153 do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "one.fraction"}, 1, 6
    component {:name, "three.fraction"}, 1, -2
  end

  composite_glyph unicode: 0x2154 do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "two.fraction"}, 1, 6
    component {:name, "three.fraction"}, 1, -2
  end

  composite_glyph unicode: 0x2155 do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "one.fraction"}, 1, 6
    component {:name, "five.fraction"}, 1, -2
  end

  composite_glyph unicode: 0x2156 do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "two.fraction"}, 1, 6
    component {:name, "five.fraction"}, 1, -2
  end

  composite_glyph unicode: 0x2157 do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "three.fraction"}, 1, 6
    component {:name, "five.fraction"}, 1, -2
  end

  composite_glyph unicode: 0x2158 do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "four.fraction"}, 1, 6
    component {:name, "five.fraction"}, 1, -2
  end

  composite_glyph unicode: 0x2159 do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "one.fraction"}, 1, 6
    component {:name, "six.fraction"}, 1, -2
  end

  composite_glyph unicode: 0x215A do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "five.fraction"}, 1, 6
    component {:name, "six.fraction"}, 1, -2
  end

  composite_glyph unicode: 0x215B do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "one.fraction"}, 1, 6
    component {:name, "eight.fraction"}, 1, -2
  end

  composite_glyph unicode: 0x215C do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "three.fraction"}, 1, 6
    component {:name, "eight.fraction"}, 1, -2
  end

  composite_glyph unicode: 0x215D do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "five.fraction"}, 1, 6
    component {:name, "eight.fraction"}, 1, -2
  end

  composite_glyph unicode: 0x215E do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "seven.fraction"}, 1, 6
    component {:name, "eight.fraction"}, 1, -2
  end

  composite_glyph unicode: 0x215F do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "one.fraction"}, 1, 6
  end

  composite_glyph unicode: 0x2189 do
    component {:unicode, ?-}, 0, 0, flags: [:use_my_metrics]
    component {:name, "zero.fraction"}, 1, 6
    component {:name, "three.fraction"}, 1, -2
  end
end
