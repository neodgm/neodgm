defmodule TTFLib.Util do
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
