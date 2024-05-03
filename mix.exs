defmodule NeoDGM.Mixfile do
  use Mix.Project

  def project do
    [
      app: :neodgm,
      version: "1.6.0",
      elixir: "~> 1.13",
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
      {:pixel_font, github: "Dalgona/pixel_font", ref: "db425edf41f991adb2149636af117676ee5dc2ab"}
    ]
  end
end
