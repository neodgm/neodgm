use PixelFont.GlyphSource

glyph_source NeoDGM.BitmapFont.Components.Diacritics do
  bmp_glyph name: "grave.component" do
    advance 8
    bounds 2..5, 10..12

    data """
    110
    011
    """
  end

  bmp_glyph name: "circumflex.component" do
    advance 8
    bounds 1..6, 10..12

    data """
    01110
    11011
    """
  end

  bmp_glyph name: "tilde.component" do
    advance 8
    bounds 0..7, 10..12

    data """
    0111011
    1101110
    """
  end

  bmp_glyph name: "dieresis.component" do
    advance 8
    bounds 1..6, 10..11

    data """
    11011
    """
  end

  bmp_glyph name: "dieresis.component.i" do
    advance 8
    bounds 1..7, 10..11

    data """
    110011
    """
  end

  bmp_glyph name: "ring.component" do
    advance 8
    bounds 1..6, 9..12

    data """
    01110
    11011
    01110
    """
  end
end
