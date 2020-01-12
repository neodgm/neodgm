defmodule NeoDGM.BitmapFont.ProgrammingLigatures.Pipes do
  require TTFLib.GlyphSource
  import TTFLib.GlyphSource

  export_glyphs do
    glyph name: "less.pipeoperator" do
      advance 8
      xmin 1
      xmax 8
      ymin -1
      ymax 10

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

    glyph name: "greater.pipeoperator" do
      advance 8
      xmin 0
      xmax 7
      ymin -1
      ymax 10

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

    glyph name: "bar.pipeoperator" do
      advance 8
      xmin 3
      xmax 5
      ymin -1
      ymax 10

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
end
