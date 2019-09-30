defmodule TTFLib.TableSource.Post do
  alias TTFLib.CompiledTable
  alias TTFLib.GlyphStorage
  alias TTFLib.TableSource.Post.AGLFN

  @spec compile(map(), integer()) :: CompiledTable.t()
  def compile(metrics, version)

  def compile(metrics, 2) do
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
      <<metrics.underline_position::16>>,
      <<metrics.underline_size::16>>,
      <<if(metrics.is_fixed_pitch, do: 1, else: 0)::32>>,
      # Memory usage (zero if unknown)
      <<0::4*32>>,
      <<length(all_glyphs) + 1::16>>,
      # glyphNameIndex
      [<<0::16>>, Enum.map(indexes, &<<&1::16>>)],
      name_data
    ]

    CompiledTable.new("post", IO.iodata_to_binary(data))
  end
end
