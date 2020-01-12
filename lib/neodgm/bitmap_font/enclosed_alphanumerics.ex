defmodule NeoDGM.BitmapFont.EnclosedAlphanumerics do
  require TTFLib.GlyphSource
  import TTFLib.GlyphSource

  export_glyphs do
    bmp_glyph name: "circle.enclosure" do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00100000000100
      01000000000010
      10000000000001
      10000000000001
      10000000000001
      10000000000001
      10000000000001
      10000000000001
      10000000000001
      10000000000001
      01000000000010
      00100000000100
      00011111111000
      """
    end

    bmp_glyph name: "parens.enclosure" do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00100000000100
      01000000000010
      10000000000001
      10000000000001
      10000000000001
      10000000000001
      10000000000001
      10000000000001
      10000000000001
      10000000000001
      10000000000001
      10000000000001
      01000000000010
      00100000000100
      """
    end

    bmp_glyph name: "zero.enclosed" do
      advance 16
      xmin 5
      xmax 11
      ymin 0
      ymax 10

      data """
      011110
      110011
      110011
      110111
      111111
      111011
      110011
      110011
      110011
      011110
      """
    end

    bmp_glyph name: "zero.enclosed2" do
      advance 16
      xmin 8
      xmax 13
      ymin 0
      ymax 10

      data """
      01110
      11011
      11011
      11011
      11011
      11011
      11011
      11011
      11011
      01110
      """
    end

    bmp_glyph name: "one.enclosed" do
      advance 16
      xmin 3
      xmax 6
      ymin 0
      ymax 10

      data """
      011
      111
      011
      011
      011
      011
      011
      011
      011
      011
      """
    end

    bmp_glyph name: "two.enclosed" do
      advance 16
      xmin 5
      xmax 11
      ymin 0
      ymax 10

      data """
      111110
      000011
      000011
      000011
      011110
      110000
      110000
      110000
      110000
      111111
      """
    end

    bmp_glyph name: "two.enclosed2" do
      advance 16
      xmin 3
      xmax 7
      ymin 0
      ymax 10

      data """
      1110
      0011
      0011
      0011
      0111
      1100
      1100
      1100
      1100
      1111
      """
    end

    bmp_glyph name: "three.enclosed" do
      advance 16
      xmin 5
      xmax 11
      ymin 0
      ymax 10

      data """
      111110
      000011
      000011
      000011
      011110
      000011
      000011
      000011
      000011
      111110
      """
    end

    bmp_glyph name: "four.enclosed" do
      advance 16
      xmin 5
      xmax 11
      ymin 0
      ymax 10

      data """
      001110
      011110
      110110
      110110
      110110
      111111
      000110
      000110
      000110
      000110
      """
    end

    bmp_glyph name: "five.enclosed" do
      advance 16
      xmin 5
      xmax 11
      ymin 0
      ymax 10

      data """
      111111
      110000
      110000
      110000
      111110
      000011
      000011
      000011
      000011
      111110
      """
    end

    bmp_glyph name: "six.enclosed" do
      advance 16
      xmin 5
      xmax 11
      ymin 0
      ymax 10

      data """
      011110
      110000
      110000
      110000
      111110
      110011
      110011
      110011
      110011
      011110
      """
    end

    bmp_glyph name: "seven.enclosed" do
      advance 16
      xmin 5
      xmax 11
      ymin 0
      ymax 10

      data """
      111111
      000011
      000011
      000011
      000110
      001100
      001100
      001100
      001100
      001100
      """
    end

    bmp_glyph name: "eight.enclosed" do
      advance 16
      xmin 5
      xmax 11
      ymin 0
      ymax 10

      data """
      011110
      110011
      110011
      110011
      011110
      110011
      110011
      110011
      110011
      011110
      """
    end

    bmp_glyph name: "nine.enclosed" do
      advance 16
      xmin 5
      xmax 11
      ymin 0
      ymax 10

      data """
      011110
      110011
      110011
      110011
      011111
      000011
      000011
      000011
      000011
      011110
      """
    end

    # Circled Numbers

    composite_glyph unicode: 9312 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:unicode, ?1}, 4, 0
    end

    composite_glyph unicode: 9313 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "two.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9314 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "three.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9315 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "four.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9316 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "five.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9317 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "six.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9318 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "seven.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9319 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "eight.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9320 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "nine.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9321 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "zero.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9322 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 1, 0
      component {:name, "one.enclosed"}, 5, 0
    end

    composite_glyph unicode: 9323 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "two.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9324 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "three.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9325 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "four.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9326 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "five.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9327 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "six.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9328 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "seven.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9329 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "eight.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9330 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "nine.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9331 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "two.enclosed2"}, 0, 0
      component {:name, "zero.enclosed2"}, 0, 0
    end

    # Parenthesized Numbers

    composite_glyph unicode: 9332 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:unicode, ?1}, 4, 0
    end

    composite_glyph unicode: 9333 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "two.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9334 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "three.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9335 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "four.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9336 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "five.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9337 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "six.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9338 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "seven.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9339 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "eight.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9340 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "nine.enclosed"}, 0, 0
    end

    composite_glyph unicode: 9341 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "zero.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9342 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 1, 0
      component {:name, "one.enclosed"}, 5, 0
    end

    composite_glyph unicode: 9343 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "two.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9344 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "three.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9345 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "four.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9346 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "five.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9347 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "six.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9348 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "seven.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9349 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "eight.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9350 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "one.enclosed"}, 0, 0
      component {:name, "nine.enclosed"}, 2, 0
    end

    composite_glyph unicode: 9351 do
      component {:name, "parens.enclosure"}, 0, 0
      component {:name, "two.enclosed2"}, 0, 0
      component {:name, "zero.enclosed2"}, 0, 0
    end

    # Numbers with a Period

    bmp_glyph unicode: 9352 do
      advance 16
      xmin 3
      xmax 12
      ymin 0
      ymax 10

      data """
      001100000
      011100000
      111100000
      001100000
      001100000
      001100000
      001100000
      001100000
      001100011
      001100011
      """
    end

    bmp_glyph unicode: 9353 do
      advance 16
      xmin 3
      xmax 12
      ymin 0
      ymax 10

      data """
      111110000
      000011000
      000011000
      000011000
      011110000
      110000000
      110000000
      110000000
      110000011
      111111011
      """
    end

    bmp_glyph unicode: 9354 do
      advance 16
      xmin 3
      xmax 12
      ymin 0
      ymax 10

      data """
      111110000
      000011000
      000011000
      000011000
      011110000
      000011000
      000011000
      000011000
      000011011
      111110011
      """
    end

    bmp_glyph unicode: 9355 do
      advance 16
      xmin 3
      xmax 12
      ymin 0
      ymax 10

      data """
      001110000
      011110000
      110110000
      110110000
      110110000
      111111000
      000110000
      000110000
      000110011
      000110011
      """
    end

    bmp_glyph unicode: 9356 do
      advance 16
      xmin 3
      xmax 12
      ymin 0
      ymax 10

      data """
      111111000
      110000000
      110000000
      110000000
      111110000
      000011000
      000011000
      000011000
      000011011
      111110011
      """
    end

    bmp_glyph unicode: 9357 do
      advance 16
      xmin 3
      xmax 12
      ymin 0
      ymax 10

      data """
      011110000
      110000000
      110000000
      110000000
      111110000
      110011000
      110011000
      110011000
      110011011
      011110011
      """
    end

    bmp_glyph unicode: 9358 do
      advance 16
      xmin 3
      xmax 12
      ymin 0
      ymax 10

      data """
      111111000
      000011000
      000011000
      000011000
      000110000
      001100000
      001100000
      001100000
      001100011
      001100011
      """
    end

    bmp_glyph unicode: 9359 do
      advance 16
      xmin 3
      xmax 12
      ymin 0
      ymax 10

      data """
      011110000
      110011000
      110011000
      110011000
      011110000
      110011000
      110011000
      110011000
      110011011
      011110011
      """
    end

    bmp_glyph unicode: 9360 do
      advance 16
      xmin 3
      xmax 12
      ymin 0
      ymax 10

      data """
      011110000
      110011000
      110011000
      110011000
      011111000
      000011000
      000011000
      000011000
      000011011
      011110011
      """
    end

    bmp_glyph unicode: 9361 do
      advance 16
      xmin 1
      xmax 14
      ymin 0
      ymax 10

      data """
      0110011110000
      1110110011000
      0110110011000
      0110110111000
      0110111111000
      0110111011000
      0110110011000
      0110110011000
      0110110011011
      0110011110011
      """
    end

    bmp_glyph unicode: 9362 do
      advance 16
      xmin 1
      xmax 14
      ymin 0
      ymax 10

      data """
      0110001100000
      1110011100000
      0110001100000
      0110001100000
      0110001100000
      0110001100000
      0110001100000
      0110001100000
      0110001100011
      0110001100011
      """
    end

    bmp_glyph unicode: 9363 do
      advance 16
      xmin 1
      xmax 14
      ymin 0
      ymax 10

      data """
      0110111110000
      1110000011000
      0110000011000
      0110000011000
      0110011110000
      0110110000000
      0110110000000
      0110110000000
      0110110000011
      0110111111011
      """
    end

    bmp_glyph unicode: 9364 do
      advance 16
      xmin 1
      xmax 14
      ymin 0
      ymax 10

      data """
      0110111110000
      1110000011000
      0110000011000
      0110000011000
      0110011110000
      0110000011000
      0110000011000
      0110000011000
      0110000011011
      0110111110011
      """
    end

    bmp_glyph unicode: 9365 do
      advance 16
      xmin 1
      xmax 14
      ymin 0
      ymax 10

      data """
      0110001110000
      1110011110000
      0110110110000
      0110110110000
      0110110110000
      0110111111000
      0110000110000
      0110000110000
      0110000110011
      0110000110011
      """
    end

    bmp_glyph unicode: 9366 do
      advance 16
      xmin 1
      xmax 14
      ymin 0
      ymax 10

      data """
      0110111111000
      1110110000000
      0110110000000
      0110110000000
      0110111110000
      0110000011000
      0110000011000
      0110000011000
      0110000011011
      0110111110011
      """
    end

    bmp_glyph unicode: 9367 do
      advance 16
      xmin 1
      xmax 14
      ymin 0
      ymax 10

      data """
      0110011110000
      1110110000000
      0110110000000
      0110110000000
      0110111110000
      0110110011000
      0110110011000
      0110110011000
      0110110011011
      0110011110011
      """
    end

    bmp_glyph unicode: 9368 do
      advance 16
      xmin 1
      xmax 14
      ymin 0
      ymax 10

      data """
      0110111111000
      1110000011000
      0110000011000
      0110000011000
      0110000110000
      0110001100000
      0110001100000
      0110001100000
      0110001100011
      0110001100011
      """
    end

    bmp_glyph unicode: 9369 do
      advance 16
      xmin 1
      xmax 14
      ymin 0
      ymax 10

      data """
      0110011110000
      1110110011000
      0110110011000
      0110110011000
      0110011110000
      0110110011000
      0110110011000
      0110110011000
      0110110011011
      0110011110011
      """
    end

    bmp_glyph unicode: 9370 do
      advance 16
      xmin 1
      xmax 14
      ymin 0
      ymax 10

      data """
      0110011110000
      1110110011000
      0110110011000
      0110110011000
      0110011111000
      0110000011000
      0110000011000
      0110000011000
      0110000011011
      0110011110011
      """
    end

    bmp_glyph unicode: 9371 do
      advance 16
      xmin 1
      xmax 14
      ymin 0
      ymax 10

      data """
      1110001110000
      0011011011000
      0011011011000
      0011011011000
      0111011011000
      1100011011000
      1100011011000
      1100011011000
      1100011011011
      1111001110011
      """
    end

    composite_glyph unicode: 9450 do
      component {:name, "circle.enclosure"}, 0, 0
      component {:name, "zero.enclosed"}, 0, 0
    end

    bmp_glyph unicode: 9451 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01110011001110
      11100010001111
      11110011001111
      11110011001111
      11110011001111
      11110011001111
      11110011001111
      11110011001111
      11110011001111
      01110011001110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9452 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01100100000110
      11000111110011
      11100111110011
      11100111110011
      11100110000111
      11100100111111
      11100100111111
      11100100111111
      11100100111111
      01100100000010
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9453 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01100100000110
      11000111110011
      11100111110011
      11100111110011
      11100110000111
      11100111110011
      11100111110011
      11100111110011
      11100111110011
      01100100000110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9454 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01100111000110
      11000110000111
      11100100100111
      11100100100111
      11100100100111
      11100100000011
      11100111100111
      11100111100111
      11100111100111
      01100111100110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9455 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01100100000010
      11000100111111
      11100100111111
      11100100111111
      11100100000111
      11100111110011
      11100111110011
      11100111110011
      11100111110011
      01100100000110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9456 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01100110000110
      11000100111111
      11100100111111
      11100100111111
      11100100000111
      11100100110011
      11100100110011
      11100100110011
      11100100110011
      01100110000110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9457 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01100100000010
      11000111110011
      11100111110011
      11100111110011
      11100111100111
      11100111001111
      11100111001111
      11100111001111
      11100111001111
      01100111001110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9458 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01100110000110
      11000100110011
      11100100110011
      11100100110011
      11100110000111
      11100100110011
      11100100110011
      11100100110011
      11100100110011
      01100110000110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9459 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01100110000110
      11000100110011
      11100100110011
      11100100110011
      11100110000011
      11100111110011
      11100111110011
      11100111110011
      11100111110011
      01100110000110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9460 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01000111000110
      11110010010011
      11110010010011
      11110010010011
      11100010010011
      11001110010011
      11001110010011
      11001110010011
      11001110010011
      01000011000110
      00111111111100
      00011111111000
      """
    end

    bmp_glyph unicode: 9471 do
      advance 16
      xmin 1
      xmax 15
      ymin -2
      ymax 12

      data """
      00011111111000
      00111111111100
      01111000011110
      11110011001111
      11110011001111
      11110010001111
      11110000001111
      11110001001111
      11110011001111
      11110011001111
      11110011001111
      01111000011110
      00111111111100
      00011111111000
      """
    end
  end
end
