use PixelFont.OTFLayout

lookups NeoDGM.Lookups.GSUB.StylisticVariants.AltDigits, for: "GSUB" do
  module do
    defp scripts, do: %{"DFLT" => [:default], "latn" => [:default]}
  end

  lookup :single_substitution, "Alternative forms of digits" do
    feature "ss02", scripts()

    substitutions do
      substitute ?0, "zero.cv08.4"
      substitute ?2, "two.cv09.1"
      substitute ?3, "three.cv10.1"
      substitute ?4, "four.cv11.1"
      substitute ?5, "five.cv12.1"
      substitute ?6, "six.cv13.1"
      substitute ?7, "seven.cv14.1"
      substitute ?9, "nine.cv15.1"
    end
  end

  lookup :alternate, "Alternative forms of digit zero" do
    feature "cv08", scripts()

    substitutions do
      substitute ?0, [
        "zero.cv08.1",
        "zero.cv08.2",
        "zero.cv08.3",
        "zero.cv08.4",
        "zero.cv08.5",
        "zero.cv08.6",
        "zero.cv08.7"
      ]

      substitute "zero.cv08.4", [
        "zero.cv08.5",
        "zero.cv08.6",
        "zero.cv08.7",
        ?0,
        "zero.cv08.1",
        "zero.cv08.2",
        "zero.cv08.3"
      ]
    end
  end

  [
    {"two", ?2, "cv09"},
    {"three", ?3, "cv10"},
    {"four", ?4, "cv11"},
    {"five", ?5, "cv12"},
    {"six", ?6, "cv13"},
    {"seven", ?7, "cv14"},
    {"nine", ?9, "cv15"}
  ]
  |> Enum.map(fn {digit_name, glyph_id, feature_tag} ->
    lookup :single_substitution, "Alternative forms of digit #{digit_name}" do
      feature feature_tag, scripts()

      substitutions do
        substitute glyph_id, "#{digit_name}.#{feature_tag}.1"
      end
    end
  end)
end
