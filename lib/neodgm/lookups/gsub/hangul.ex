use PixelFont.OTFLayout

lookups NeoDGM.Lookups.GSUB.Hangul, for: "GSUB" do
  module do
    require PixelFont.Util
    import PixelFont.Util, only: :macros

    defp zpad(num), do: num |> to_string() |> String.pad_leading(2, "0")

    defp jamo_src(codepoints, kind) do
      {set_range, offset} = jamo_params(kind)

      codepoints
      |> List.wrap()
      |> Enum.flat_map(&flat_map_fun/1)
      |> Enum.map(fn code ->
        Enum.map(set_range, &"#{kind}_#{&1}_#{zpad(code - offset)}")
      end)
    end

    defp jamo_params(kind)
    defp jamo_params(:cho), do: {0..7, 0x1100}
    defp jamo_params(:jung), do: {0..3, 0x1161}

    defp flat_map_fun(value)
    defp flat_map_fun(value) when is_integer(value), do: [value]
    defp flat_map_fun(value), do: value
  end

  #
  # Substitutions
  #

  Enum.map(0..7, fn set ->
    lookup :single_substitution, "Hangul choseong, set #{set}" do
      substitutions do
        Enum.map(0..18, fn i -> substitute 0x1100 + i, "cho_#{set}_#{zpad(i)}" end)
      end
    end
  end)

  Enum.map(0..3, fn set ->
    lookup :single_substitution, "Hangul jungseong, set #{set}" do
      substitutions do
        Enum.map(0..20, fn i -> substitute 0x1161 + i, "jung_#{set}_#{zpad(i)}" end)
      end
    end
  end)

  Enum.map(0..3, fn set ->
    lookup :single_substitution, "Hangul jongseong, set #{set}" do
      substitutions do
        Enum.map(0..26, fn i -> substitute 0x11A8 + i, "jong_#{set}_#{zpad(i + 1)}" end)
      end
    end
  end)

  #
  # Contexts
  #

  lookup :chained_context, "Hangul composition" do
    #
    # Selection of choseong set when jongseong is present
    #

    context do
      input [0x1100..0x1112], apply: "Hangul choseong, set 5"
      lookahead [0x1161..0x1168, 0x1175]
      lookahead [0x11A8..0x11C2]
    end

    context do
      input [0x1100..0x1112], apply: "Hangul choseong, set 6"
      lookahead ~i(1169 116D 116E 1172 1173)x
      lookahead [0x11A8..0x11C2]
    end

    context do
      input [0x1100..0x1112], apply: "Hangul choseong, set 7"
      lookahead ~i(116A 116B 116C 116F 1170 1171 1174)x
      lookahead [0x11A8..0x11C2]
    end

    #
    # Selection of jungseong set when jongseong is present
    #

    context do
      backtrack Enum.map(0..7, &["cho_#{&1}_00", "cho_#{&1}_15"])
      input [0x1161..0x1175], apply: "Hangul jungseong, set 2"
      lookahead [0x11A8..0x11C2]
    end

    context do
      backtrack jamo_src([0x1101..0x110E, 0x1110..0x1112], :cho)
      input [0x1161..0x1175], apply: "Hangul jungseong, set 3"
      lookahead [0x11A8..0x11C2]
    end

    #
    # Selection of jongseong set
    #

    context do
      backtrack jamo_src(~i(1161 1163 116A)x, :jung)
      input [0x11A8..0x11C2], apply: "Hangul jongseong, set 0"
    end

    context do
      backtrack jamo_src(~i(1165 1167 116C 116F 1171 1174 1175)x, :jung)
      input [0x11A8..0x11C2], apply: "Hangul jongseong, set 1"
    end

    context do
      backtrack jamo_src(~i(1162 1164 1166 1168 116B 1170)x, :jung)
      input [0x11A8..0x11C2], apply: "Hangul jongseong, set 2"
    end

    context do
      backtrack jamo_src(~i(1169 116D 116E 1172 1173)x, :jung)
      input [0x11A8..0x11C2], apply: "Hangul jongseong, set 3"
    end

    #
    # Selection of choseong set when jongseong is not present
    #

    context do
      input [0x1100..0x1112], apply: "Hangul choseong, set 0"
      lookahead [0x1161..0x1168, 0x1175]
    end

    context do
      input [0x1100..0x1112], apply: "Hangul choseong, set 1"
      lookahead ~i(1169 116D 1173)x
    end

    context do
      input [0x1100..0x1112], apply: "Hangul choseong, set 2"
      lookahead ~i(116E 1172)x
    end

    context do
      input [0x1100..0x1112], apply: "Hangul choseong, set 3"
      lookahead ~i(116A 116B 116C 1174)x
    end

    context do
      input [0x1100..0x1112], apply: "Hangul choseong, set 4"
      lookahead [0x116F..0x1171]
    end

    #
    # Selection of jungseong set when jongseong is not present
    #

    context do
      backtrack Enum.map(0..7, &["cho_#{&1}_00", "cho_#{&1}_15"])
      input [0x1161..0x1175], apply: "Hangul jungseong, set 0"
    end

    context do
      backtrack jamo_src([0x1101..0x110E, 0x1110..0x1112], :cho)
      input [0x1161..0x1175], apply: "Hangul jungseong, set 1"
    end
  end
end
