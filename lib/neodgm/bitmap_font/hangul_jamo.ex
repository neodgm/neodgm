defmodule NeoDGM.BitmapFont.HangulJamo do
  use TTFLib.CompositeGlyphs

  Enum.each(0x1100..0x1112, fn code ->
    glyph unicode: code do
      component {:name, "cho_#{code - 0x1100}_0"}, 0, 0
    end
  end)

  Enum.each(0x1161..0x1175, fn code ->
    glyph unicode: code do
      component {:name, "jung_#{code - 0x1161}_0"}, 0, 0
    end
  end)

  Enum.each(0x11a8..0x11c2, fn code ->
    glyph unicode: code do
      # Note that the jongseong index starts with 1.
      component {:name, "jong_#{code - 0x11a7}_0"}, 0, 0
    end
  end)

  export_glyphs()
end
