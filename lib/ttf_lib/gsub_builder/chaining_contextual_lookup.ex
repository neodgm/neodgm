defmodule TTFLib.GSUBBuilder.ChainingContextualLookup do
  import TTFLib.GSUBBuilder.Common
  alias TTFLib.TableSource.GSUB
  alias TTFLib.TableSource.OTFLayout.Lookup

  defmacro chaining_contextual_subst(name, do: do_block) do
    subtables =
      do_block
      |> get_exprs()
      |> replace_subtable(:subtable@chaining_contextual)

    quote bind_quoted: [name: name, subtables: subtables] do
      %Lookup{owner: GSUB, type: 6, name: name, subtables: subtables}
    end
  end

  defmacro unquote(:subtable@chaining_contextual)(args, block)

  defmacro unquote(:subtable@chaining_contextual)([format: format], do: do_block) do
    exprs =
      do_block
      |> get_exprs()
      |> Macro.prewalk(&mangle_sequence_call(&1, format))

    quote bind_quoted: [format: format, exprs: exprs] do
      exprs |> Map.new() |> Map.put(:format, format)
    end
  end

  defmacro unquote(:sequence@chaining_contextual)(type, subtable_format, sequence)

  defmacro unquote(:sequence@chaining_contextual)(type, 1, sequence) do
    {type, Enum.map(sequence, &get_glyph_id/1)}
  end

  defmacro unquote(:sequence@chaining_contextual)(type, 3, sequence) do
    {type, Enum.map(sequence, fn coverage -> Enum.map(coverage, &get_glyph_id/1) end)}
  end

  defmacro substitutions(do: do_block) do
    substitutions = Enum.map(do_block, fn {:->, _, [[lhs], rhs]} -> {lhs, rhs} end)

    {:substitutions, substitutions}
  end

  defp mangle_sequence_call(ast, subtable_format)

  defp mangle_sequence_call({:backtrack, meta, args}, subtable_format) do
    {:sequence@chaining_contextual, meta, [:backtrack, subtable_format | args]}
  end

  defp mangle_sequence_call({:input, meta, args}, subtable_format) do
    {:sequence@chaining_contextual, meta, [:input, subtable_format | args]}
  end

  defp mangle_sequence_call({:lookahead, meta, args}, subtable_format) do
    {:sequence@chaining_contextual, meta, [:lookahead, subtable_format | args]}
  end

  defp mangle_sequence_call(x, _), do: x
end
