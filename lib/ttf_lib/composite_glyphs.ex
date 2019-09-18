defmodule TTFLib.CompositeGlyphs do
  defmacro __using__(_opts) do
    quote do
      import unquote(__MODULE__)

      @glyphs []
    end
  end

  defmacro glyph([{type, id}], do: block) when type in ~w(unicode name)a do
    item =
      quote do
        %{
          type: unquote(type),
          id: unquote(id)
        }
      end

    quote do
      @components []

      unquote(block)

      @glyphs [Map.put(unquote(item), :components, @components) | @glyphs]
    end
  end

  defmacro component(glyph_id, x_off, y_off) do
    component_expr =
      quote do
        %{
          glyph: unquote(glyph_id),
          x_offset: unquote(x_off),
          y_offset: unquote(y_off)
        }
      end

    quote do
      @components @components ++ [unquote(component_expr)]
    end
  end

  defmacro export_glyphs do
    quote do
      @glyphs Enum.reverse(@glyphs)

      def glyphs, do: @glyphs
    end
  end
end
