defmodule TTFLib.TableSource.GSUB.Linker do
  alias TTFLib.TableSource.GSUB
  alias TTFLib.TableSource.OTFLayout.Feature
  alias TTFLib.TableSource.OTFLayout.FeatureList
  alias TTFLib.TableSource.OTFLayout.LanguageSystem
  alias TTFLib.TableSource.OTFLayout.Lookup
  alias TTFLib.TableSource.OTFLayout.LookupList
  alias TTFLib.TableSource.OTFLayout.ScriptList

  @spec link(GSUB.t()) :: GSUB.t()
  def link(gsub) do
    feature_map = index_map(gsub.feature_list.features, &{&1.tag, &1.name})
    lookup_map = index_map(gsub.lookup_list.lookups, & &1.name)

    linked_script_list = link_script(gsub.script_list, feature_map)
    linked_feature_list = link_feature(gsub.feature_list, lookup_map)
    linked_lookup_list = link_lookup(gsub.lookup_list, lookup_map)

    %GSUB{
      gsub
      | script_list: linked_script_list,
        feature_list: linked_feature_list,
        lookup_list: linked_lookup_list
    }
  end

  defp link_script(script_list, feature_map) do
    linked_scripts =
      Enum.map(script_list.scripts, fn script ->
        def_lang = script.default_language
        langs = script.languages
        linked_def_lang = link_lang(def_lang, feature_map)
        linked_langs = Enum.map(langs, &link_lang(&1, feature_map))

        script
        |> Map.put(:default_language, linked_def_lang)
        |> Map.put(:languages, linked_langs)
      end)

    %ScriptList{script_list | scripts: linked_scripts}
  end

  defp link_lang(lang, feature_map)
  defp link_lang(nil, _), do: nil

  defp link_lang(lang, feature_map) do
    required_feature_index =
      case feature_map[lang.required_feature_key] do
        nil -> 0xFFFF
        index -> index
      end

    %LanguageSystem{
      lang
      | required_feature_index: required_feature_index,
        feature_indices: Enum.map(lang.feature_keys, &feature_map[&1])
    }
  end

  defp link_feature(feature_list, lookup_map) do
    linked_features =
      Enum.map(feature_list.features, fn feature ->
        %Feature{
          feature
          | lookup_indices: Enum.map(feature.lookup_keys, &lookup_map[&1])
        }
      end)

    %FeatureList{feature_list | features: linked_features}
  end

  defp link_lookup(lookup_list, lookup_map) do
    linked_lookups =
      Enum.map(lookup_list.lookups, fn
        %Lookup{type: type} = lookup when type in 1..4 or type === 8 ->
          lookup

        %Lookup{type: type, subtables: subtables} = lookup when type in 5..7 ->
          linked_subtables = link_subtables(subtables, lookup_map)

          %Lookup{lookup | subtables: linked_subtables}
      end)

    %LookupList{lookup_list | lookups: linked_lookups}
  end

  defp link_subtables(subtables, lookup_map) do
    Enum.map(subtables, fn subtable ->
      subs = subtable[:substitutions] || []
      linked_subs = Enum.map(subs, fn {k, v} -> {k, lookup_map[v]} end)

      Map.put(subtable, :substitutions, linked_subs)
    end)
  end

  defp index_map(enumerable, fun) do
    enumerable
    |> Enum.with_index()
    |> Enum.map(fn {item, index} -> {fun.(item), index} end)
    |> Map.new()
  end
end
