defmodule TTFLib.NameTableBuilder do
  alias TTFLib.TableSource.Name.Definitions, as: Defs

  defmacro name_table(variant, do: do_block) do
    exprs =
      case do_block do
        {:__block__, _, exprs} -> exprs
        expr -> [expr]
      end

    quote do
      @name Map.new(unquote(exprs))

      def name_table(unquote(variant)) do
        @name
      end
    end
  end

  defmacro platform(platform, do: do_block) do
    exprs =
      case do_block do
        {:__block__, _, exprs} -> exprs
        expr -> [expr]
      end

    quote do
      @current_platform unquote(platform)

      {Defs.platform_id(unquote(platform)), Map.new(unquote(exprs))}
    end
  end

  defmacro encoding(encoding, do: do_block) do
    exprs =
      case do_block do
        {:__block__, _, exprs} -> exprs
        expr -> [expr]
      end

    quote do
      {Defs.encoding_id(@current_platform, unquote(encoding)), Map.new(unquote(exprs))}
    end
  end

  defmacro language(language, do: do_block) do
    exprs =
      case do_block do
        {:__block__, _, exprs} -> exprs
        expr -> [expr]
      end

    quote do
      {Defs.language_id(@current_platform, unquote(language)), Map.new(unquote(exprs))}
    end
  end

  Enum.each(Defs.name_ids(), fn {name, id} ->
    defmacro unquote(name)(value) do
      {unquote(id), value}
    end
  end)
end
