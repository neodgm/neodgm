defmodule NeoDGM.BitmapFont.ProgrammingLigatures.Markup do
  require TTFLib.BMPGlyphs
  import TTFLib.BMPGlyphs

  export_glyphs do
    glyph name: "exclam.markupcomment" do
      advance 8
      xmin -5
      xmax 7
      ymin 0
      ymax 10

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
end