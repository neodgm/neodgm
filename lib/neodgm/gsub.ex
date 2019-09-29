defmodule NeoDGM.GSUB do
  use TTFLib.GSUBBuilder

  gsub do
    scripts do
      script :default do
        language :default do
          use_feature "aalt", "Ligation for program codes"
          use_feature "calt", "Ligation for program codes"
        end
      end
    end

    features do
      feature "aalt", "Ligation for program codes" do
        use_lookup "Short middle arrow body"
        use_lookup "Left arrow head"
        use_lookup "Left arrow body"
        use_lookup "Right arrow head"
        use_lookup "Right arrow body"
      end

      feature "calt", "Ligation for program codes" do
        use_lookup "Short middle arrow"
        use_lookup "Left arrow"
      end
    end

    lookups do
      single_subst "Short middle arrow body" do
        subtable format: 2 do
          ?- -> "hyphen.marr.body"
          ?= -> "equal.marr.body"
        end
      end

      single_subst "Left arrow head" do
        subtable format: 2 do
          ?- -> "hyphen.larr.head"
          ?= -> "equal.larr.head"
        end
      end

      single_subst "Left arrow body" do
        subtable format: 2 do
          ?- -> "hyphen.larr.body"
          ?= -> "equal.larr.body"
        end
      end

      single_subst "Right arrow head" do
        subtable format: 2 do
          ?- -> "hyphen.rarr.head"
          ?= -> "equal.rarr.head"
        end
      end

      single_subst "Right arrow body" do
        subtable format: 2 do
          ?- -> "hyphen.rarr.body"
          ?= -> "equal.rarr.body"
        end
      end

      chaining_contextual_subst "Short middle arrow" do
        subtable format: 3 do
          backtrack ['<']
          input ['-=']
          lookahead ['>']

          substitutions do
            0 -> "Short middle arrow body"
          end
        end
      end

      chaining_contextual_subst "Left arrow" do
        subtable format: 3 do
          backtrack ['<']
          input ['-']
          lookahead []

          substitutions do
            0 -> use_lookup "Left arrow head"
          end
        end

        subtable format: 3 do
          backtrack ['<']
          input ['=']
          lookahead ['=']

          substitutions do
            0 -> use_lookup "Left arrow head"
          end
        end

        subtable format: 3 do
          backtrack [
            [
              "hyphen.larr.head",
              "hyphen.larr.body",
              "equal.larr.head",
              "equal.larr.body"
            ]
          ]

          input ['-=']
          lookahead []

          substitutions do
            0 -> use_lookup "Left arrow body"
          end
        end
      end
    end
  end
end
