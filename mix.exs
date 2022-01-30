defmodule NeoDGM.Mixfile do
  use Mix.Project

  def project do
    [
      app: :neodgm,
      version: "1.5.30",
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
      {:pixel_font, github: "Dalgona/pixel_font", ref: "ebe20b228a29849b30d6bb78ddff07bf705cc6cd"}
    ]
  end
end
