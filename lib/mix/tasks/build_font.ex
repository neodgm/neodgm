defmodule Mix.Tasks.BuildFont do
  use Mix.Task
  alias NeoDGM.Params
  alias TTFLib.Builder

  @defined_variants ~w(code pro)

  def run(args) do
    options = [variant: :string]
    {parsed, _args} = OptionParser.parse!(args, switches: options)
    variant = parsed[:variant]

    params = Params.params(variant: variant)
    ttf = Builder.build_ttf(params)

    suffix =
      case variant do
        variant when variant in @defined_variants -> "_#{variant}"
        _ -> ""
      end

    "neodgm#{suffix}.ttf"
    |> Path.expand(File.cwd!())
    |> File.open!([:write, :binary], &IO.binwrite(&1, ttf))
  end
end
