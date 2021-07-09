use PixelFont.OTFLayout

lookups NeoDGM.Lookups.GSUB.FullwidthBoxes, for: "GSUB" do
  lookup :single_substitution, "Fullwidth box drawing glyphs" do
    feature "FWBX", %{
      "DFLT" => [:default],
      "latn" => [:default],
      "hang" => [:default],
      "jamo" => [:default]
    }

    substitutions do
      for code <- 0x2500..0x257F do
        substitute code, "uni#{code |> Integer.to_string(16) |> String.upcase()}.FWBX"
      end
    end
  end
end
