defmodule TTFLib.GSUBBuilder.ReverseChainSingleLookup do
  import TTFLib.GSUBBuilder.Common
  alias TTFLib.TableSource.GSUB
  alias TTFLib.TableSource.OTFLayout.Lookup

  defmacro reverse_chain_single_subst(name, do: do_block) do
    subtables =
      do_block
      |> get_exprs()
      |> replace_subtable(:subtable@reverse_chain)

    quote bind_quoted: [name: name, subtables: subtables] do
      %Lookup{owner: GSUB, type: 8, name: name, subtables: subtables}
    end
  end

  defmacro unquote(:subtable@reverse_chain)(args, block)

  defmacro unquote(:subtable@reverse_chain)([format: format], do: do_block) do
    exprs =
      do_block
      |> get_exprs()
      |> Macro.prewalk(&mangle_sequence_call(&1, format))

    quote bind_quoted: [format: format, exprs: exprs] do
      exprs |> Map.new() |> Map.put(:format, format)
    end
  end

  defmacro unquote(:sequence@reverse_chain)(type, subtable_format, sequence)

  defmacro unquote(:sequence@reverse_chain)(type, 1, sequence) do
    {type, Enum.map(sequence, fn coverage -> Enum.map(coverage, &get_glyph_id/1) end)}
  end

  defp mangle_sequence_call(ast, subtable_format)

  defp mangle_sequence_call({:backtrack, meta, args}, subtable_format) do
    {:sequence@reverse_chain, meta, [:backtrack, subtable_format | args]}
  end

  defp mangle_sequence_call({:lookahead, meta, args}, subtable_format) do
    {:sequence@reverse_chain, meta, [:lookahead, subtable_format | args]}
  end

  defp mangle_sequence_call(x, _), do: x
end
