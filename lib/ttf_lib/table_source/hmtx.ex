defmodule TTFLib.TableSource.Hmtx do
  alias TTFLib.CompiledTable
  alias TTFLib.GlyphStorage
  alias TTFLib.TableSource.Hmtx.Record

  defstruct ~w(records)a

  @type t :: %__MODULE__{records: [Record.t()]}

  @spec compile() :: [CompiledTable.t()]
  def compile do
    glyphs = GlyphStorage.all()
    hmtx = %__MODULE__{records: Enum.map(glyphs, &Record.new/1)}

    [
      compile_hmtx(hmtx),
      compile_hhea(hmtx)
    ]
  end

  @spec compile_hmtx(t()) :: CompiledTable.t()
  defp compile_hmtx(hmtx) do
    hmtx_data =
      hmtx.records
      |> Enum.map(&Record.compile/1)
      |> IO.iodata_to_binary()

    CompiledTable.new("hmtx", hmtx_data)
  end

  @spec compile_hhea(t()) :: CompiledTable.t()
  defp compile_hhea(hmtx) do
    [adv, lsb, rsb, ext] =
      hmtx.records
      |> Enum.reject(& &1.glyph_empty?)
      |> Enum.map(fn rec ->
        bound = rec.xmax - rec.xmin
        rsb = rec.advance - rec.lsb - bound
        extent = rec.lsb + bound

        [rec.advance, rec.lsb, rsb, extent]
      end)
      |> Enum.reduce([[], [], [], []], fn rec, acc ->
        rec
        |> Enum.zip(acc)
        |> Enum.map(fn {a, b} -> [a | b] end)
      end)

    zero = fn -> 0 end
    max_adv = Enum.max(adv, zero)
    min_lsb = Enum.min(lsb, zero)
    min_rsb = Enum.min(rsb, zero)
    max_ext = Enum.max(ext, zero)

    hhea_data = [
      # MajorVersion, MinorVersion, Ascender, Descender, LineGap
      <<1::big-16, 0::big-16, 12::big-16, 4::big-16, 0::big-16>>,
      <<max_adv::big-16>>,
      <<min_lsb::big-16>>,
      <<min_rsb::big-16>>,
      <<max_ext::big-16>>,
      # CaretSlopeRise, CaretSlopeRun, CaretOffset
      <<1::big-16, 0::big-16, 0::big-16>>,
      # Reserved
      <<0::big-64>>,
      # MetricDataFormat
      <<0::big-16>>,
      <<length(hmtx.records)::big-16>>
    ]
    |> IO.iodata_to_binary()

    CompiledTable.new("hhea", hhea_data)
  end
end
