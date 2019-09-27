defmodule NeoDGM.BitmapFont.HangulJamo do
  require TTFLib.CompositeGlyphs
  import TTFLib.CompositeGlyphs

  export_glyphs do
    Enum.map(0x1100..0x1112, fn code ->
      glyph unicode: code do
        component {:name, "cho_#{code - 0x1100}_0"}, 0, 0
      end
    end)

    Enum.map(0x1161..0x1175, fn code ->
      glyph unicode: code do
        component {:name, "jung_#{code - 0x1161}_0"}, 0, 0
      end
    end)

    Enum.map(0x11A8..0x11C2, fn code ->
      glyph unicode: code do
        # Note that the jongseong index starts with 1.
        component {:name, "jong_#{code - 0x11A7}_0"}, 0, 0
      end
    end)
  end
end
