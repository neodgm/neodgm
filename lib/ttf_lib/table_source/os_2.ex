defmodule TTFLib.TableSource.OS_2 do
  alias TTFLib.CompiledTable
  alias TTFLib.GlyphStorage
  alias TTFLib.TableSource.OS_2.Enums
  alias TTFLib.TableSource.OS_2.UnicodeRanges

  @spec compile(map(), map(), integer()) :: CompiledTable.t()
  def compile(params, metrics, version)

  def compile(params, metrics, 4) do
    all_glyphs = GlyphStorage.all()
    unicode_glyphs = Enum.filter(all_glyphs, &(&1.type === :unicode))
    avg_char_width = calculate_avg_char_width(all_glyphs, params)

    {first_char, last_char} =
      unicode_glyphs
      |> Enum.map(& &1.id)
      |> Enum.min_max(fn -> {0, 0} end)

    data = [
      # Version
      <<4::16>>,
      <<avg_char_width::16>>,
      <<Enums.weight_class(params.weight_class)::16>>,
      <<Enums.width_class(params.width_class)::16>>,
      # fsType
      <<0::4, 0::2, 0::1, 0::1, 0::4, 0::4>>,
      <<elem(params.subscript_size, 0)::16>>,
      <<elem(params.subscript_size, 1)::16>>,
      <<elem(params.subscript_offset, 0)::16>>,
      <<elem(params.subscript_offset, 1)::16>>,
      <<elem(params.superscript_size, 0)::16>>,
      <<elem(params.superscript_size, 1)::16>>,
      <<elem(params.superscript_offset, 0)::16>>,
      <<elem(params.superscript_offset, 1)::16>>,
      <<params.strike_size::16>>,
      <<params.strike_position::16>>,
      <<Enums.family_class(params.family_class)::little-16>>,
      for(x <- params.panose, into: "", do: <<x::8>>),
      # ulUnicodeRange1..4
      UnicodeRanges.generate(unicode_glyphs),
      params.vendor_id,
      # fsSelection
      <<0b0000_0000_0100_0000::16>>,
      <<first_char::16>>,
      <<last_char::16>>,
      # sTypoAscender
      <<metrics.ascender::16>>,
      # sTypoDescender
      <<-metrics.descender::16>>,
      <<metrics.line_gap::16>>,
      # usWinAscent
      <<metrics.ascender::16>>,
      # usWinDescent
      <<metrics.descender::16>>,
      # ulCodePageRange1
      <<0b0100_0000_0010_1000_0000_0000_0000_0000::32>>,
      # ulCodePageRange2
      <<0b0000_0000_0000_0000_0000_0000_0000_0000::32>>,
      <<params.x_height::16>>,
      <<params.cap_height::16>>,
      # usDefaultChar
      <<0::16>>,
      # usBreakChar
      <<32::16>>,
      # usMaxContext (TODO)
      <<0::16>>
    ]

    CompiledTable.new("OS/2", IO.iodata_to_binary(data))
  end

  defp calculate_avg_char_width(glyphs, options)
  defp calculate_avg_char_width(_glyphs, %{avg_char_width: x}) when is_integer(x), do: x

  defp calculate_avg_char_width(glyphs, %{avg_char_width: :auto}) do
    num_glyphs = length(glyphs)

    glyphs
    |> Enum.map(fn
      %{advance: advance} ->
        advance

      %{components: components} ->
        components
        |> Enum.map(& &1.glyph.advance)
        |> Enum.max(fn -> 0 end)
    end)
    |> Enum.sum()
    |> div(num_glyphs)
  end
end
