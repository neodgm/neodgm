defmodule NeoDGM.BitmapFont.Components.Diacritics do
  require TTFLib.GlyphSource
  import TTFLib.GlyphSource

  export_glyphs do
    bmp_glyph name: "grave.component" do
      advance 8
      xmin 2
      xmax 5
      ymin 10
      ymax 12

      data """
      110
      011
      """
    end

    bmp_glyph name: "circumflex.component" do
      advance 8
      xmin 1
      xmax 6
      ymin 10
      ymax 12

      data """
      01110
      11011
      """
    end

    bmp_glyph name: "tilde.component" do
      advance 8
      xmin 0
      xmax 7
      ymin 10
      ymax 12

      data """
      0111011
      1101110
      """
    end

    bmp_glyph name: "dieresis.component" do
      advance 8
      xmin 1
      xmax 6
      ymin 10
      ymax 11

      data """
      11011
      """
    end

    bmp_glyph name: "dieresis.component.i" do
      advance 8
      xmin 1
      xmax 7
      ymin 10
      ymax 11

      data """
      110011
      """
    end

    bmp_glyph name: "ring.component" do
      advance 8
      xmin 1
      xmax 6
      ymin 9
      ymax 12

      data """
      01110
      11011
      01110
      """
    end
  end
end
