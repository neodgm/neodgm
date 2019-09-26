defmodule TTFLib.TableSource.Post.AGLFN do
  data =
    :neodgm
    |> :code.priv_dir()
    |> Path.join("aglfn.txt")
    |> File.open!([:read, :unicode])
    |> IO.stream(:line)
    |> Stream.reject(&String.starts_with?(&1, "#"))
    |> Stream.map(&String.trim/1)
    |> Stream.map(&String.split(&1, ";", trim: true))
    |> Enum.map(fn [uv, name, _uni_name] ->
      {uv |> Integer.parse(16) |> elem(0), name}
    end)
    |> Map.new()

  @spec get_map() :: %{optional(integer()) => binary()}
  def get_map, do: unquote(Macro.escape(data))
end
