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
      {:pixel_font, github: "Dalgona/pixel_font", ref: "3c56ef128ad5fdf1b97f5aef541cdc90246ca722"}
    ]
  end
end
