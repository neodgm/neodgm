defmodule NeoDGM.BitmapFont.HangulSyllables do
  require TTFLib.GlyphSource
  import TTFLib.GlyphSource

  make_map = fn list ->
    list
    |> Enum.with_index()
    |> Enum.map(fn {x, y} -> {y, x} end)
    |> Map.new()
  end

  cho_table = %{
    true: make_map.([0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 3, 3, 1, 2, 4, 4, 4, 2, 1, 3, 0]),
    false: make_map.([5, 5, 5, 5, 5, 5, 5, 5, 6, 7, 7, 7, 6, 6, 7, 7, 7, 6, 6, 7, 5])
  }

  jung_table = make_map.([0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1])
  jong_table = make_map.([0, 2, 0, 2, 1, 2, 1, 2, 3, 0, 2, 1, 3, 3, 1, 2, 1, 3, 3, 1, 1])

  range =
    case Mix.env() do
      :prod -> ?가..?힣
      _ -> [?가, ?힣]
    end

  export_glyphs do
    Enum.map(range, fn code ->
      index = code - ?가
      cho = div(index, 21 * 28)
      jung = div(rem(index, 21 * 28), 28)
      jong = rem(index, 28)
      cho_set = cho_table[jong === 0][jung]
      jung_set = jung_table[cho] + if jong === 0, do: 0, else: 2
      jong_set = jong_table[jung]

      composite_glyph unicode: code do
        component {:name, "cho_#{cho}_#{cho_set}"}, 0, 0
        component {:name, "jung_#{jung}_#{jung_set}"}, 0, 0

        if jong !== 0 do
          component {:name, "jong_#{jong}_#{jong_set}"}, 0, 0
        end
      end
    end)
  end
end
