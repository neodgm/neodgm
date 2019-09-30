defmodule TTFLib.TableSource.Head do
  alias TTFLib.CompiledTable
  alias TTFLib.TableSource.Glyf

  @spec compile(Version.t(), Glyf.t(), map()) :: CompiledTable.t()
  def compile(version, glyf, metrics) do
    ver_frac = trunc(655.36 * (version.minor * 10 + version.patch))
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
      <<version.major::16, ver_frac::16>>,
      # Temporary checksum adjustment
      <<0::32>>,
      # Magic
      <<0x5F0F3CF5::32>>,
      # Flags
      <<0b0000_0000_0000_1011::16>>,
      # Units per em
      <<metrics.units_per_em::16>>,
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

  @spec update_checksum_adjustment(CompiledTable.t(), binary()) :: CompiledTable.t()
  def update_checksum_adjustment(head, ttf) do
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
