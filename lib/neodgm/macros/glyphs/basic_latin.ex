defmodule NeoDGM.Macros.Glyphs.BasicLatin do
  @spec digit(0..9, non_neg_integer()) :: Macro.t()
  defmacro digit(digit, variant)

  defmacro digit(0, 0) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0111110
      1100011
      1100011
      1100111
      1101111
      1111011
      1110011
      1100011
      1100011
      0111110
      """
    end
  end

  defmacro digit(0, 1) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0111110
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end
  end

  defmacro digit(0, 2) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0111110
      1100011
      1100011
      1100011
      1101011
      1101011
      1100011
      1100011
      1100011
      0111110
      """
    end
  end

  defmacro digit(0, 3) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0111110
      1100011
      1100011
      1110011
      1111011
      1101111
      1100111
      1100011
      1100011
      0111110
      """
    end
  end

  defmacro digit(0, 4) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0011100
      0110110
      1100011
      1100111
      1101111
      1111011
      1110011
      1100011
      0110110
      0011100
      """
    end
  end

  defmacro digit(0, 5) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0011100
      0110110
      1100011
      1100011
      1100011
      1100011
      1100011
      1100011
      0110110
      0011100
      """
    end
  end

  defmacro digit(0, 6) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0011100
      0110110
      1100011
      1100011
      1101011
      1101011
      1100011
      1100011
      0110110
      0011100
      """
    end
  end

  defmacro digit(0, 7) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0011100
      0110110
      1100011
      1110011
      1111011
      1101111
      1100111
      1100011
      0110110
      0011100
      """
    end
  end

  defmacro digit(1, 0) do
    quote do
      advance 8
      bounds 1..5, 0..10

      data """
      0011
      0111
      1111
      0011
      0011
      0011
      0011
      0011
      0011
      0011
      """
    end
  end

  defmacro digit(2, 0) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      1111110
      0000011
      0000011
      0000011
      0111110
      1100000
      1100000
      1100000
      1100000
      1111111
      """
    end
  end

  defmacro digit(2, 1) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0111110
      1100011
      0000011
      0000011
      0011110
      0110000
      1100000
      1100000
      1100000
      1111111
      """
    end
  end

  defmacro digit(3, 0) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      1111110
      0000011
      0000011
      0000011
      0111110
      0000011
      0000011
      0000011
      0000011
      1111110
      """
    end
  end

  defmacro digit(3, 1) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0111110
      1100011
      0000011
      0000011
      0011110
      0000011
      0000011
      0000011
      1100011
      0111110
      """
    end
  end

  defmacro digit(4, 0) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0011110
      0110110
      1100110
      1100110
      1100110
      1111111
      0000110
      0000110
      0000110
      0000110
      """
    end
  end

  defmacro digit(4, 1) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0001110
      0011110
      0110110
      1100110
      1100110
      1111111
      0000110
      0000110
      0000110
      0000110
      """
    end
  end

  defmacro digit(5, 0) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      1111111
      1100000
      1100000
      1100000
      1111110
      0000011
      0000011
      0000011
      0000011
      1111110
      """
    end
  end

  defmacro digit(5, 1) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      1111111
      1100000
      1100000
      1100000
      1111110
      0000011
      0000011
      0000011
      1100011
      0111110
      """
    end
  end

  defmacro digit(6, 0) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0111110
      1100000
      1100000
      1100000
      1111110
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end
  end

  defmacro digit(6, 1) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0111110
      1100011
      1100000
      1100000
      1111110
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end
  end

  defmacro digit(7, 0) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      1111111
      0000011
      0000011
      0000011
      0001110
      0011000
      0011000
      0011000
      0011000
      0011000
      """
    end
  end

  defmacro digit(7, 1) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      1111111
      0000011
      0000011
      0000110
      0001100
      0011000
      0011000
      0011000
      0011000
      0011000
      """
    end
  end

  defmacro digit(8, 0) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0111110
      1100011
      1100011
      1100011
      0111110
      1100011
      1100011
      1100011
      1100011
      0111110
      """
    end
  end

  defmacro digit(9, 0) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0111110
      1100011
      1100011
      1100011
      0111111
      0000011
      0000011
      0000011
      0000011
      0111110
      """
    end
  end

  defmacro digit(9, 1) do
    quote do
      advance 8
      bounds 0..7, 0..10

      data """
      0111110
      1100011
      1100011
      1100011
      1100011
      0111111
      0000011
      0000011
      1100011
      0111110
      """
    end
  end
end
