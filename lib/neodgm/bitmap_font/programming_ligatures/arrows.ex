defmodule NeoDGM.BitmapFont.ProgrammingLigatures.Arrows do
  require TTFLib.BMPGlyphs
  import TTFLib.BMPGlyphs

  export_glyphs do
    glyph name: "hyphen.larr.head" do
      advance 8
      xmin -5
      xmax 7
      ymin 4
      ymax 5

      data """
      111111111111
      """
    end

    glyph name: "hyphen.larr.body" do
      advance 8
      xmin -1
      xmax 7
      ymin 4
      ymax 5

      data """
      11111111
      """
    end

    glyph name: "hyphen.rarr.head" do
      advance 8
      xmin 0
      xmax 13
      ymin 4
      ymax 5

      data """
      1111111111111
      """
    end

    glyph name: "hyphen.rarr.body" do
      advance 8
      xmin 0
      xmax 8
      ymin 4
      ymax 5

      data """
      11111111
      """
    end

    glyph name: "hyphen.marr.body" do
      advance 8
      xmin -5
      xmax 13
      ymin 4
      ymax 5

      data """
      111111111111111111
      """
    end

    glyph name: "equal.larr.head" do
      advance 8
      xmin -4
      xmax 7
      ymin 3
      ymax 6

      data """
      11111111111
      00000000000
      11111111111
      """
    end

    glyph name: "equal.larr.body" do
      advance 8
      xmin -1
      xmax 7
      ymin 3
      ymax 6

      data """
      11111111
      00000000
      11111111
      """
    end

    glyph name: "equal.rarr.head" do
      advance 8
      xmin 1
      xmax 12
      ymin 3
      ymax 6

      data """
      11111111111
      00000000000
      11111111111
      """
    end

    glyph name: "equal.rarr.body" do
      advance 8
      xmin 1
      xmax 9
      ymin 3
      ymax 6

      data """
      11111111
      00000000
      11111111
      """
    end

    glyph name: "equal.marr.body" do
      advance 8
      xmin -4
      xmax 12
      ymin 3
      ymax 6

      data """
      1111111111111111
      0000000000000000
      1111111111111111
      """
    end
  end
end
