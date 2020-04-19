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

  defmacro bmp_glyph([{type, id}], do: block) when type in ~w(unicode name)a do
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

  defmacro composite_glyph([{type, id}], do: do_block) when type in ~w(unicode name)a do
    exprs = get_exprs(do_block)

    quote do
      %{
        type: unquote(type),
        id: unquote(id),
        components: Enum.reject(unquote(exprs), &is_nil/1)
      }
    end
  end

  defmacro component(glyph_id, x_off, y_off) do
    handle_component(glyph_id, x_off, y_off, [])
  end

  defmacro component(glyph_id, x_off, y_off, opts) do
    handle_component(glyph_id, x_off, y_off, opts)
  end

  defp handle_component(glyph_id, x_off, y_off, opts) do
    quote do
      %{
        glyph: unquote(glyph_id),
        x_offset: unquote(x_off),
        y_offset: unquote(y_off),
        flags: unquote(opts)[:flags] || []
      }
    end
  end

  defp get_exprs(do_block)
  defp get_exprs({:__block__, _, exprs}), do: exprs
  defp get_exprs(expr), do: [expr]
end
