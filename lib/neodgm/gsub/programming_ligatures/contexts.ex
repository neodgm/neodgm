defmodule NeoDGM.GSUB.ProgrammingLigatures.Contexts do
  alias TTFLib.TableSource.GSUB
  alias TTFLib.TableSource.OTFLayout.Lookup

  def data do
    [
      %Lookup{
        owner: GSUB,
        type: 6,
        name: "Short bidirectional arrow chain",
        subtables: [
          %{
            format: 3,
            backtrack: ['<'],
            input: ['-='],
            lookahead: ['>'],
            substitutions: [
              {0, "Short bidirectional arrow body"}
            ]
          }
        ]
      },
      %Lookup{
        owner: GSUB,
        type: 6,
        name: "Left arrow head chain",
        subtables: [
          %{
            format: 3,
            backtrack: ['<'],
            input: ['-'],
            lookahead: [],
            substitutions: [
              {0, "Left arrow head"}
            ]
          },
          %{
            format: 3,
            backtrack: ['<'],
            input: ['='],
            lookahead: ['='],
            substitutions: [
              {0, "Left arrow head"}
            ]
          }
        ]
      },
      %Lookup{
        owner: GSUB,
        type: 6,
        name: "Right arrow head chain",
        subtables: [
          %{
            format: 3,
            backtrack: [["hyphen.larr.head", "equal.larr.head"], '<'],
            input: ['-='],
            lookahead: ['>'],
            substitutions: [
              {0, "Right arrow head alt"}
            ]
          },
          %{
            format: 3,
            backtrack: [],
            input: ['-='],
            lookahead: ['>'],
            substitutions: [
              {0, "Right arrow head"}
            ]
          }
        ]
      },
      %Lookup{
        owner: GSUB,
        type: 6,
        name: "Left arrow body chain",
        subtables: [
          %{
            format: 3,
            backtrack: [["hyphen.larr.head", "equal.larr.head"], '<'],
            input: ['-='],
            lookahead: ['-='],
            substitutions: [
              {0, "Left arrow body"}
            ]
          },
          %{
            format: 3,
            backtrack: [["hyphen.larr.body", "equal.larr.body"]],
            input: ['-='],
            lookahead: ['-='],
            substitutions: [
              {0, "Left arrow body"}
            ]
          }
        ]
      },
      %Lookup{
        owner: GSUB,
        type: 6,
        name: "Bidirectional arrow joiner chain",
        subtables: [
          %{
            format: 3,
            backtrack: [
              [
                "hyphen.larr.head",
                "hyphen.larr.body",
                "equal.larr.head",
                "equal.larr.body"
              ]
            ],
            input: ['-='],
            lookahead: [["hyphen.rarr.head", "equal.rarr.head"], '>'],
            substitutions: [
              {0, "Bidirectional arrow joiner"}
            ]
          }
        ]
      },
      %Lookup{
        owner: GSUB,
        type: 6,
        name: "Left arrow tail chain",
        subtables: [
          %{
            format: 3,
            backtrack: [
              [
                "hyphen.larr.head",
                "hyphen.larr.body",
                "equal.larr.head",
                "equal.larr.body"
              ]
            ],
            input: ['-='],
            lookahead: [],
            substitutions: [
              {0, "Left arrow body"}
            ]
          }
        ]
      },
      %Lookup{
        owner: GSUB,
        type: 8,
        name: "Right arrow body chain",
        subtables: [
          %{
            format: 1,
            backtrack: [],
            lookahead: [
              [
                "hyphen.rarr.head",
                "hyphen.rarr.body",
                "equal.rarr.head",
                "equal.rarr.body"
              ]
            ],
            substitutions: [
              {?-, "hyphen.rarr.body"},
              {?=, "equal.rarr.body"}
            ]
          }
        ]
      },
      %Lookup{
        owner: GSUB,
        type: 6,
        name: "Markup comment chain",
        subtables: [
          %{
            format: 1,
            subrulesets: %{
              ?! => [
                %{
                  backtrack: '<',
                  input: '--',
                  lookahead: [],
                  substitutions: [
                    {0, "Markup comment exclam"},
                    {1, "Left arrow body"},
                    {2, "Left arrow body"}
                  ]
                }
              ]
            }
          }
        ]
      }
    ]
  end
end
