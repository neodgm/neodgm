defmodule TTFLib.TableSource.OS_2.Enums do
  @spec weight_class(atom() | integer()) :: integer()
  def weight_class(value)
  def weight_class(:thin), do: 100
  def weight_class(:extra_light), do: 200
  def weight_class(:light), do: 300
  def weight_class(:normal), do: 400
  def weight_class(:medium), do: 500
  def weight_class(:semi_bold), do: 600
  def weight_class(:bold), do: 700
  def weight_class(:extra_bold), do: 800
  def weight_class(:black), do: 900
  def weight_class(value) when is_integer(value), do: value

  @spec width_class(atom()) :: integer()
  def width_class(value)
  def width_class(:ultra_condensed), do: 1
  def width_class(:extra_condensed), do: 2
  def width_class(:condensed), do: 3
  def width_class(:semi_condensed), do: 4
  def width_class(:medium), do: 5
  def width_class(:semi_expanded), do: 6
  def width_class(:expanded), do: 7
  def width_class(:extra_expanded), do: 8
  def width_class(:ultra_expanded), do: 9

  family_class_data = %{
    oldstyle_serif:
      {0x0100,
       %{
         ibm_rounded_legibility: 1,
         garande: 2,
         venetian: 3,
         modified_venetian: 4,
         dutch_modern: 5,
         dutch_traditional: 6,
         contemporary: 7,
         calligraphic: 8
       }},
    transitional_serif:
      {0x0200,
       %{
         direct_line: 1,
         script: 2
       }},
    modern_serif:
      {0x0300,
       %{
         italian: 1,
         script: 2
       }},
    clarendon_serif:
      {0x0400,
       %{
         clarendon: 1,
         modern: 2,
         traditional: 3,
         newspaper: 4,
         stub_serif: 5,
         monotone: 6,
         typewriter: 7
       }},
    slab_serif:
      {0x0500,
       %{
         monotone: 1,
         humanist: 2,
         geometric: 3,
         swiss: 4,
         typewriter: 5
       }},
    freeform_serif:
      {0x0700,
       %{
         modern: 1
       }},
    sans_serif:
      {0x0800,
       %{
         ibm_neo_grotesque_gothic: 1,
         humanist: 2,
         low_x_round_geometric: 3,
         high_x_round_geometric: 4,
         neo_grotesque_gothic: 5,
         modified_neo_grotesque_gothic: 6,
         typewriter_gothic: 9,
         matrix: 10
       }},
    ornamental:
      {0x0900,
       %{
         engraver: 1,
         black_letter: 2,
         decorative: 3,
         three_dimentional: 4
       }},
    script:
      {0x0A00,
       %{
         uncial: 1,
         brush_joined: 2,
         formal_joined: 3,
         monotone_joined: 4,
         calligraphic: 5,
         brush_unjoined: 6,
         formal_unjoined: 7,
         monotone_unjoined: 8
       }},
    symbolic:
      {0x0C00,
       %{
         mixed_serif: 3,
         oldstyle_serif: 6,
         neo_grotesque_sans_serif: 7
       }}
  }

  @spec family_class({atom(), atom()}) :: integer()
  def family_class(value)
  def family_class({:no_classification, _}), do: 0x0000

  Enum.each(family_class_data, fn {class, {base_value, subclasses}} ->
    def family_class({unquote(class), :no_classification}), do: unquote(base_value)

    Enum.each(subclasses, fn {subclass, value} ->
      def family_class({unquote(class), unquote(subclass)}), do: unquote(base_value + value)
    end)

    def family_class({unquote(class), :miscellaneous}), do: unquote(base_value + 15)
  end)
end
