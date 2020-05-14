defmodule TTFLib.TableSource.GPOS.ValueRecord do
  defstruct x_placement: 0,
            y_placement: 0,
            x_advance: 0,
            y_advance: 0

  @type t :: %__MODULE__{
          x_placement: integer(),
          y_placement: integer(),
          x_advance: integer(),
          y_advance: integer()
        }

  value_format_flags = [
    x_placement: 0x01,
    y_placement: 0x02,
    x_advance: 0x04,
    y_advance: 0x08
  ]

  @spec compile(t(), [atom()]) :: iodata()
  def compile(record, value_format) do
    record
    |> Map.take(value_format)
    |> Enum.map(fn {k, v} -> {flag_value(k), v} end)
    |> Enum.sort_by(&elem(&1, 0))
    |> Enum.map(&<<elem(&1, 1)::16>>)
  end

  @spec compile_value_format([atom()]) :: binary()
  def compile_value_format(flags) do
    value = flags |> Enum.map(&flag_value/1) |> Enum.sum()

    <<value::16>>
  end

  @spec flag_value(atom()) :: integer()
  defp flag_value(name)

  Enum.each(value_format_flags, fn {flag_name, value} ->
    defp flag_value(unquote(flag_name)), do: unquote(value)
  end)
end
