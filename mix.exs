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
      {:pixel_font, github: "Dalgona/pixel_font", ref: "038a55440991a3eb8e5a204ba5e6e864a65ad407"}
    ]
  end
end
