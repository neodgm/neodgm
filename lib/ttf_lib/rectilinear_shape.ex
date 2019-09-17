defmodule TTFLib.RectilinearShape do
  @moduledoc false

  alias __MODULE__.{EdgeGenerator, Path, PathGenerator}

  @spec from_bmp([charlist()]) :: Path.t()
  def from_bmp(bmp) do
    ~w(horizontal vertical)a
    |> Enum.map(fn orientation ->
      bmp
      |> EdgeGenerator.get_edges(orientation)
      |> Enum.reduce([], &EdgeGenerator.union(&2, &1))
    end)
    |> Enum.concat()
    |> PathGenerator.get_path()
  end
end
