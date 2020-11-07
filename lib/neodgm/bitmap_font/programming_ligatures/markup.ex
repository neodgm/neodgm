use PixelFont.GlyphSource

glyph_source NeoDGM.BitmapFont.ProgrammingLigatures.Markup do
  bmp_glyph "exclam.markupcomment" do
    advance 8
    bounds -5..7, 0..10

    data """
    000000110000
    000000110000
    000000110000
    000000110000
    000000110000
    111110110111
    000000110000
    000000000000
    000000110000
    000000110000
    """
  end
end
