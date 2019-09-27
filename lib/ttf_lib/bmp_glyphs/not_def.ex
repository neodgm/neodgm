defmodule TTFLib.BMPGlyphs.NotDef do
  require TTFLib.BMPGlyphs
  import TTFLib.BMPGlyphs

  export_glyphs do
    glyph name: ".notdef" do
      advance 8
      xmin 1
      xmax 7
      ymin -3
      ymax 11

      data """
      111111
      100001
      100001
      100001
      101101
      100101
      101101
      101001
      100001
      101001
      100001
      100001
      100001
      111111
      """
    end
  end
end
