defmodule TTFLib.TableSource.Maxp do
  alias TTFLib.CompiledTable
  alias TTFLib.GlyphStorage

  defstruct [
    :num_glyphs,
    :max_points,
    :max_contours,
    :max_composite_points,
    :max_composite_contours,
    :max_component_elements,
    :max_component_depth
  ]

  @type t :: %__MODULE__{
          num_glyphs: non_neg_integer(),
          max_points: non_neg_integer(),
          max_contours: non_neg_integer(),
          max_composite_points: non_neg_integer(),
          max_composite_contours: non_neg_integer(),
          max_component_elements: non_neg_integer(),
          max_component_depth: non_neg_integer()
        }

  @spec generate() :: t()
  def generate do
    zero = fn -> 0 end
    all_glyphs = GlyphStorage.all()
    num_glyphs = length(all_glyphs)

    %{simple: simple_glyphs, composite: composite_glyphs} =
      Enum.group_by(all_glyphs, &get_glyph_type/1)

    {num_simple_points, num_simple_contours} =
      simple_glyphs
      |> Enum.map(fn %{contours: contours} ->
        {contours |> List.flatten() |> length(), length(contours)}
      end)
      |> Enum.unzip()

    only_components = Enum.map(composite_glyphs, & &1.components)

    {num_composite_points, num_composite_contours} =
      only_components
      |> Enum.map(&Enum.map(&1, fn component -> component.glyph end))
      |> Enum.map(fn ref_glyphs ->
        all_contours = Enum.map(ref_glyphs, & &1.contours)

        num_composite_points =
          all_contours
          |> List.flatten()
          |> length()

        num_composite_contours =
          all_contours
          |> Enum.map(&length/1)
          |> Enum.sum()

        {num_composite_points, num_composite_contours}
      end)
      |> Enum.unzip()

    max_component_elements =
      only_components
      |> Enum.map(&length/1)
      |> Enum.max(zero)

    %__MODULE__{
      num_glyphs: num_glyphs,
      max_points: Enum.max(num_simple_points, zero),
      max_contours: Enum.max(num_simple_contours, zero),
      max_composite_points: Enum.max(num_composite_points),
      max_composite_contours: Enum.max(num_composite_contours),
      max_component_elements: max_component_elements,
      max_component_depth: 1
    }
  end

  @spec get_glyph_type(map()) :: :simple | :composite
  defp get_glyph_type(glyph)
  defp get_glyph_type(%{contours: _}), do: :simple
  defp get_glyph_type(%{components: _}), do: :composite

  @spec compile(t()) :: CompiledTable.t()
  def compile(maxp) do
    data = [
      <<0, 1, 0, 0>>,
      <<maxp.num_glyphs::16>>,
      <<maxp.max_points::16>>,
      <<maxp.max_contours::16>>,
      <<maxp.max_composite_points::16>>,
      <<maxp.max_composite_contours::16>>,
      <<2::16, 0::96>>,
      <<maxp.max_component_elements::16>>,
      <<maxp.max_component_depth::16>>
    ]

    CompiledTable.new("maxp", IO.iodata_to_binary(data))
  end
end
