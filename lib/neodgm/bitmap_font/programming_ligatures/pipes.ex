use TTFLib.GlyphSource

glyph_source NeoDGM.BitmapFont.ProgrammingLigatures.Pipes do
  bmp_glyph name: "less.pipeoperator" do
    advance 8
    bounds 1..8, -1..10

    data """
    0000011
    0000110
    0001100
    0011000
    0110000
    1100000
    0110000
    0011000
    0001100
    0000110
    0000011
    """
  end

  bmp_glyph name: "greater.pipeoperator" do
    advance 8
    bounds 0..7, -1..10

    data """
    1100000
    0110000
    0011000
    0001100
    0000110
    0000011
    0000110
    0001100
    0011000
    0110000
    1100000
    """
  end

  bmp_glyph name: "bar.pipeoperator" do
    advance 8
    bounds 3..5, -1..10

    data """
    11
    11
    11
    11
    11
    11
    11
    11
    11
    11
    11
    """
  end
end
