use PixelFont.OTFLayout

lookups NeoDGM.Lookups.GPOS.Code, for: "GPOS" do
  module do
    @chars '!:;|'

    defp scripts, do: %{"DFLT" => [:default], "latn" => [:default]}
  end

  lookup :single_adjustment, "Move 1px forward" do
    adjust_uniform @chars, x_placement: 1
  end

  lookup :single_adjustment, "Move 2px forward" do
    adjust_uniform ~w(equal.2px), x_placement: 2
  end

  lookup :single_adjustment, "Move 1px backward" do
    adjust_uniform @chars ++ ~w(colon.eq equal.2px), x_placement: -1
  end

  lookup :chained_context, "Make two symbols closer" do
    feature "calt", scripts()

    for char <- @chars do
      context do
        input [char], apply: "Move 1px forward"
        input [char], apply: "Move 1px backward"
      end
    end
  end

  lookup :chained_context, "Equality operators" do
    feature "calt", scripts()

    context do
      input '!', apply: "Move 1px backward"
      input ~w(equal.2px), apply: "Move 1px backward"
      lookahead ~w(equal.2px)
    end

    context do
      input ~w(equal.2px), apply: "Move 2px forward"
      lookahead ~w(colon.eq)
      lookahead ~w(equal.2px)
    end

    context do
      input [?!, "colon.eq"], apply: "Move 1px backward"
      lookahead ~w(equal.3px)
    end
  end
end
