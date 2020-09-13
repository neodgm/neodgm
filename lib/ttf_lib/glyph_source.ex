defmodule TTFLib.GlyphSource do
  require TTFLib.RectilinearShape, as: RectilinearShape
  require TTFLib.RectilinearShape.Path, as: Path

  @type source_options :: [based_on: module()]

  @spec __using__(keyword()) :: Macro.t()
  defmacro __using__(_options) do
    quote do
      import unquote(__MODULE__), only: [glyph_source: 2, glyph_source: 3]
    end
  end

  @spec glyph_source(module(), do: Macro.t()) :: Macro.t()
  @spec glyph_source(module(), source_options(), do: Macro.t()) :: Macro.t()
  defmacro glyph_source(name, options \\ [], do: do_block) do
    exprs = get_exprs(do_block)

    map_expr =
      quote do
        unquote(exprs)
        |> List.flatten()
        |> unquote(__MODULE__).__make_contours__()
        |> Map.new()
      end
      |> handle_based_on(options[:based_on])

    quote do
      defmodule unquote(name) do
        # TODO: limit macros to be imported
        import unquote(__MODULE__)

        @glyph_map unquote(map_expr)
        @glyph_list @glyph_map |> Map.values() |> Enum.sort(&(&1.id <= &2.id))

        def __glyph_map__, do: @glyph_map
        def glyphs, do: @glyph_list
      end
    end
  end

  defp handle_based_on(map_expr, expr)
  defp handle_based_on(map_expr, nil), do: map_expr

  defp handle_based_on(map_expr, module) when is_atom(module) do
    quote(do: Map.merge(unquote(module).__glyph__map__(), unquote(map_expr)))
  end

  defp handle_based_on(map_expr, {:__aliases__, _, _} = alias_expr) do
    quote(do: Map.merge(unquote(alias_expr).__glyph_map__(), unquote(map_expr)))
  end

  defp handle_based_on(_map_expr, x) do
    raise "expected the value of :based_on keyword to be known " <>
            "as an atom or an alias in compilation time, got: #{inspect(x)}"
  end

  defmacro bmp_glyph([{type, id}], do: block) when type in ~w(unicode name)a do
    exprs = get_exprs(block)

    map_expr =
      quote do
        [
          {:type, unquote(type)},
          {:id, unquote(id)},
          {:contours, unquote(nil)}
          | List.flatten(unquote(exprs))
        ]
        |> Map.new()
      end

    {{type, id}, map_expr}
  end

  Enum.each(~w(advance data)a, fn key ->
    @spec unquote(key)(Macro.t()) :: Macro.t()
    defmacro unquote(key)(expr), do: {unquote(key), expr}
  end)

  @spec bounds(Macro.t(), Macro.t()) :: Macro.t()
  defmacro bounds(x_bounds, y_bounds) do
    {:.., _, [xmin, xmax]} = x_bounds
    {:.., _, [ymin, ymax]} = y_bounds

    [xmin: xmin, xmax: xmax, ymin: ymin, ymax: ymax]
  end

  def __make_contours__(glyphs) do
    glyphs
    |> Task.async_stream(fn
      {id, %{data: data, xmin: xmin, ymax: ymax} = glyph} ->
        contours =
          data
          |> String.split(~r/\r?\n/, trim: true)
          |> Enum.map(&to_charlist/1)
          |> RectilinearShape.from_bmp()
          |> Path.transform({{1, 0}, {0, -1}}, {xmin, ymax})

        {id, %{glyph | contours: contours}}

      {id, %{} = glyph} ->
        {id, glyph}
    end)
    |> Enum.map(&elem(&1, 1))
  end

  defmacro composite_glyph([{type, id}], do: do_block) when type in ~w(unicode name)a do
    exprs = get_exprs(do_block)

    quote do
      {{unquote(type), unquote(id)},
       %{
         type: unquote(type),
         id: unquote(id),
         components: Enum.reject(unquote(exprs), &is_nil/1)
       }}
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
