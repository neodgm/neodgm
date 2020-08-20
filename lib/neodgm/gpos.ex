defmodule NeoDGM.GPOS do
  alias TTFLib.TableSource.GPOS
  alias TTFLib.TableSource.OTFLayout

  @spec get_gpos(term()) :: GPOS.t()
  def get_gpos(variant)
  def get_gpos(_), do: make_gpos(~w(Hangul))

  @spec make_gpos([binary()]) :: GPOS.t()
  defp make_gpos(modules) do
    gpos_data =
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

    struct!(GPOS, gpos_data)
  end
end
