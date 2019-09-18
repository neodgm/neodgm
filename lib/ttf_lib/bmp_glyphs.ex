defmodule TTFLib.BMPGlyphs do
  alias TTFLib.RectilinearShape
  alias TTFLib.RectilinearShape.Path

  defmacro __using__(_opts) do
    quote do
      import unquote(__MODULE__)

      @glyphs []
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

    item =
      quote do
        %{
          type: unquote(type),
          id: unquote(id),
          contours: unquote(contours)
        }
        |> Map.merge(unquote(Macro.escape(attrs)))
      end

    quote do
      @glyphs [unquote(item) | @glyphs]
    end
  end

  defmacro export_glyphs do
    quote do
      @glyphs Enum.reverse(@glyphs)

      def glyphs, do: @glyphs
    end
  end
end
