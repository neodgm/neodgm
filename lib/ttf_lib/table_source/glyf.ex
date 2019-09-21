defmodule TTFLib.TableSource.Glyf do
  alias TTFLib.CompiledTable
  alias TTFLib.GlyphStorage
  alias TTFLib.TableSource.Glyf.Item

  defstruct ~w(items)a

  @type t :: %__MODULE__{items: [Item.t()]}

  @spec generate() :: t()
  def generate do
    glyphs = GlyphStorage.all()

    items =
      glyphs
      |> Enum.map(fn
        %{contours: _} = simple_glyph ->
          Item.new_simple(simple_glyph)

        %{components: _} = composite_glyph ->
          Item.new_composite(composite_glyph)
      end)

    %__MODULE__{items: items}
  end

  @spec compile(t()) :: [CompiledTable.t()]
  def compile(glyf) do
    {pos, offsets, data} =
      glyf.items
      |> Enum.map(&Item.compile/1)
      |> Enum.reduce({0, [], []}, fn item, {pos, offsets, data} ->
        {pos + item.padded_size, [pos | offsets], [item.data | data]}
      end)

    loca_data =
      [pos | offsets]
      |> Enum.reverse()
      |> Enum.map(&<<&1::big-32>>)
      |> IO.iodata_to_binary()

    glyf_data =
      data
      |> Enum.reverse()
      |> IO.iodata_to_binary()

    [
      CompiledTable.new("loca", loca_data),
      CompiledTable.new("glyf", glyf_data)
    ]
  end
end
