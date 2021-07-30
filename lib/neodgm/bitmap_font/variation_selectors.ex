use PixelFont.GlyphSource

glyph_source NeoDGM.BitmapFont.VariationSelectors do
  # U+FE00 VARIATION SELECTOR-1
  # ... U+FE0F VARIATION SELECTOR-16
  Enum.map(0xFE00..0xFE0F, fn code ->
    bmp_glyph code do
      advance 0
      bounds 0..0, 0..0
      data ""
    end
  end)
end
