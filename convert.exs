#!/usr/bin/elixir

defmodule SourceConverter do
  def convert(filename, line_width, codepoint) do
    data = File.read! filename
    list = for <<x::size(line_width) <- data>>, do: x
    list
    |> Enum.chunk(16)
    |> Enum.map(fn lines ->
      lines
      |> Enum.map(fn line ->
        line |> Integer.to_string(2) |> String.pad_leading(line_width, "0")
      end)
      |> Enum.join("\n")
    end)
    |> Enum.reduce(codepoint, fn glyph, code ->
      IO.puts "#{code} #{line_width}"
      IO.puts glyph
      code + 1
    end)
  end
end

[filename, width, code] = System.argv()
{width, _} = Integer.parse width
{code, _} = Integer.parse code, 16

SourceConverter.convert filename, width, code
