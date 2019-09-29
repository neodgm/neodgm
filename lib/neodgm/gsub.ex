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
        use_lookup "Short bidirectional arrow body"
        use_lookup "Bidirectional arrow joiner"
        use_lookup "Left arrow head"
        use_lookup "Left arrow body"
        use_lookup "Right arrow head"
        use_lookup "Right arrow head alt"
        use_lookup "Right arrow body"
        use_lookup "Markup comment exclam"
      end

      feature "calt", "Ligation for program codes" do
        use_lookup "Short bidirectional arrow chain"
        use_lookup "Left arrow head chain"
        use_lookup "Right arrow head chain"
        use_lookup "Left arrow body chain"
        use_lookup "Bidirectional arrow joiner chain"
        use_lookup "Left arrow tail chain"
        use_lookup "Right arrow body chain"
        use_lookup "Markup comment chain"
      end
    end

    lookups do
      single_subst "Short bidirectional arrow body" do
        subtable format: 2 do
          ?- -> "hyphen.bidiarr.short"
          ?= -> "equal.bidiarr.short"
        end
      end

      single_subst "Bidirectional arrow joiner" do
        subtable format: 2 do
          ?- -> "hyphen.bidiarr.joiner"
          ?= -> "equal.bidiarr.joiner"
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

      single_subst "Right arrow head alt" do
        subtable format: 2 do
          ?- -> "hyphen.rarr.head2"
          ?= -> "equal.rarr.head2"
        end
      end

      single_subst "Right arrow body" do
        subtable format: 2 do
          ?- -> "hyphen.rarr.body"
          ?= -> "equal.rarr.body"
        end
      end

      single_subst "Markup comment exclam" do
        subtable format: 2 do
          ?! -> "exclam.markupcomment"
        end
      end

      chaining_contextual_subst "Short bidirectional arrow chain" do
        subtable format: 3 do
          backtrack ['<']
          input ['-=']
          lookahead ['>']

          substitutions do
            0 -> "Short bidirectional arrow body"
          end
        end
      end

      chaining_contextual_subst "Left arrow head chain" do
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
      end

      chaining_contextual_subst "Right arrow head chain" do
        subtable format: 3 do
          backtrack [["hyphen.larr.head", "equal.larr.head"], '<']
          input ['-=']
          lookahead ['>']

          substitutions do
            0 -> use_lookup "Right arrow head alt"
          end
        end

        subtable format: 3 do
          backtrack []
          input ['-=']
          lookahead ['>']

          substitutions do
            0 -> use_lookup "Right arrow head"
          end
        end
      end

      chaining_contextual_subst "Left arrow body chain" do
        subtable format: 3 do
          backtrack [["hyphen.larr.head", "equal.larr.head"], '<']
          input ['-=']
          lookahead ['-=']

          substitutions do
            0 -> use_lookup "Left arrow body"
          end
        end

        subtable format: 3 do
          backtrack [["hyphen.larr.body", "equal.larr.body"]]
          input ['-=']
          lookahead ['-=']

          substitutions do
            0 -> use_lookup "Left arrow body"
          end
        end
      end

      chaining_contextual_subst "Bidirectional arrow joiner chain" do
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
          lookahead [["hyphen.rarr.head", "equal.rarr.head"], '>']

          substitutions do
            0 -> use_lookup "Bidirectional arrow joiner"
          end
        end
      end

      chaining_contextual_subst "Left arrow tail chain" do
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

      reverse_chain_single_subst "Right arrow body chain" do
        subtable format: 1 do
          backtrack []

          lookahead [
            [
              "hyphen.rarr.head",
              "hyphen.rarr.body",
              "equal.rarr.head",
              "equal.rarr.body"
            ]
          ]

          substitutions do
            ?- -> "hyphen.rarr.body"
            ?= -> "equal.rarr.body"
          end
        end
      end

      chaining_contextual_subst "Markup comment chain" do
        subtable format: 3 do
          backtrack ['<']
          input ['!', '-', '-']
          lookahead []

          substitutions do
            0 -> "Markup comment exclam"
            1 -> "Left arrow body"
            2 -> "Left arrow body"
          end
        end
      end
    end
  end
end
