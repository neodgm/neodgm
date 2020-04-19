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
    %{glyph: %{index: index}, x_offset: xoff, y_offset: yoff, flags: flags} = component

    [
      # flags
      <<
        # 0xE000 - (reserved)
        0::3,
        # 0x1000 - UNSCALED_COMPONENT_OFFSET
        1::1,
        # 0x0800 - SCALED_COMPONENT_OFFSET
        0::1,
        # 0x0400 - OVERLAP_COMPOUND
        1::1,
        # 0x0200 - USE_MY_METRICS
        (if :use_my_metrics in flags, do: 1, else: 0)::1,
        # 0x0100 - WE_HAVE_INSTRUCTIONS
        0::1,
        # 0x0080 - WE_HAVE_A_TWO_BY_TWO
        0::1,
        # 0x0040 - WE_HAVE_AN_X_AND_Y_SCALE
        0::1,
        # 0x0020 - MORE_COMPONENTS
        more::1,
        # 0x0010 - (reserved)
        0::1,
        # 0x0008 - WE_HAVE_A_SCALE
        0::1,
        # 0x0004 - ROUND_XY_TO_GRID
        1::1,
        # 0x0002 - ARGS_ARE_XY_VALUES
        1::1,
        # 0x0001 - ARG_1_AND_2_ARE_WORDS
        0::1
      >>,
      # glyph index
      <<index::big-16>>,
      # args
      <<xoff::big-8, yoff::big-8>>
    ]
  end
end
