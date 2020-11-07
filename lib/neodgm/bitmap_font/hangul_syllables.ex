use PixelFont.GlyphSource

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

glyph_source NeoDGM.BitmapFont.HangulSyllables do
  Enum.map(range, fn code ->
    index = code - ?가
    cho = div(index, 21 * 28)
    jung = div(rem(index, 21 * 28), 28)
    jong = rem(index, 28)
    cho_set = cho_table[jong === 0][jung]
    jung_set = jung_table[cho] + if jong === 0, do: 0, else: 2
    jong_set = jong_table[jung]
    cho_str = cho |> to_string() |> String.pad_leading(2, "0")
    jung_str = jung |> to_string() |> String.pad_leading(2, "0")
    jong_str = jong |> to_string() |> String.pad_leading(2, "0")

    composite_glyph code do
      component "cho_#{cho_set}_#{cho_str}", 0, 0
      component "jung_#{jung_set}_#{jung_str}", 0, 0

      if jong !== 0 do
        component "jong_#{jong_set}_#{jong_str}", 0, 0
      end
    end
  end)
end
