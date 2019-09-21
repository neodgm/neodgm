defmodule TTFLib.GlyphStorage do
  use GenServer

  def start_link(glyph_sources) do
    GenServer.start_link(__MODULE__, glyph_sources, name: __MODULE__)
  end

  def all do
    GenServer.call(__MODULE__, :all, :infinity)
  end

  def get(id) do
    GenServer.call(__MODULE__, {:get, id}, :infinity)
  end

  @impl GenServer
  def init(glyph_sources) do
    glyphs =
      glyph_sources
      |> Enum.map(& &1.glyphs)
      |> List.flatten()
      |> set_glyph_index([], 0)

    tmp_lookup = make_lookup(glyphs)
    linked = Enum.map(glyphs, &link_composite(&1, tmp_lookup))
    lookup = make_lookup(linked)

    {:ok, {linked, lookup}}
  end

  @impl GenServer
  def handle_call(msg, from, state)

  def handle_call(:all, _, {glyphs, _} = state) do
    {:reply, glyphs, state}
  end

  def handle_call({:get, id}, _, {_, map} = state) do
    {:reply, map[id], state}
  end

  defp make_lookup(glyphs) do
    glyphs
    |> Enum.map(&{{&1.type, &1.id}, &1})
    |> Map.new()
  end

  defp set_glyph_index(glyphs, acc, index)
  defp set_glyph_index([], acc, _), do: Enum.reverse(acc)

  defp set_glyph_index([g | gs], acc, index) do
    set_glyph_index(gs, [Map.put(g, :index, index) | acc], index + 1)
  end

  defp link_composite(glyph, lookup)
  defp link_composite(%{contours: _} = simple, _lookup), do: simple

  defp link_composite(%{components: components} = composite, lookup) do
    linked_components =
      Enum.map(components, fn %{glyph: glyph_id} = component ->
        %{component | glyph: lookup[glyph_id]}
      end)

    %{composite | components: linked_components}
  end
end
