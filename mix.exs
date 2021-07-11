defmodule NeoDGM.Mixfile do
  use Mix.Project

  def project do
    [
      app: :neodgm,
      version: "1.5.21",
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
      {:pixel_font, github: "Dalgona/pixel_font", ref: "d2f17ea5bbce1a9d74a46b54b36f9012098eb1d7"}
    ]
  end
end
