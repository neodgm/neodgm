defmodule TTFLib.GlyphSource do
  alias TTFLib.RectilinearShape
  alias TTFLib.RectilinearShape.Path

  defmacro export_glyphs(do: do_block) do
    exprs = get_exprs(do_block)

    quote do
      @glyphs List.flatten(unquote(exprs))

      def glyphs, do: @glyphs
    end
  end

  defmacro glyph([{type, id}], do: block) when type in ~w(unicode name)a do
    attrs =
      block
      |> elem(2)
      |> Enum.filter(&match?({a, _, [_]} when is_atom(a), &1))
      |> Enum.map(fn {name, _, [expr]} ->
        {name, expr |> Code.eval_quoted() |> elem(0)}
      end)
      |> Map.new()

    contours =
      attrs.data
      |> String.split(~r/\r?\n/, trim: true)
      |> Enum.map(&to_charlist/1)
      |> RectilinearShape.from_bmp()
      |> Path.transform({{1, 0}, {0, -1}}, {attrs.xmin, attrs.ymax})

    quote do
      %{
        type: unquote(type),
        id: unquote(id),
        contours: unquote(contours)
      }
      |> Map.merge(unquote(Macro.escape(attrs)))
    end
  end

  defp get_exprs(do_block)
  defp get_exprs({:__block__, _, exprs}), do: exprs
  defp get_exprs(expr), do: [expr]
end
