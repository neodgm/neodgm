use PixelFont.OTFLayout

lookups NeoDGM.Lookups.GSUB.Code.Contexts, for: "GSUB" do
  module do
    defp scripts, do: %{"DFLT" => [:default], "latn" => [:default]}
  end

  lookup :chained_context, "Short bidirectional arrow chain" do
    feature "calt", scripts()

    context do
      backtrack '<'
      input '-=', apply: "Short bidirectional arrow body"
      lookahead '>'
    end
  end

  lookup :chained_context, "Left arrow head chain" do
    feature "calt", scripts()

    context do
      backtrack '<'
      input '-', apply: "Left arrow head"
    end

    context do
      backtrack '<'
      input '=', apply: "Left arrow head"
      lookahead '-='
    end
  end

  lookup :chained_context, "Right arrow head chain" do
    feature "calt", scripts()

    context do
      backtrack ~w(hyphen.larr.head equal.larr.head)
      backtrack '<'
      input '-=', apply: "Right arrow head alt"
      lookahead '>'
    end

    context do
      input '-=', apply: "Right arrow head"
      lookahead '>'
    end
  end

  lookup :chained_context, "Left arrow body chain" do
    feature "calt", scripts()

    context do
      backtrack ~w(hyphen.larr.head equal.larr.head)
      backtrack '<'
      input '-=', apply: "Left arrow body"
      lookahead '-='
    end

    context do
      backtrack ~w(hyphen.larr.body equal.larr.body)
      input '-=', apply: "Left arrow body"
      lookahead '-='
    end
  end

  lookup :chained_context, "Bidirectional arrow joiner chain" do
    feature "calt", scripts()

    context do
      backtrack ~w(hyphen.larr.head hyphen.larr.body equal.larr.head equal.larr.body)
      input '-=', apply: "Bidirectional arrow joiner"
      lookahead ~w(hyphen.rarr.head equal.rarr.head)
      lookahead '>'
    end
  end

  lookup :chained_context, "Left arrow tail chain" do
    feature "calt", scripts()

    context do
      backtrack ~w(hyphen.larr.head hyphen.larr.body equal.larr.head equal.larr.body)
      input '-=', apply: "Left arrow body"
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
      backtrack '<'
      input '!', apply: "Markup comment exclam"
      input '-', apply: "Left arrow body"
      input '-', apply: "Left arrow body"
    end
  end

  lookup :chained_context, "Pipe operator chain" do
    feature "calt", scripts()

    context do
      input '<', apply: "Pipe operator"
      input '|', apply: "Pipe operator"
    end

    context do
      backtrack ~w(bar.pipeoperator)
      input '|', apply: "Pipe operator"
    end

    context do
      input '|', apply: "Pipe operator"
      input '>', apply: "Pipe operator"
    end

    context do
      backtrack ~w(bar.pipeoperator)
      input '>', apply: "Pipe operator"
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
      backtrack '!'
      input '=', apply: "Equals, 2px longer"
      input '=', apply: "Equals, 2px longer"
    end

    context do
      input '=', apply: "Slashed equals, left"
      input '/', apply: "Slashed equals, left"
      input '=', apply: "Slashed equals, right"
    end

    context do
      input '=', apply: "Equals, 2px longer"
      input ':', apply: "Colon between equals"
      input '=', apply: "Equals, 2px longer"
    end

    # 2-glyph sequences

    context do
      input '=', apply: "Equals, 1px longer"
      input '=', apply: "Equals, 1px longer"
    end

    context do
      backtrack '!'
      input '=', apply: "Equals, 3px longer"
    end

    context do
      input ':', apply: "Colon between equals"
      input '=', apply: "Equals, 3px longer"
    end

    context do
      input '/', apply: "Slashed equals, left"
      input '=', apply: "Slashed equals, right"
    end

    # Equals sequence continuation

    context do
      backtrack ~w(equal.1px)
      input '=', apply: "Equals, 1px longer"
    end
  end
end
