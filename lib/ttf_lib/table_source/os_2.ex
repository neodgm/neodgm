defmodule TTFLib.TableSource.OS_2 do
  alias TTFLib.CompiledTable
  alias TTFLib.GlyphStorage
  alias TTFLib.TableSource.OS_2.UnicodeRanges

  @spec compile(integer()) :: CompiledTable.t()
  def compile(version)

  def compile(4) do
    all_glyphs = GlyphStorage.all()
    unicode_glyphs = Enum.filter(all_glyphs, &(&1.type === :unicode))

    {first_char, last_char} =
      unicode_glyphs
      |> Enum.map(& &1.id)
      |> Enum.min_max(fn -> {0, 0} end)

    data = [
      # Version
      <<4::16>>,
      # xAvgCharWidth
      <<8::16>>,
      # usWeightClass (400 Regular)
      <<400::16>>,
      # usWidthClass (5 Medium)
      <<5::16>>,
      # fsType
      <<0::4, 0::2, 0::1, 0::1, 0::4, 0::4>>,
      # ySubscriptXSize
      <<8::16>>,
      # ySubscriptYSize
      <<16::16>>,
      # ySubscriptXOffset
      <<0::16>>,
      # ySubscriptYOffset
      <<8::16>>,
      # ySuperscriptXSize
      <<8::16>>,
      # ySuperscriptYSize
      <<16::16>>,
      # ySuperscriptXOffset
      <<0::16>>,
      # ySuperscriptYOffset
      <<8::16>>,
      # yStrikeoutSize
      <<1::16>>,
      # yStrikeoutPosition
      <<4::16>>,
      # sFamilyClass
      <<0::16>>,
      # panose[10]
      <<2::8, 1::8, 5::8, 9::8, 6::8, 2::8, 1::8, 4::8, 2::8, 3::8>>,
      # ulUnicodeRange1..4
      UnicodeRanges.generate(unicode_glyphs),
      # achVendID
      "5757",
      # fsSelection
      <<0b0000_0000_0100_0000::16>>,
      # usFirstCharIndex
      <<first_char::16>>,
      # usLastCharIndex
      <<last_char::16>>,
      # sTypoAscender
      <<12::16>>,
      # sTypoDescender
      <<-4::16>>,
      # sTypoLineGap
      <<0::16>>,
      # usWinAscent
      <<12::16>>,
      # usWinDescent
      <<4::16>>,
      # ulCodePageRange1
      <<0b0100_0000_0010_1000_0000_0000_0000_0000::32>>,
      # ulCodePageRange2
      <<0b0000_0000_0000_0000_0000_0000_0000_0000::32>>,
      # sxHeight
      <<7::16>>,
      # sCapHeight
      <<10::16>>,
      # usDefaultChar
      <<0::16>>,
      # usBreakChar
      <<32::16>>,
      # usMaxContext (TODO)
      <<0::16>>
    ]

    CompiledTable.new("OS/2", IO.iodata_to_binary(data))
  end
end
