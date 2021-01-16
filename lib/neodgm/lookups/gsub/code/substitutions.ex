use PixelFont.OTFLayout

lookups NeoDGM.Lookups.GSUB.Code.Substitutions, for: "GSUB" do
  lookup :single_substitution, "Short bidirectional arrow body" do
    substitutions do
      substitute ?-, "hyphen.bidiarr.short"
      substitute ?=, "equal.bidiarr.short"
    end
  end

  lookup :single_substitution, "Bidirectional arrow joiner" do
    substitutions do
      substitute ?-, "hyphen.bidiarr.joiner"
      substitute ?=, "equal.bidiarr.joiner"
    end
  end

  lookup :single_substitution, "Left arrow head" do
    substitutions do
      substitute ?-, "hyphen.larr.head"
      substitute ?=, "equal.larr.head"
    end
  end

  lookup :single_substitution, "Left arrow body" do
    substitutions do
      substitute ?-, "hyphen.larr.body"
      substitute ?=, "equal.larr.body"
    end
  end

  lookup :single_substitution, "Right arrow head" do
    substitutions do
      substitute ?-, "hyphen.rarr.head"
      substitute ?=, "equal.rarr.head"
    end
  end

  lookup :single_substitution, "Right arrow head alt" do
    substitutions do
      substitute ?-, "hyphen.rarr.head2"
      substitute ?=, "equal.rarr.head2"
    end
  end

  lookup :single_substitution, "Right arrow body" do
    substitutions do
      substitute ?-, "hyphen.rarr.body"
      substitute ?=, "equal.rarr.body"
    end
  end

  lookup :single_substitution, "Markup comment exclam" do
    substitutions do
      substitute ?!, "exclam.markupcomment"
    end
  end

  lookup :single_substitution, "Pipe operator" do
    substitutions do
      substitute ?<, "less.pipeoperator"
      substitute ?>, "greater.pipeoperator"
      substitute ?|, "bar.pipeoperator"
    end
  end
end
