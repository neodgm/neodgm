defmodule NeoDGM.Mixfile do
  use Mix.Project

  @neodgm_version "1.2.1"

  def project do
    [
      app: :neodgm,
      version: @neodgm_version,
      elixir: "~> 1.8",
      deps: deps()
    ]
  end

  defp deps do
    []
  end
end
