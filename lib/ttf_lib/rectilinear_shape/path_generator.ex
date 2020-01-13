defmodule TTFLib.RectilinearShape.PathGenerator do
  @moduledoc false

  alias TTFLib.RectilinearShape.{Edge, Path}

  @spec get_path([Edge.t()]) :: Path.t()
  def get_path(edges) do
    edges
    |> Enum.group_by(&Edge.start_point/1)
    |> do_get_path([])
  end

  @spec do_get_path(map(), Path.t()) :: Path.t()
  defp do_get_path(map, components) when map_size(map) == 0 do
    Enum.reverse(components)
  end

  defp do_get_path(map, components) do
    pt1 = map |> Map.keys() |> Enum.sort() |> hd()
    pt2 = Edge.end_point(hd(map[pt1]))
    {map2, component} = get_path_component(Map.delete(map, pt1), [pt2, pt1])

    do_get_path(map2, [component | components])
  end

  @spec get_path_component(map(), [Path.point()]) :: {map(), [Path.point()]}
  defp get_path_component(edge_map, points)

  defp get_path_component(edge_map, [point | points]) do
    case edge_map[point] do
      nil ->
        {edge_map, Enum.reverse(points)}

      [edge] ->
        edge_map2 = Map.delete(edge_map, point)
        points2 = [Edge.end_point(edge), point | points]

        get_path_component(edge_map2, points2)

      edges when is_list(edges) ->
        facing = direction(hd(points), point)

        next_edge =
          Enum.find(edges, fn edge ->
            rem(facing + 3, 4) == direction(point, Edge.end_point(edge))
          end)

        edge_map2 = Map.put(edge_map, point, List.delete(edges, next_edge))
        points2 = [Edge.end_point(next_edge), point | points]

        get_path_component(edge_map2, points2)
    end
  end

  @spec direction(Path.point(), Path.point()) :: integer()
  defp direction(from, to)

  defp direction({x1, y1}, {x2, y2}) do
    case {x2 - x1, y2 - y1} do
      {0, dy} when dy > 0 -> 0
      {0, dy} when dy < 0 -> 2
      {dx, 0} when dx > 0 -> 3
      {dx, 0} when dx < 0 -> 1
    end
  end
end
