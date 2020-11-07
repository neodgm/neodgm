defmodule NeoDGM.Mixfile do
  use Mix.Project

  def project do
    [
      app: :neodgm,
      version: "1.5.10",
      elixir: "~> 1.9",
      deps: deps()
    ]
  end

  defp deps do
    [
      {:pixel_font, github: "Dalgona/pixel_font", ref: "01c8a0f800888884741aa80b265c2bd664306ec9"}
    ]
  end
end
