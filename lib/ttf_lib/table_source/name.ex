defmodule TTFLib.TableSource.Name do
  alias TTFLib.CompiledTable

  @spec compile(map(), integer()) :: CompiledTable.t()
  def compile(map, format)

  def compile(map, 0) do
    records = prepare_records(map)
    data_offset = 6 + 12 * length(records)

    {_, name_records, name_data} =
      Enum.reduce(records, {0, [], []}, fn record, state ->
        {pos, records, data} = state
        {platform, enc, lang, name, value} = record
        size = byte_size(value)

        record = [
          <<platform::16, enc::16, lang::16, name::16>>,
          <<size::16>>,
          <<pos::16>>
        ]

        {pos + size, [record | records], [value | data]}
      end)

    data = [
      <<0::16>>,
      <<length(name_records)::16>>,
      <<data_offset::16>>,
      Enum.reverse(name_records),
      Enum.reverse(name_data)
    ]

    CompiledTable.new("name", IO.iodata_to_binary(data))
  end

  @spec prepare_records(map()) :: list()
  defp prepare_records(map) do
    {:ok, agent} = Agent.start_link(fn -> [] end)

    Enum.each(map, fn {platform, encodings} ->
      Enum.each(encodings, fn {encoding, languages} ->
        Enum.each(languages, fn {lang, names} ->
          Enum.each(names, fn {name, value} ->
            data = get_encoded_data(value, platform)
            record = {platform, encoding, lang, name, data}

            Agent.update(agent, &[record | &1])
          end)
        end)
      end)
    end)

    result = Agent.get(agent, &Enum.reverse/1)
    :ok = Agent.stop(agent)

    result
  end

  @spec get_encoded_data(binary(), integer()) :: binary()
  defp get_encoded_data(data, platform)

  # Return the input data as-is on macintosh platform.
  defp get_encoded_data(data, 1), do: data

  defp get_encoded_data(data, _) do
    :unicode.characters_to_binary(data, :utf8, {:utf16, :big})
  end
end
