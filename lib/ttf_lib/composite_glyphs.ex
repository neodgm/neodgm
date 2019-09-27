defmodule TTFLib.CompositeGlyphs do
  defmacro export_glyphs(do: do_block) do
    exprs = get_exprs(do_block)

    quote do
      @glyphs List.flatten(unquote(exprs))

      def glyphs, do: @glyphs
    end
  end

  defmacro glyph([{type, id}], do: do_block) when type in ~w(unicode name)a do
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
    quote do
      %{
        glyph: unquote(glyph_id),
        x_offset: unquote(x_off),
        y_offset: unquote(y_off)
      }
    end
  end

  defp get_exprs(do_block)
  defp get_exprs({:__block__, _, exprs}), do: exprs
  defp get_exprs(expr), do: [expr]
end
