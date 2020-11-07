use PixelFont.GlyphSource

glyph_source NeoDGM.BitmapFont.HangulJamo do
  Enum.map(0x1100..0x1112, fn code ->
    str = (code - 0x1100) |> to_string() |> String.pad_leading(2, "0")

    composite_glyph code do
      component "cho_0_#{str}", 0, 0
    end
  end)

  Enum.map(0x1161..0x1175, fn code ->
    str = (code - 0x1161) |> to_string() |> String.pad_leading(2, "0")

    composite_glyph code do
      component "jung_0_#{str}", 0, 0
    end
  end)

  Enum.map(0x11A8..0x11C2, fn code ->
    # Note that the jongseong index starts with 1.
    str = (code - 0x11A7) |> to_string() |> String.pad_leading(2, "0")

    composite_glyph code do
      component "jong_0_#{str}", 0, 0
    end
  end)
end
