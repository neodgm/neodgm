defmodule NeoDGM.Mixfile do
  use Mix.Project

  @neodgm_version "1.5.0"

  def project do
    [
      app: :neodgm,
      version: @neodgm_version,
      elixir: "~> 1.9",
      deps: deps()
    ]
  end

  defp deps do
    [
      {:pixel_font, github: "Dalgona/pixel_font", ref: "927d2a3491f878670bf32ead40c62321b47d23c1"}
    ]
  end
end
