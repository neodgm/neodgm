use PixelFont.GlyphSource

glyph_source NeoDGM.BitmapFont.ProgrammingLigatures.Arrows do
  bmp_glyph "hyphen.larr.head" do
    advance 8
    bounds -5..7, 4..5

    data """
    111111111111
    """
  end

  bmp_glyph "hyphen.larr.body" do
    advance 8
    bounds -1..7, 4..5

    data """
    11111111
    """
  end

  bmp_glyph "hyphen.rarr.head" do
    advance 8
    bounds 0..13, 4..5

    data """
    1111111111111
    """
  end

  bmp_glyph "hyphen.rarr.head2" do
    advance 8
    bounds -1..13, 4..5

    data """
    11111111111111
    """
  end

  bmp_glyph "hyphen.rarr.body" do
    advance 8
    bounds 0..8, 4..5

    data """
    11111111
    """
  end

  bmp_glyph "hyphen.bidiarr.short" do
    advance 8
    bounds -5..13, 4..5

    data """
    111111111111111111
    """
  end

  bmp_glyph "hyphen.bidiarr.joiner" do
    advance 8
    bounds -1..8, 4..5

    data """
    111111111
    """
  end

  bmp_glyph "equal.larr.head" do
    advance 8
    bounds -4..7, 3..6

    data """
    11111111111
    00000000000
    11111111111
    """
  end

  bmp_glyph "equal.larr.body" do
    advance 8
    bounds -1..7, 3..6

    data """
    11111111
    00000000
    11111111
    """
  end

  bmp_glyph "equal.rarr.head" do
    advance 8
    bounds 1..12, 3..6

    data """
    11111111111
    00000000000
    11111111111
    """
  end

  bmp_glyph "equal.rarr.head2" do
    advance 8
    bounds -1..12, 3..6

    data """
    1111111111111
    0000000000000
    1111111111111
    """
  end

  bmp_glyph "equal.rarr.body" do
    advance 8
    bounds 1..9, 3..6

    data """
    11111111
    00000000
    11111111
    """
  end

  bmp_glyph "equal.bidiarr.short" do
    advance 8
    bounds -4..12, 3..6

    data """
    1111111111111111
    0000000000000000
    1111111111111111
    """
  end

  bmp_glyph "equal.bidiarr.joiner" do
    advance 8
    bounds -1..9, 3..6

    data """
    1111111111
    0000000000
    1111111111
    """
  end
end
