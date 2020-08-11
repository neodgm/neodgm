defmodule TTFLib.TableSource.OTFLayout.ScriptList do
  alias TTFLib.TableSource.OTFLayout.Script

  defstruct scripts: []

  @type t :: %__MODULE__{scripts: [Script.t()]}

  @spec compile(t(), keyword()) :: binary()
  def compile(%{scripts: scripts}, opts) do
    script_count = length(scripts)
    offset_base = 2 + script_count * 6

    {_, records, tables} =
      Enum.reduce(scripts, {0, [], []}, fn script, {pos, records, tables} ->
        record = [script.tag, <<offset_base + pos::16>>]
        table = Script.compile(script, opts)

        {pos + byte_size(table), [record | records], [table | tables]}
      end)

    data = [
      <<script_count::16>>,
      Enum.reverse(records),
      Enum.reverse(tables)
    ]

    IO.iodata_to_binary(data)
  end

  @spec concat(t(), t()) :: t()
  def concat(%__MODULE__{scripts: lhs}, %__MODULE__{scripts: rhs}) do
    scripts =
      [lhs, rhs]
      |> List.flatten()
      |> Enum.group_by(& &1.tag)
      |> Map.values()
      |> Enum.map(fn ss -> Enum.reduce(ss, &Script.concat(&2, &1)) end)
      |> Enum.sort_by(& &1.tag)

    %__MODULE__{scripts: scripts}
  end
end
