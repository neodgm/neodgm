defmodule TTFLib.RectilinearShape.EdgeGenerator do
  @moduledoc false

  alias TTFLib.RectilinearShape.Edge

  @spec get_edges([charlist()], Edge.orientation()) :: [[Edge.t()]]
  def get_edges(bmp, orientation) do
    data =
      case orientation do
        :horizontal -> bmp
        :vertical -> bmp |> Enum.zip() |> Enum.map(&Tuple.to_list/1)
      end

    data
    |> Stream.with_index()
    |> Stream.map(fn {line, row} ->
      line
      |> Enum.chunk_by(& &1)
      |> Enum.map(&{hd(&1), length(&1)})
      |> Enum.reduce({0, []}, &get_edges_reduce_fun(&1, row, &2, orientation))
      |> elem(1)
      |> Enum.reverse()
      |> Enum.reduce([], fn edges, edges2 -> edges2 ++ edges end)
    end)
    |> Enum.reject(fn x -> x == [] end)
  end

  defp get_edges_reduce_fun(chunk, row, acc, orientation)

  defp get_edges_reduce_fun({?0, len}, _, {pos, list}, _) do
    {pos + len, list}
  end

  defp get_edges_reduce_fun({?1, len}, row, {pos, list}, :horizontal) do
    edges = [
      {:horizontal, row + 1, pos, pos + len, :negative},
      {:horizontal, row, pos, pos + len, :positive}
    ]

    {pos + len, [edges | list]}
  end

  defp get_edges_reduce_fun({?1, len}, row, {pos, list}, :vertical) do
    edges = [
      {:vertical, row + 1, pos, pos + len, :positive},
      {:vertical, row, pos, pos + len, :negative}
    ]

    {pos + len, [edges | list]}
  end

  @spec union([Edge.t()], [Edge.t()]) :: [Edge.t()]
  def union(edges1, edges2) do
    e1_by_u = Enum.group_by(edges1, &elem(&1, 1))

    edges2
    |> Enum.reduce(e1_by_u, &union_reduce_fun/2)
    |> Map.values()
    |> List.flatten()
  end

  @spec union_reduce_fun(Edge.t(), map()) :: map()
  defp union_reduce_fun(edge, target) do
    {_type, u, v1, v2, _dir} = edge

    case target[u] do
      nil ->
        Map.put(target, u, [edge])

      edges ->
        vs = edges |> Enum.map(&[elem(&1, 2), elem(&1, 3)]) |> List.flatten()
        cut_edges = cut_edge(edge, vs)

        cut_src_edges =
          edges
          |> Enum.map(&cut_edge(&1, [v1, v2]))
          |> List.flatten()

        map =
          cut_edges
          |> Kernel.++(cut_src_edges)
          |> Enum.group_by(&elem(&1, 4), &Tuple.delete_at(&1, 4))
          |> Enum.into(%{}, fn {k, v} -> {k, MapSet.new(v)} end)

        Map.put(target, u, simplify_edges(map))
    end
  end

  @spec cut_edge(Edge.t(), [integer()]) :: [Edge.t()]
  defp cut_edge(edge, vs) do
    {t, p, q1, q2, d} = edge

    if q2 == q1 + 1 do
      [edge]
    else
      range = (q1 + 1)..(q2 - 1)

      vs
      |> Enum.filter(&(&1 in range))
      |> Enum.uniq()
      |> Enum.sort()
      |> case do
        [] -> [edge]
        [v] -> [{t, p, q1, v, d}, {t, p, v, q2, d}]
        [v | vs] -> [{t, p, q1, v, d} | cut_edge({t, p, v, q2, d}, vs)]
      end
    end
  end

  @spec simplify_edges(map()) :: [Edge.t()]
  defp simplify_edges(map) do
    pos_edges = map[:positive] || MapSet.new()
    neg_edges = map[:negative] || MapSet.new()
    common = MapSet.intersection(pos_edges, neg_edges)

    fun = fn set, orientation ->
      set
      |> MapSet.difference(common)
      |> Enum.map(&Tuple.append(&1, orientation))
    end

    fun.(pos_edges, :positive) ++ fun.(neg_edges, :negative)
  end
end
