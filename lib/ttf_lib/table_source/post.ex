defmodule TTFLib.TableSource.Post do
  alias TTFLib.CompiledTable
  alias TTFLib.GlyphStorage
  alias TTFLib.TableSource.Post.AGLFN

  @spec compile(integer()) :: CompiledTable.t()
  def compile(version)

  def compile(2) do
    [_notdef | all_glyphs] = GlyphStorage.all()
    aglfn = AGLFN.get_map()

    {name_data, indexes} =
      all_glyphs
      |> Enum.map(fn
        %{type: :name, id: id} ->
          id

        %{type: :unicode, id: id} ->
          case aglfn[id] do
            nil -> "uni#{id |> Integer.to_string(16) |> String.pad_leading(4, "0")}"
            name when is_binary(name) -> name
          end
      end)
      |> Enum.map(&<<byte_size(&1)::8, &1::binary>>)
      |> Enum.with_index(258)
      |> Enum.unzip()

    data = [
      # Version
      <<0, 2, 0, 0>>,
      # Italic angle
      <<0::16, 0::16>>,
      # Underline position
      <<-1::16>>,
      # Underline thickness
      <<1::16>>,
      # Non-zero if the font is fixed-pitch
      <<1::32>>,
      # Memory usage (zero if unknown)
      <<0::4*32>>,
      # numGlyphs
      <<length(all_glyphs) + 1::16>>,
      # glyphNameIndex
      [<<0::16>>, Enum.map(indexes, &<<&1::16>>)],
      # names
      name_data
    ]

    CompiledTable.new("post", IO.iodata_to_binary(data))
  end
end
