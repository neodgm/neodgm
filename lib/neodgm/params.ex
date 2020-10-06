defmodule NeoDGM.Params do
  alias NeoDGM.BitmapFont
  alias NeoDGM.GPOS
  alias NeoDGM.GSUB
  alias NeoDGM.NameTable
  alias PixelFont.Font
  alias PixelFont.Font.Metrics
  alias PixelFont.TableSource.OS_2

  @version Version.parse!(Mix.Project.config()[:version])

  @spec params(keyword()) :: Font.t()
  def params(opts \\ []) do
    variant = to_string(opts[:variant])

    %Font{
      version: @version,
      name_table: name_module(variant).name_table(),
      metrics: metrics(variant),
      os_2: os_2(variant),
      glyph_sources: BitmapFont.get_sources(variant),
      notdef_glyph: BitmapFont.NotDef,
      gpos: GPOS.get_gpos(variant),
      gsub: GSUB.get_gsub(variant)
    }
  end

  @spec name_module(term()) :: module()
  defp name_module(variant)
  defp name_module("code"), do: NameTable.Code
  defp name_module("pro"), do: NameTable.Pro
  defp name_module(_), do: NameTable

  @spec metrics(term()) :: Metrics.t()
  defp metrics("pro") do
    Map.merge(metrics(nil), %{
      is_fixed_pitch: false
    })
  end

  defp metrics(_) do
    %Metrics{
      units_per_em: 16,
      ascender: 12,
      descender: 4,
      line_gap: 0,
      underline_size: 1,
      underline_position: -2,
      is_fixed_pitch: true
    }
  end

  defp os_2("pro") do
    Map.merge(os_2(nil), %{
      avg_char_width: :auto,
      panose: <<2, 1, 5, 3, 6, 2, 1, 4, 2, 3>>
    })
  end

  defp os_2(_) do
    %OS_2{
      avg_char_width: 8,
      weight_class: :normal,
      width_class: :medium,
      subscript_size: {8, 16},
      subscript_offset: {0, 8},
      superscript_size: {8, 16},
      superscript_offset: {0, 8},
      strike_size: 1,
      strike_position: 4,
      family_class: {:sans_serif, :no_classification},
      panose: <<2, 1, 5, 9, 6, 2, 1, 4, 2, 3>>,
      vendor_id: "5757",
      x_height: 7,
      cap_height: 10
    }
  end
end
