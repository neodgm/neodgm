#!/usr/bin/elixir

defmodule GSUBGenerator do
  require EEx

  @spec table() :: keyword

  defp table, do: [
    aalt: [
      {:single, "Right Arrow", 2,
        [
          %{
            "hyphen" => "hyphen.rarr",
            "equal" => "equal.rarr"
          }
        ]},
      {:single, "Left Arrow", 1,
        [
          %{
            "hyphen" => "hyphen.larr"
          }
        ]}
    ],

    calt: [
    ],

    clig: [
      {:reverse_chain, "Long Right Arrow", 1,
        [
          %{
            backtrack: [],
            current: ["hyphen", "equal"],
            look_ahead: ["hyphen.rarr", "equal.rarr"],
            substitute: ["hyphen.rarr", "equal.rarr"]
          }
        ]}
    ]
  ]

  EEx.function_from_string :defp, :t_feature_record, """
  <FeatureRecord index="<%= index %>">
    <FeatureTag value="<%= tag %>"/>
    <Feature>
      <%= for {{_, v}, i} <- Enum.with_index(lookups) do %>
        <LookupListIndex index="<%= i %>" value="<%= v %>"/>
      <% end %>
    </Feature>
  </FeatureRecord>
  """, [:index, :tag, :lookups]

  @spec lookup_type(atom) :: integer

  defp lookup_type(:single), do: 1
  defp lookup_type(:chain), do: 6
  defp lookup_type(:reverse_chain), do: 8

  @spec put_index(keyword, integer, keyword) :: keyword

  defp put_index(table, start, acc)

  defp put_index([], _, acc) do
    acc |> Enum.reverse |> Enum.with_index
  end

  defp put_index([{key, val}|t], start, acc) do
    acc = [{key, Enum.with_index(val, start)}|acc]
    put_index t, start + length(val), acc
  end

  @spec gen_dflt_script(list) :: binary

  defp gen_dflt_script(indexed) do
    feature_index =
      indexed
      |> Enum.map(fn {_, i} ->
        ~s(<FeatureIndex index="#{i}" value="#{i}"/>)
      end)
      |> Enum.join("\n")
    """
    <ScriptList>
      <ScriptRecord index="0">
        <ScriptTag value="DFLT"/>
        <Script>
          <DefaultLangSys>
            <ReqFeatureIndex value="65535"/>
    #{feature_index}
          </DefaultLangSys>
        </Script>
      </ScriptRecord>
    </ScriptList>
    """
  end

  @spec gen_feature_list(list) :: binary

  defp gen_feature_list(indexed) do
    str = indexed |> Enum.map(fn {{k, v}, i} -> t_feature_record i, k, v end)
    "<FeatureList>#{str}</FeatureList>"
  end

  @spec test() :: any

  def test do
    indexed = put_index table(), 0, []
    IO.puts gen_dflt_script(indexed)
    IO.puts gen_feature_list indexed
  end
end

IO.puts GSUBGenerator.test()

"""
<?xml version="1.0" encoding="utf-8"?>
<ttFont sfntVersion="\\x00\\x01\\x00\\x00" ttLibVersion="3.7">
  <GSUB>
    <Version value="0x00010000"/>

    <!-- ScriptList -->

    <!-- FeatureList -->

    <LookupList>
      <Lookup index="0">
        <LookupType value="1"/>
        <LookupFlag value="0"/>
        <SingleSubst index="0" Format="2">
          <Substitution in="hyphen" out="hyphen.rarr"/>
          <Substitution in="equal" out="equal.rarr"/>
        </SingleSubst>
      </Lookup>
      <Lookup index="1">
        <LookupType value="1"/>
        <LookupFlag value="0"/>
        <SingleSubst index="0" Format="1">
          <Substitution in="hyphen" out="hyphen.larr"/>
        </SingleSubst>
      </Lookup>
    </LookupList>
  </GSUB>
</ttFont>
"""
