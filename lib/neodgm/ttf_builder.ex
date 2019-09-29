defmodule NeoDGM.TTFBuilder do
  alias NeoDGM.NameTable
  alias TTFLib.CompiledTable
  alias TTFLib.GlyphStorage
  alias TTFLib.TableSource.{Cmap, Glyf, GSUB, Hmtx, Maxp, Name, OS_2, Post}

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
    NeoDGM.BitmapFont.ProgrammingLigatures.Arrows
  ]

  def build_font do
    {:ok, _} = GlyphStorage.start_link(@glyph_sources)

    glyf = Glyf.generate()
    hmtx = Hmtx.generate()
    maxp = Maxp.generate()
    gsub = NeoDGM.GSUB.gsub()

    compiled_tables = [
      Glyf.compile(glyf),
      Hmtx.compile(hmtx),
      Maxp.compile(maxp),
      Name.compile(NameTable.name_table(), 0),
      Cmap.compile(),
      Post.compile(2),
      OS_2.compile(4),
      GSUB.compile(gsub)
    ]

    :ok = GenServer.stop(GlyphStorage)

    head = compile_head(glyf)
    tables = sort_tables([head, compiled_tables])
    preamble = make_preamble(tables)
    table_record = make_table_record(tables)
    temp_ttf = make_ttf(preamble, table_record, tables)

    new_head = update_head_checksum_adjustment(head, temp_ttf)
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

  defp compile_head(glyf) do
    ver = Version.parse!(Mix.Project.config()[:version])
    ver_frac = trunc(655.36 * (ver.minor * 10 + ver.patch))
    epoch = :calendar.datetime_to_gregorian_seconds({{1904, 1, 1}, {0, 0, 0}})
    now = :calendar.datetime_to_gregorian_seconds(:calendar.local_time())
    timestamp = <<now - epoch::64>>
    zero = fn -> 0 end

    [xmin, ymin, xmax, ymax] =
      glyf.items
      |> Enum.map(&[&1.xmin, &1.ymin, &1.xmax, &1.ymax])
      |> Enum.reduce([[], [], [], []], fn x, acc ->
        x
        |> Enum.zip(acc)
        |> Enum.map(fn {a, b} -> [a | b] end)
      end)

    data = [
      # 'head' table format version 1.0
      <<1::16, 0::16>>,
      # Font revision
      <<ver.major::16, ver_frac::16>>,
      # Temporary checksum adjustment
      <<0::32>>,
      # Magic
      <<0x5F0F3CF5::32>>,
      # Flags
      <<0b0000_0000_0000_1011::16>>,
      # Units per em
      <<16::16>>,
      # Created
      timestamp,
      # Modified
      timestamp,
      <<Enum.min(xmin, zero)::16>>,
      <<Enum.min(ymin, zero)::16>>,
      <<Enum.max(xmax, zero)::16>>,
      <<Enum.max(ymax, zero)::16>>,
      # MacStyle
      <<0b0000_0000_0000_0000::16>>,
      # Lowest readable PPEM
      <<16::16>>,
      # (Deprecated; should be set to 2)
      <<2::16>>,
      # Index-to-loc format (1: long)
      <<1::16>>,
      # Glyph data format
      <<0::16>>
    ]

    CompiledTable.new("head", IO.iodata_to_binary(data))
  end

  defp update_head_checksum_adjustment(head, ttf) do
    dwords = for <<x::32 <- ttf>>, do: x
    dword_sum = Enum.reduce(dwords, 0, &Kernel.+/2)
    checksum_adjustment = <<0xB1B0AFBA - dword_sum::big-32>>
    <<head1::binary-8, _::32, head2::binary>> = head.data

    %CompiledTable{
      head
      | data: IO.iodata_to_binary([head1, checksum_adjustment, head2])
    }
  end
end
