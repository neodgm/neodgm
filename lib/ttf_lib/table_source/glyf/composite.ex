defmodule TTFLib.TableSource.Glyf.Composite do
  defstruct ~w(components)a

  @type t :: %__MODULE__{components: [[binary]]}

  @spec new([map()]) :: t()
  def new(components) do
    %__MODULE__{components: make_data(components, [])}
  end

  defp make_data(component, acc)

  defp make_data([component], acc) do
    Enum.reverse([do_make_data(component, 0) | acc])
  end

  defp make_data([component | components], acc) do
    make_data(components, [do_make_data(component, 1) | acc])
  end

  defp do_make_data(component, more) do
    %{glyph: %{index: index}, x_offset: xoff, y_offset: yoff} = component

    [
      # flags
      <<0::3, 1::1, 0::1, 1::1, 0::4, more::1, 0::1, 0::1, 1::1, 1::1, 0::1>>,
      # glyph index
      <<index::big-16>>,
      # args
      <<xoff::big-8, yoff::big-8>>
    ]
  end
end
