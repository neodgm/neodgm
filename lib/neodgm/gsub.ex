defmodule NeoDGM.GSUB do
  alias TTFLib.TableSource.GSUB

  @spec get_gsub(term()) :: GSUB.t() | nil
  def get_gsub(variant) do
    variant
    |> do_get_gsub()
    |> case do
      %GSUB{} = gsub -> GSUB.populate_indices(gsub)
      nil -> nil
    end
  end

  @spec do_get_gsub(term()) :: GSUB.t() | nil
  defp do_get_gsub(variant)

  defp do_get_gsub(variant) when variant in ~w(code pro) do
    var = String.capitalize(variant)

    %GSUB{
      script_list: Module.concat([__MODULE__, var, Scripts]).data,
      feature_list: Module.concat([__MODULE__, var, Features]).data,
      lookup_list: Module.concat([__MODULE__, var, Lookups]).data,
      feature_indices: %{},
      lookup_indices: %{}
    }
  end

  defp do_get_gsub(_), do: nil
end
