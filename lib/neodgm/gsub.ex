defmodule NeoDGM.GSUB do
  alias TTFLib.TableSource.GSUB
  alias TTFLib.TableSource.OTFLayout

  @spec get_gsub(term()) :: GSUB.t()
  def get_gsub(variant) do
    variant
    |> do_get_gsub()
    |> GSUB.populate_indices()
  end

  @spec do_get_gsub(term()) :: GSUB.t()
  defp do_get_gsub(variant)
  defp do_get_gsub("code"), do: make_gsub(~w(StylisticVariants Code))
  defp do_get_gsub("pro"), do: make_gsub(~w(Pro))
  defp do_get_gsub(_), do: make_gsub(~w(StylisticVariants))

  @spec make_gsub([binary()]) :: GSUB.t()
  defp make_gsub(modules) do
    gsub_data =
      ~w(script feature lookup)
      |> Enum.map(fn field ->
        mod_name_base = String.capitalize(field)
        struct_mod = Module.concat(OTFLayout, "#{mod_name_base}List")

        list_struct =
          modules
          |> Enum.map(&Module.concat([__MODULE__, &1, "#{mod_name_base}s"]).data())
          |> List.foldl(struct!(struct_mod), &struct_mod.concat(&2, &1))

        {:"#{field}_list", list_struct}
      end)

    struct!(GSUB, gsub_data)
  end
end
