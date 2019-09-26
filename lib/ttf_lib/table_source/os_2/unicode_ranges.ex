defmodule TTFLib.TableSource.OS_2.UnicodeRanges do
  data =
    :neodgm
    |> :code.priv_dir()
    |> Path.join("unicode_ranges.txt")
    |> File.open!([:read, :utf8])
    |> IO.stream(:line)
    |> Stream.map(&String.trim/1)
    |> Stream.map(&String.split/1)
    |> Stream.map(fn [bit_num_str, ranges_str] ->
      {bit_num, _} = Integer.parse(bit_num_str)

      ranges_str
      |> String.split(",", trim: true)
      |> Enum.map(fn range_str ->
        [first, _last] =
          range_str
          |> String.split("-", trim: true)
          |> Enum.map(&(&1 |> Integer.parse(16) |> elem(0)))

        {first, bit_num}
      end)
    end)
    |> Enum.to_list()
    |> List.flatten()
    |> Enum.sort()
    |> Enum.reverse()

  def generate(unicode_glyphs) do
    bit_positions =
      unicode_glyphs
      |> Enum.reduce(MapSet.new(), fn glyph, acc ->
        MapSet.put(acc, get_bit_index(glyph.id))
      end)
      |> MapSet.to_list()
      |> Enum.sort()

    bit_chunks =
      0..127
      |> Enum.map(&if(&1 in bit_positions, do: 1, else: 0))
      |> Enum.reverse()
      |> Enum.chunk_every(32)
      |> Enum.reverse()

    Enum.map(bit_chunks, fn bits ->
      for bit <- bits, into: <<>>, do: <<bit::1>>
    end)
  end

  defp get_bit_index(codepoint) do
    unquote(data)
    |> Enum.find(fn {first, _} -> codepoint >= first end)
    |> elem(1)
  end
end
