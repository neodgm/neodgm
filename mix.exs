defmodule NeoDGM.Mixfile do
  use Mix.Project

  def project do
    [
      app: :neodgm,
      version: "1.6.0",
      elixir: "~> 1.19",
      deps: deps(),
      pixel_font: [
        font_module: NeoDGM.Font
      ]
    ]
  end

  def application do
    [
      extra_applications: [:crypto]
    ]
  end

  defp deps do
    [
      {:pixel_font, github: "Dalgona/pixel_font", ref: "32f702114ab5f7fcf6d21423e1b15981112f2f3d"}
    ]
  end
end
