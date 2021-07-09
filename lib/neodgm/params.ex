defmodule NeoDGM.Params do
  alias NeoDGM.BitmapFont
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
      metrics: metrics(),
      os_2: os_2(),
      glyph_sources: BitmapFont.get_sources(variant),
      gpos_lookups: gpos_lookups(variant),
      gsub_lookups: gsub_lookups(variant)
    }
  end

  @spec name_module(term()) :: module()
  defp name_module(variant)
  defp name_module("code"), do: NameTable.Code
  defp name_module(_), do: NameTable

  @spec metrics() :: Metrics.t()
  defp metrics do
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

  @spec os_2() :: OS_2.t()
  defp os_2 do
    %OS_2{
      avg_char_width: 8,
      weight_class: :normal,
      width_class: :medium,
      embedding: :installable,
      allow_subsetting?: true,
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

  @spec gpos_lookups(term()) :: [module()]
  defp gpos_lookups(variant)

  defp gpos_lookups("code") do
    gpos_lookups(nil) ++ [NeoDGM.Lookups.GPOS.Code]
  end

  defp gpos_lookups(_) do
    [
      NeoDGM.Lookups.GPOS.Common,
      NeoDGM.Lookups.GPOS.Hangul,
      NeoDGM.Lookups.GPOS.HangulPunctuation
    ]
  end

  @spec gsub_lookups(term()) :: [module()]
  defp gsub_lookups(variant)

  defp gsub_lookups("code") do
    gsub_lookups(nil) ++
      [
        NeoDGM.Lookups.GSUB.Code.Substitutions,
        NeoDGM.Lookups.GSUB.Code.Contexts
      ]
  end

  defp gsub_lookups(_) do
    [
      NeoDGM.Lookups.GSUB.Hangul,
      NeoDGM.Lookups.GSUB.HangulPunctuation,
      NeoDGM.Lookups.GSUB.StylisticVariants,
      NeoDGM.Lookups.GSUB.FullwidthBoxes
    ]
  end
end
