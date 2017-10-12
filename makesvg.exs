#!/usr/bin/elixir

defmodule SvgExporter do
  @type glyph ::
    {:unicode, integer, integer, [charlist]}
    | {:unmapped, binary, integer, integer, [charlist]}

  @spec svg_header(integer) :: binary

  defp svg_header(width), do: """
    <?xml version="1.0"?>
    <svg xmlns="http://www.w3.org/2000/svg" width="#{width}" height="16">
    <g style="fill:black;stroke:none">
    """

  @spec svg_footer() :: binary

  defp svg_footer, do: "</g></svg>"

  @spec svg_rect(integer, integer) :: binary

  defp svg_rect(x, y), do: ~s(<rect x="#{x}" y="#{y}" width="1" height="1" />)

  @spec convert_dir(binary) :: :ok | {:error, File.posix}

  def convert_dir(srcdir) do
    srcdir = String.ends_with?(srcdir, "/") && srcdir || srcdir <> "/"
    File.mkdir_p! "svg_8"
    File.mkdir_p! "svg_16"
    File.mkdir_p! "svg_etc"
    case File.ls srcdir do
      {:ok, files} ->
        files
        |> Enum.filter(&String.ends_with? &1, ".fnt")
        |> Enum.each(&convert_file srcdir <> &1)
      {:error, _} = error -> error
    end
  end

  @spec convert_file(binary) :: :ok

  def convert_file(filename) do
    IO.write "Converting #{filename}"
    with {:ok, file} <- File.open(filename, [:read, :utf8]) do
      file
      |> load_glyphs
      |> Enum.each(&write_svg &1)
      File.close file
      IO.puts "done."
    else
      {:error, reason} ->
        IO.puts "\x1b[31mFailed: #{:file.format_error reason}\x1b[0m"
    end
  end

  @spec load_glyphs(IO.device) :: Enumerable.t

  defp load_glyphs(file) do
    file
    |> IO.read(:all)
    |> String.split("\n")
    |> Stream.chunk(17)
    |> Stream.map(&create_glyph/1)
  end

  @spec create_glyph([binary]) :: glyph

  defp create_glyph([header|data]) do
    # Glyph Specification
    #   I. Normal Unicode Character:
    #     L1: <codepoint:int> <width:int>
    #     L2~L17: 1bpp bitmap data
    #   II. Unmapped Glyph (usually for ligatures)
    #     L1: <name:str> <data-width:int> <glyph-width:int> <xoffset:int>
    #     L2~L17: 1bpp bitmap data
    i = & &1 |> Integer.parse |> elem(0)
    lines = Enum.map data, &String.to_charlist/1
    case String.split(header) do
      [code, width] ->
        {:unicode, i.(code), i.(width), lines}
      [name, width, xoff] ->
        {:unmapped, name, i.(width), i.(xoff), lines}
    end
  end

  @spec write_svg(glyph) :: :ok

  defp write_svg({:unicode, code, width, lines}) do
    filename = code |> Integer.to_string(16) |> String.pad_leading(4, "0")
    {:ok, file} = File.open "#{outdir width}#{filename}.svg", [:write, :utf8]
    IO.write file, svg_header(width)
    process_line lines, 0, file, 0
    IO.write file, svg_footer()
    File.close file
    IO.write "."
  end

  defp write_svg({:unmapped, name, gwidth, xoff, lines}) do
    filename = "#{name}@#{gwidth}"
    {:ok, file} = File.open "#{outdir :etc}#{filename}.svg", [:write, :utf8]
    IO.write file, svg_header(gwidth)
    process_line lines, xoff, file, 0
    IO.write file, svg_footer()
    File.close file
    IO.write "."
  end

  @spec process_line([charlist], integer, IO.device, integer) :: :ok

  defp process_line([], _, _, _) do
    :ok
  end

  defp process_line([h|t], xoffset, file, line_no) do
    h
    |> Enum.with_index(xoffset)
    |> Enum.each(fn
      {?0, _} -> :nop
      {?1, x} -> IO.write file, svg_rect(x, line_no)
    end)
    process_line t, xoffset, file, line_no + 1
  end

  @spec outdir(integer) :: binary

  defp outdir(8), do: "svg_8/"
  defp outdir(16), do: "svg_16/"
  defp outdir(:etc), do: "svg_etc/"
end

[srcdir|_] = System.argv()
SvgExporter.convert_dir srcdir
