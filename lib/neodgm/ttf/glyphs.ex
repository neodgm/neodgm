defmodule NeoDGM.TTF.Glyphs do
  use GenServer

  @glyph_sources [
    NeoDGM.BitmapFont.BasicLatin,
    NeoDGM.BitmapFont.Latin1Supplement,
    NeoDGM.BitmapFont.HangulJamo,
    NeoDGM.BitmapFont.GeneralPunctuation,
    NeoDGM.BitmapFont.BoxDrawing,
    NeoDGM.BitmapFont.BlockElements,
    NeoDGM.BitmapFont.BraillePatterns,
    NeoDGM.BitmapFont.HangulCompatibilityJamo,
    NeoDGM.BitmapFont.HangulSyllables,
    NeoDGM.BitmapFont.PowerlineSymbols,
    NeoDGM.BitmapFont.HangulJamoSource
  ]

  def start_link(_) do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  def all do
    GenServer.call(__MODULE__, :all, :infinity)
  end

  def get(id) do
    GenServer.call(__MODULE__, {:get, id}, :infinity)
  end

  @impl GenServer
  def init(_) do
    loaded_glyphs =
      @glyph_sources
      |> Enum.map(& &1.glyphs)
      |> List.flatten()
      |> set_glyph_index([], 0)

    glyph_lookup =
      loaded_glyphs
      |> Enum.map(&{{&1.type, &1.id}, &1})
      |> Map.new()

    {:ok, {loaded_glyphs, glyph_lookup}}
  end

  @impl GenServer
  def handle_call(msg, from, state)

  def handle_call(:all, _, {glyphs, _} = state) do
    {:reply, glyphs, state}
  end

  def handle_call({:get, id}, _, {_, map} = state) do
    {:reply, map[id], state}
  end

  defp set_glyph_index(glyphs, acc, index)
  defp set_glyph_index([], acc, _), do: Enum.reverse(acc)

  defp set_glyph_index([g | gs], acc, index) do
    set_glyph_index(gs, [Map.put(g, :index, index) | acc], index + 1)
  end
end
