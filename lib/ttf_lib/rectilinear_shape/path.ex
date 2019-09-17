defmodule TTFLib.RectilinearShape.Path do
  @moduledoc false

  @type t :: [path_component()]
  @type path_component :: [point()]
  @type point :: {integer(), integer()}
  @type mat22 :: {mat2(), mat2()}
  @type mat2 :: {integer(), integer()}

  @spec transform(t(), mat22(), mat2()) :: t()
  def transform(path, mat, tr)

  def transform(path, {{a11, a12}, {a21, a22}}, {dx, dy}) do
    fun = fn {x, y} -> {a11 * x + a12 * y + dx, a21 * x + a22 * y + dy} end

    Enum.map(path, &Enum.map(&1, fun))
  end

  @spec reverse(t()) :: t()
  def reverse(path), do: Enum.map(path, &Enum.reverse/1)

  @spec boundary(t()) :: {point(), point()}
  def boundary(path)
  def boundary([]), do: {{0, 0}, {0, 0}}

  def boundary(path) do
    init_min = {65535, 65535}
    init_max = {-65535, -65535}

    Enum.reduce(path, {init_min, init_max}, fn component, mm ->
      Enum.reduce(component, mm, fn {x, y}, {{minx, miny}, {maxx, maxy}} ->
        {{min(x, minx), min(y, miny)}, {max(x, maxx), max(y, maxy)}}
      end)
    end)
  end
end
