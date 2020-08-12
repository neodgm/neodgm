defmodule NeoDGM.BitmapFont.Pro.GeneralPunctuation do
  require TTFLib.GlyphSource
  import TTFLib.GlyphSource

  export_glyphs based_on: NeoDGM.BitmapFont.GeneralPunctuation do
    # U+2000 EN QUAD
    # U+2001 EM QUAD
    # U+2002 EN SPACE
    # U+2003 EM SPACE
    # U+2004 THREE-PER-EM SPACE
    # U+2005 FOUR-PER-EM SPACE
    # U+2006 SIX-PER-EM SPACE
    # U+2007 FIGURE SPACE
    # U+2008 PUNCTUATION SPACE
    # U+2009 THIN SPACE
    # U+200A HAIR SPACE
    # U+200B ZERO WIDTH SPACE
    # U+200C ZERO WIDTH NON-JOINER
    # U+200D ZERO WIDTH JOINER
    # U+200E LEFT-TO-RIGHT MARK
    # U+200F RIGHT-TO-LEFT MARK
    0x2000..0x200F
    |> Enum.zip([8, 16, 8, 16, 5, 4, 3, 8, 8, 3, 1, 0, 0, 0, 0, 0])
    |> Enum.map(fn {code, aw} ->
      bmp_glyph unicode: code do
        advance aw
        xmin 0
        xmax 0
        ymin 0
        ymax 0
        data ""
      end
    end)
  end
end
