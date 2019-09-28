defmodule TTFLib.GSUBBuilder.Common do
  def get_glyph_id(expr)
  def get_glyph_id(code) when is_integer(code), do: {:unicode, code}
  def get_glyph_id(name) when is_binary(name), do: {:name, name}

  def get_exprs(do_block)
  def get_exprs({:__block__, _, exprs}) when is_list(exprs), do: exprs
  def get_exprs(expr), do: [expr]

  def replace_subtable(ast, to) do
    Macro.prewalk(ast, fn
      {:subtable, meta, args} -> {to, meta, args}
      x -> x
    end)
  end
end
