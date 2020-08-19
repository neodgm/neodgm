defmodule TTFLib.Util do
  @spec sigil_i(Macro.t(), keyword()) :: Macro.t()
  defmacro sigil_i(str_expr, mods)
  defmacro sigil_i(str_expr, ''), do: do_sigil_i(str_expr, 10)
  defmacro sigil_i(str_expr, 'o'), do: do_sigil_i(str_expr, 8)
  defmacro sigil_i(str_expr, 'd'), do: do_sigil_i(str_expr, 10)
  defmacro sigil_i(str_expr, 'x'), do: do_sigil_i(str_expr, 16)

  @spec sigil_i(Macro.t(), integer()) :: Macro.t()
  defp do_sigil_i(str_expr, base) do
    quote(do: unquote(__MODULE__).__sigil_i__(unquote(str_expr), unquote(base)))
  end

  @spec __sigil_i__(binary(), integer()) :: [integer()]
  def __sigil_i__(str, base) do
    str
    |> String.split(~r/\s+/, trim: true)
    |> Enum.map(&try_parse_integer(&1, base))
  end

  @spec try_parse_integer(binary(), integer()) :: integer() | no_return()
  defp try_parse_integer(str, base) do
    str
    |> Integer.parse(base)
    |> case do
      {integer, ""} -> integer
      {_, _} -> raise "#{inspect(str)} is not a valid integer in base #{base}"
      :error -> raise "#{inspect(str)} is not a valid integer in base #{base}"
    end
  end

  @spec offsetted_binaries(list(), integer(), (term() -> iodata())) ::
          {integer(), [binary()], [binary()]}
  def offsetted_binaries(sources, offset_base, fun) do
    {pos, offsets, data} =
      sources
      |> Enum.reduce({offset_base, [], []}, fn source, {pos, offsets, data} ->
        binary = IO.iodata_to_binary(fun.(source))

        {pos + byte_size(binary), [pos | offsets], [binary | data]}
      end)

    {pos, offsets |> Enum.reverse() |> Enum.map(&<<&1::16>>), Enum.reverse(data)}
  end

  @spec get_glyph_id(integer() | binary()) :: {atom(), integer() | binary()}
  def get_glyph_id(expr)
  def get_glyph_id(code) when is_integer(code), do: {:unicode, code}
  def get_glyph_id(name) when is_binary(name), do: {:name, name}
end
