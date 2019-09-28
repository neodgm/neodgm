defmodule TTFLib.GSUBBuilder do
  import TTFLib.GSUBBuilder.Common

  defmacro __using__(_opts) do
    quote do
      import unquote(__MODULE__)
      import unquote(__MODULE__.SingleLookup)
      import unquote(__MODULE__.ChainingContextualLookup)
    end
  end

  defmacro gsub(do: do_block) do
    alias __MODULE__.Linker
    alias TTFLib.TableSource.GSUB

    exprs =
      do_block
      |> get_exprs()
      |> Enum.filter(&match?({x, _, _} when is_atom(x), &1))

    quote do
      builder = unquote(__MODULE__)
      gsub = struct(GSUB, unquote(exprs))

      @gsub Linker.link(gsub)

      def gsub, do: @gsub
    end
  end

  defmacro scripts(do: do_block) do
    alias TTFLib.TableSource.OTFLayout.ScriptList

    scripts =
      do_block
      |> get_exprs()
      |> Enum.filter(&match?({:script, _, _}, &1))

    quote do
      {:script_list, %ScriptList{scripts: unquote(scripts)}}
    end
  end

  defmacro script(tag, do: do_block) do
    alias TTFLib.TableSource.OTFLayout.Script

    languages =
      do_block
      |> get_exprs()
      |> Enum.filter(&match?({:language, _, _}, &1))

    tag = if tag === :default, do: "DFLT", else: tag

    quote bind_quoted: [tag: tag, languages: languages] do
      if is_valid_tag(tag) do
        groups = Enum.group_by(languages, &(&1.tag === :default))

        %Script{
          tag: tag,
          default_language: List.first(groups[true] || []),
          languages: groups[false] || []
        }
      else
        raise ArgumentError, "tag must be a 4-byte array, got: #{inspect(tag)}"
      end
    end
  end

  defmacro language(tag, do: do_block) do
    alias TTFLib.TableSource.OTFLayout.LanguageSystem

    features =
      do_block
      |> get_exprs
      |> Enum.filter(&match?({:use_feature, _, _}, &1))

    quote bind_quoted: [tag: tag, features: features] do
      if tag === :default or is_valid_tag(tag) do
        %LanguageSystem{
          tag: tag,
          feature_keys: features
        }
      else
        raise ArgumentError, "tag must be a 4-byte array, got: #{inspect(tag)}"
      end
    end
  end

  defmacro use_feature(tag, name) do
    quote bind_quoted: [tag: tag, name: name] do
      if is_valid_tag(tag) do
        {tag, name}
      else
        raise ArgumentError, "tag must be a 4-byte binary, got: #{inspect(tag)}"
      end
    end
  end

  defmacro features(do: do_block) do
    alias TTFLib.TableSource.OTFLayout.FeatureList

    features =
      do_block
      |> get_exprs()
      |> Enum.filter(&match?({:feature, _, _}, &1))

    quote do
      {:feature_list, %FeatureList{features: unquote(features)}}
    end
  end

  defmacro feature(tag, name, do: do_block) do
    alias TTFLib.TableSource.OTFLayout.Feature

    lookups =
      do_block
      |> get_exprs()
      |> Enum.filter(&match?({:use_lookup, _, _}, &1))

    quote bind_quoted: [tag: tag, name: name, lookups: lookups] do
      if is_valid_tag(tag) do
        %Feature{tag: tag, name: name, lookup_keys: lookups}
      else
        raise ArgumentError, "tag must be a 4-byte binary, got: #{inspect(tag)}"
      end
    end
  end

  defmacro use_lookup(name), do: quote(do: unquote(name))

  defmacro lookups(do: do_block) do
    alias TTFLib.TableSource.OTFLayout.LookupList

    lookups =
      do_block
      |> get_exprs()
      |> Enum.filter(&match?({x, _, _} when is_atom(x), &1))

    quote do
      {:lookup_list, %LookupList{lookups: unquote(lookups)}}
    end
  end

  defguard is_valid_tag(tag) when is_binary(tag) and byte_size(tag) === 4
end
