defmodule TTFLib.RectilinearShape.Edge do
  @moduledoc false

  alias TTFLib.RectilinearShape, as: RS

  @type t :: {orientation(), integer(), integer(), integer(), direction()}
  @type orientation :: :horizontal | :vertical
  @type direction :: :positive | :negative

  @spec start_point(t()) :: RS.point()
  def start_point({:horizontal, u, v1, _, :positive}), do: {v1, u}
  def start_point({:horizontal, u, _, v2, :negative}), do: {v2, u}
  def start_point({:vertical, u, v1, _, :positive}), do: {u, v1}
  def start_point({:vertical, u, _, v2, :negative}), do: {u, v2}

  @spec end_point(t()) :: RS.point()
  def end_point({:horizontal, u, _, v2, :positive}), do: {v2, u}
  def end_point({:horizontal, u, v1, _, :negative}), do: {v1, u}
  def end_point({:vertical, u, _, v2, :positive}), do: {u, v2}
  def end_point({:vertical, u, v1, _, :negative}), do: {u, v1}
end
