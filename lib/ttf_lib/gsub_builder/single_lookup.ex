defmodule TTFLib.GSUBBuilder.SingleLookup do
  import TTFLib.GSUBBuilder.Common
  alias TTFLib.TableSource.OTFLayout.Lookup

  defmacro single_subst(name, do: do_block) do
    subtables =
      do_block
      |> get_exprs()
      |> replace_subtable(:subtable@single)

    quote bind_quoted: [name: name, subtables: subtables] do
      %Lookup{type: 1, name: name, subtables: subtables}
    end
  end

  defmacro unquote(:subtable@single)([format: 2], do: do_block) do
    substitutions =
      Enum.map(do_block, fn {:->, _, [[lhs], rhs]} ->
        {get_glyph_id(lhs), get_glyph_id(rhs)}
      end)

    quote do
      %{
        format: 2,
        substitutions: unquote(substitutions)
      }
    end
  end
end
