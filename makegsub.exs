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
      {:chain, "Right Arrow Chain", 1,
        [
          %{
            glyph: ["hyphen"],
            backtrack: [],
            look_ahead: ["greater"],
            substitute: [
              %{glyph: 0, lookup: "Right Arrow"}
            ]
          },
          %{
            glyph: ["equal"],
            backtrack: [],
            look_ahead: ["greater"],
            substitute: [
              %{glyph: 0, lookup: "Right Arrow"}
            ]
          },
        ]},
      {:chain, "Left Arrow Chain", 1,
        [
          %{
            glyph: ["hyphen"],
            backtrack: ["less"],
            look_ahead: [],
            substitute: [
              %{glyph: 0, lookup: "Left Arrow"}
            ]
          },
          %{
            glyph: ["hyphen"],
            backtrack: ["hyphen.larr"],
            look_ahead: [],
            substitute: [
              %{glyph: 0, lookup: "Left Arrow"}
            ]
          }
        ]}
    ],

    clig: [
      {:reverse_chain, "Long Right Arrow", 1,
        [
          %{
            current: ["hyphen", "equal"],
            backtrack: [],
            look_ahead: ["hyphen.rarr", "equal.rarr"],
            substitute: ["hyphen.rarr", "equal.rarr"]
          }
        ]}
    ]
  ]

  @spec lookup_type(atom) :: integer

  defp lookup_type(:single), do: 1
  defp lookup_type(:chain), do: 6
  defp lookup_type(:reverse_chain), do: 8

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

  EEx.function_from_string :defp, :t_lookup_base, """
  <Lookup index="<%= index %>">
    <LookupType value="<%= lookup_type type %>"/>
    <LookupFlag value="0"/>
  <%= subtables %>
  </Lookup>
  """, [:index, :type, :subtables]

  EEx.function_from_string :defp, :t_single, """
  <SingleSubst index="<%= index %>" Format="<%= format %>">
    <%= for {from, to} <- map do %>
      <Substitution in="<%= from %>" out="<%= to %>"/>
    <% end %>
  </SingleSubst>
  """, [:index, :format, :map]

  EEx.function_from_string :defp, :t_chain, """
  <ChainContextSubst index="<%= index %>" Format="<%= format %>">
    <Coverage Format="1">
      <%= for g <- map.glyph do %>
        <Glyph value="<%= g %>"/>
      <% end %>
    </Coverage>
    <ChainSubRuleSet index="0">
      <ChainSubRule index="0">
        <%= for {g, i} <- Enum.with_index(map.backtrack) do %>
          <Backtrack index="<%= i %>" value="<%= g %>"/>
        <% end %>
        <%= for {g, i} <- Enum.with_index(map.look_ahead) do %>
          <LookAhead index="<%= i %>" value="<%= g %>"/>
        <% end %>
        <%= for {s, i} <- Enum.with_index(map.substitute) do %>
          <%
          lookup_index = Agent.get SingleSubstLookups, &Map.get(&1, s.lookup)
          %>
          <SubstLookupRecord index="<%= i %>">
            <SequenceIndex value="<%= s.glyph %>"/>
            <LookupListIndex value="<%= lookup_index %>"/>
          </SubstLookupRecord>
        <% end %>
      </ChainSubRule>
    </ChainSubRuleSet>
  </ChainContextSubst>
  """, [:index, :format, :map]

  EEx.function_from_string :defp, :t_reverse_chain, """
  <ReverseChainSingleSubst index="<%= index %>" Format="<%= format %>">
    <%= if length(map.current) != 0 do %>
      <Coverage Format="1">
        <%= for g <- map.current do %>
          <Glyph value="<%= g %>"/>
        <% end %>
      </Coverage>
    <% end %>
    <%= if length(map.backtrack) != 0 do %>
      <BacktrackCoverage index="0" Format="1">
        <%= for g <- map.backtrack do %>
          <Glyph value="<%= g %>"/>
        <% end %>
      </BacktrackCoverage>
    <% end %>
    <%= if length(map.look_ahead) != 0 do %>
      <LookAheadCoverage index="0" Format="1">
        <%= for g <- map.look_ahead do %>
          <Glyph value="<%= g %>"/>
        <% end %>
      </LookAheadCoverage>
    <% end %>
    <%= for {g, i} <- Enum.with_index(map.substitute) do %>
      <Substitute index="<%= i %>" value="<%= g %>"/>
    <% end %>
  </ReverseChainSingleSubst>
  """, [:index, :format, :map]

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

  @spec gen_lookup_list(list) :: binary

  defp gen_lookup_list(indexed) do
    children_xml =
      indexed
      |> Enum.map(fn {{_, v}, _} -> v end)
      |> List.flatten()
      |> Enum.map(fn {lookup, index} ->
        t_lookup_base index, elem(lookup, 0), gen_subtables(lookup)
      end)
      |> Enum.join("\n")
    "<LookupList>\n#{children_xml}\n</LookupList>"
  end

  @spec gen_subtables(tuple) :: binary

  defp gen_subtables(lookup)

  defp gen_subtables({:single, _, format, data}) do
    data
    |> Enum.with_index()
    |> Enum.map(fn {map, index} -> t_single index, format, map end)
    |> Enum.join("\n")
  end

  defp gen_subtables({:chain, _, format, data}) do
    data
    |> Enum.with_index()
    |> Enum.map(fn {map, index} -> t_chain index, format, map end)
    |> Enum.join("\n")
  end

  defp gen_subtables({:reverse_chain, _, format, data}) do
    data
    |> Enum.with_index()
    |> Enum.map(fn {map, index} -> t_reverse_chain index, format, map end)
    |> Enum.join("\n")
  end

  @spec test() :: any

  def test do
    {:ok, _pid} = Agent.start_link fn -> %{} end, name: SingleSubstLookups
    indexed = put_index table(), 0, []
    indexed
    |> Enum.map(fn {{_, v}, _} -> v end)
    |> List.flatten()
    |> Enum.filter(fn lookup ->
      (lookup |> elem(0) |> elem(0)) == :single
    end)
    |> Enum.map(fn {{_, name, _, _}, index} ->
      Agent.update SingleSubstLookups, fn state ->
        Map.put state, name, index
      end
    end)
    """
    <?xml version="1.0" encoding="utf-8"?>
    <ttFont sfntVersion="\\x00\\x01\\x00\\x00" ttLibVersion="3.7">
      <GSUB>
        <Version value="0x00010000"/>
        #{gen_dflt_script indexed}
        #{gen_feature_list indexed}
        #{gen_lookup_list indexed}
      </GSUB>
    </ttFont>
    """
  end
end

IO.puts GSUBGenerator.test()
