defmodule NeoDGM.Mixfile do
  use Mix.Project

  def project do
    [
      app: :neodgm,
      version: "1.5.30",
      elixir: "~> 1.11",
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:crypto]
    ]
  end

  defp deps do
    [
      {:pixel_font, github: "Dalgona/pixel_font", ref: "6a65bf85e5228296eb29fddbfdd690565767ff76"}
    ]
  end
end
