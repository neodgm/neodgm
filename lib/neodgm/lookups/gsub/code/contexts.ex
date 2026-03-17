use PixelFont.OTFLayout

lookups NeoDGM.Lookups.GSUB.Code.Contexts, for: "GSUB" do
  module do
    defp scripts, do: %{"DFLT" => [:default], "latn" => [:default]}
  end

  lookup :chained_context, "Short bidirectional arrow chain" do
    feature "calt", scripts()

    context do
      backtrack ~c"<"
      input ~c"-=", apply: "Short bidirectional arrow body"
      lookahead ~c">"
    end
  end

  lookup :chained_context, "Left arrow head chain" do
    feature "calt", scripts()

    context do
      backtrack ~c"<"
      input ~c"-", apply: "Left arrow head"
    end

    context do
      backtrack ~c"<"
      input ~c"=", apply: "Left arrow head"
      lookahead ~c"-="
    end
  end

  lookup :chained_context, "Right arrow head chain" do
    feature "calt", scripts()

    context do
      backtrack ~w(hyphen.larr.head equal.larr.head)
      backtrack ~c"<"
      input ~c"-=", apply: "Right arrow head alt"
      lookahead ~c">"
    end

    context do
      input ~c"-=", apply: "Right arrow head"
      lookahead ~c">"
    end
  end

  lookup :chained_context, "Left arrow body chain" do
    feature "calt", scripts()

    context do
      backtrack ~w(hyphen.larr.head equal.larr.head)
      backtrack ~c"<"
      input ~c"-=", apply: "Left arrow body"
      lookahead ~c"-="
    end

    context do
      backtrack ~w(hyphen.larr.body equal.larr.body)
      input ~c"-=", apply: "Left arrow body"
      lookahead ~c"-="
    end
  end

  lookup :chained_context, "Bidirectional arrow joiner chain" do
    feature "calt", scripts()

    context do
      backtrack ~w(hyphen.larr.head hyphen.larr.body equal.larr.head equal.larr.body)
      input ~c"-=", apply: "Bidirectional arrow joiner"
      lookahead ~w(hyphen.rarr.head equal.rarr.head)
      lookahead ~c">"
    end
  end

  lookup :chained_context, "Left arrow tail chain" do
    feature "calt", scripts()

    context do
      backtrack ~w(hyphen.larr.head hyphen.larr.body equal.larr.head equal.larr.body)
      input ~c"-=", apply: "Left arrow body"
    end
  end

  lookup :reverse_chaining_context, "Right arrow body chain" do
    feature "calt", scripts()

    context do
      lookahead ~w(hyphen.rarr.head hyphen.rarr.body equal.rarr.head equal.rarr.body)
      substitute ?-, "hyphen.rarr.body"
      substitute ?=, "equal.rarr.body"
    end
  end

  lookup :chained_context, "Markup comment chain" do
    feature "calt", scripts()

    context do
      backtrack ~c"<"
      input ~c"!", apply: "Markup comment exclam"
      input ~c"-", apply: "Left arrow body"
      input ~c"-", apply: "Left arrow body"
    end
  end

  lookup :chained_context, "Pipe operator chain" do
    feature "calt", scripts()

    context do
      input ~c"<", apply: "Pipe operator"
      input ~c"|", apply: "Pipe operator"
    end

    context do
      backtrack ~w(bar.pipeoperator)
      input ~c"|", apply: "Pipe operator"
    end

    context do
      input ~c"|", apply: "Pipe operator"
      input ~c">", apply: "Pipe operator"
    end

    context do
      backtrack ~w(bar.pipeoperator)
      input ~c">", apply: "Pipe operator"
    end
  end

  lookup :reverse_chaining_context, "Right pipe operator chain" do
    feature "calt", scripts()

    context do
      lookahead ~w(bar.pipeoperator)
      substitute ?|, "bar.pipeoperator"
    end
  end

  lookup :chained_context, "Equality operators chain" do
    feature "calt", scripts()

    # 3-glyph sequences

    context do
      backtrack ~c"!"
      input ~c"=", apply: "Equals, 2px longer"
      input ~c"=", apply: "Equals, 2px longer"
    end

    context do
      input ~c"=", apply: "Equals, 1px longer"
      input ~c"=", apply: "Equals, 1px longer"
      input ~c"=", apply: "Equals, 1px longer"
    end

    context do
      input ~c"=", apply: "Slashed equals, left"
      input ~c"/", apply: "Slashed equals, left"
      input ~c"=", apply: "Slashed equals, right"
    end

    context do
      input ~c"=", apply: "Equals, 2px longer"
      input ~c":", apply: "Colon between equals"
      input ~c"=", apply: "Equals, 2px longer"
    end

    # 2-glyph sequences

    context do
      input ~c"=", apply: "Equals, 1px longer"
      input ~c"=", apply: "Equals, 1px longer"
    end

    context do
      backtrack ~c"!"
      input ~c"=", apply: "Equals, 3px longer"
    end

    context do
      input ~c":", apply: "Colon between equals"
      input ~c"=", apply: "Equals, 3px longer"
    end

    context do
      input ~c"/", apply: "Slashed equals, left"
      input ~c"=", apply: "Slashed equals, right"
    end
  end
end
