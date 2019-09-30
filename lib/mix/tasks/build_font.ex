defmodule Mix.Tasks.BuildFont do
  use Mix.Task
  alias NeoDGM.Params
  alias TTFLib.Builder

  def run(args) do
    options = [variant: :string]
    {parsed, _args} = OptionParser.parse!(args, switches: options)
    params = Params.params(variant: parsed[:variant])
    ttf = Builder.build_ttf(params)

    "neodgm.ttf"
    |> Path.expand(File.cwd!())
    |> File.open!([:write, :binary], &IO.binwrite(&1, ttf))
  end
end
