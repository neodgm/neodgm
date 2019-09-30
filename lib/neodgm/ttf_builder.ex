defmodule NeoDGM.TTFBuilder do
  alias NeoDGM.NameTable
  alias TTFLib.GlyphStorage
  alias TTFLib.TableSource.{Cmap, Glyf, GSUB, Head, Hmtx, Maxp, Name, OS_2, Post}

  @version Version.parse!(Mix.Project.config()[:version])

  @glyph_sources [
    NeoDGM.BitmapFont.BasicLatin,
    NeoDGM.BitmapFont.BlockElements,
    NeoDGM.BitmapFont.BoxDrawing,
    NeoDGM.BitmapFont.BraillePatterns,
    NeoDGM.BitmapFont.Dingbats,
    NeoDGM.BitmapFont.EnclosedAlphanumerics,
    NeoDGM.BitmapFont.GeneralPunctuation,
    NeoDGM.BitmapFont.GeometricShapes,
    NeoDGM.BitmapFont.HangulCompatibilityJamo,
    NeoDGM.BitmapFont.HangulJamo,
    NeoDGM.BitmapFont.HangulJamoSource,
    NeoDGM.BitmapFont.HangulSyllables,
    NeoDGM.BitmapFont.Latin1Supplement,
    NeoDGM.BitmapFont.PowerlineSymbols,
    NeoDGM.BitmapFont.Trigrams,
    # For programming ligatures
    NeoDGM.BitmapFont.ProgrammingLigatures.Arrows,
    NeoDGM.BitmapFont.ProgrammingLigatures.Markup
  ]

  def build_font do
    metrics = %{
      units_per_em: 16,
      ascender: 12,
      descender: 4,
      line_gap: 0,
      underline_size: 1,
      underline_position: -1,
      is_fixed_pitch: true
    }

    os_2 = %{
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
      panose: [2, 1, 5, 9, 6, 2, 1, 4, 2, 3],
      vendor_id: "5757",
      x_height: 7,
      cap_height: 10
    }

    {:ok, _} = GlyphStorage.start_link(@glyph_sources)

    glyf = Glyf.generate()
    hmtx = Hmtx.generate()
    maxp = Maxp.generate()
    gsub = NeoDGM.GSUB.gsub()

    compiled_tables = [
      Glyf.compile(glyf),
      Hmtx.compile(hmtx, metrics),
      Maxp.compile(maxp),
      Name.compile(NameTable.name_table(), 0),
      Cmap.compile(),
      Post.compile(metrics, 2),
      OS_2.compile(os_2, metrics, 4),
      GSUB.compile(gsub)
    ]

    :ok = GenServer.stop(GlyphStorage)

    head = Head.compile(@version, glyf, metrics)
    tables = sort_tables([head, compiled_tables])
    preamble = make_preamble(tables)
    table_record = make_table_record(tables)
    temp_ttf = make_ttf(preamble, table_record, tables)

    new_head = Head.update_checksum_adjustment(head, temp_ttf)
    new_tables = sort_tables([new_head, compiled_tables])
    ttf = make_ttf(preamble, table_record, new_tables)

    "neodgm.ttf"
    |> Path.expand(File.cwd!())
    |> File.open!([:write, :binary], &IO.binwrite(&1, ttf))
  end

  defp sort_tables(compiled_tables) do
    compiled_tables
    |> List.flatten()
    |> Enum.sort(&(&1.tag < &2.tag))
  end

  defp make_preamble(compiled_tables) do
    num_tables = length(compiled_tables)
    entry_selector = num_tables |> :math.log2() |> trunc()
    search_range = (2 |> :math.pow(entry_selector) |> trunc()) * 16
    range_shift = num_tables * 16 - search_range

    [
      <<0, 1, 0, 0>>,
      <<num_tables::16>>,
      <<search_range::16>>,
      <<entry_selector::16>>,
      <<range_shift::16>>
    ]
  end

  defp make_table_record(compiled_tables) do
    offset_base = 12 + length(compiled_tables) * 16

    compiled_tables
    |> Enum.reduce({0, []}, fn table, {pos, entries} ->
      entry = [
        table.tag,
        <<table.checksum::32>>,
        <<pos + offset_base::32>>,
        <<table.real_size::32>>
      ]

      {pos + table.padded_size, [entry | entries]}
    end)
    |> elem(1)
    |> Enum.reverse()
  end

  defp make_ttf(preamble, table_record, tables) do
    IO.iodata_to_binary([preamble, table_record, Enum.map(tables, & &1.data)])
  end
end
