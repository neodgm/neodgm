defmodule Mix.Tasks.BuildFont do
  use Mix.Task

  def run(_args), do: NeoDGM.TTFBuilder.build_font()
end
