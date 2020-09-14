defmodule NeoDGM.GSUB.Code.Lookups.Contexts do
  alias PixelFont.TableSource.GSUB
  alias PixelFont.TableSource.GSUB.ChainingContext1
  alias PixelFont.TableSource.GSUB.ChainingContext3
  alias PixelFont.TableSource.GSUB.ReverseChainingContext1
  alias PixelFont.TableSource.OTFLayout.GlyphCoverage
  alias PixelFont.TableSource.OTFLayout.Lookup

  @spec data() :: [Lookup.t()]
  def data do
    [
      %Lookup{
        owner: GSUB,
        type: 6,
        name: "Short bidirectional arrow chain",
        subtables: [
          %ChainingContext3{
            backtrack: [GlyphCoverage.of('<')],
            input: [GlyphCoverage.of('-=')],
            lookahead: [GlyphCoverage.of('>')],
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
          %ChainingContext1{
            subrulesets: %{
              ?< => [
                %{
                  backtrack: '',
                  input: '-',
                  lookahead: '',
                  substitutions: [
                    {1, "Left arrow head"}
                  ]
                },
                %{
                  backtrack: '',
                  input: '=',
                  lookahead: '=',
                  substitutions: [
                    {1, "Left arrow head"}
                  ]
                }
              ]
            }
          }
        ]
      },
      %Lookup{
        owner: GSUB,
        type: 6,
        name: "Right arrow head chain",
        subtables: [
          %ChainingContext3{
            backtrack: [
              GlyphCoverage.of(["hyphen.larr.head", "equal.larr.head"]),
              GlyphCoverage.of('<')
            ],
            input: [GlyphCoverage.of('-=')],
            lookahead: [GlyphCoverage.of('>')],
            substitutions: [
              {0, "Right arrow head alt"}
            ]
          },
          %ChainingContext3{
            backtrack: [],
            input: [GlyphCoverage.of('-=')],
            lookahead: [GlyphCoverage.of('>')],
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
          %ChainingContext3{
            backtrack: [
              GlyphCoverage.of(["hyphen.larr.head", "equal.larr.head"]),
              GlyphCoverage.of('<')
            ],
            input: [GlyphCoverage.of('-=')],
            lookahead: [GlyphCoverage.of('-=')],
            substitutions: [
              {0, "Left arrow body"}
            ]
          },
          %ChainingContext3{
            backtrack: [
              GlyphCoverage.of(["hyphen.larr.body", "equal.larr.body"])
            ],
            input: [GlyphCoverage.of('-=')],
            lookahead: [GlyphCoverage.of('-=')],
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
          %ChainingContext3{
            backtrack: [
              GlyphCoverage.of([
                "hyphen.larr.head",
                "hyphen.larr.body",
                "equal.larr.head",
                "equal.larr.body"
              ])
            ],
            input: [GlyphCoverage.of('-=')],
            lookahead: [
              GlyphCoverage.of(["hyphen.rarr.head", "equal.rarr.head"]),
              GlyphCoverage.of('>')
            ],
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
          %ChainingContext3{
            backtrack: [
              GlyphCoverage.of([
                "hyphen.larr.head",
                "hyphen.larr.body",
                "equal.larr.head",
                "equal.larr.body"
              ])
            ],
            input: [GlyphCoverage.of('-=')],
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
          %ReverseChainingContext1{
            backtrack: [],
            lookahead: [
              GlyphCoverage.of([
                "hyphen.rarr.head",
                "hyphen.rarr.body",
                "equal.rarr.head",
                "equal.rarr.body"
              ])
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
          %ChainingContext1{
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
      },
      %Lookup{
        owner: GSUB,
        type: 6,
        name: "Pipe operator chain",
        subtables: [
          %ChainingContext1{
            subrulesets: %{
              ?< => [
                %{
                  backtrack: '',
                  input: '|',
                  lookahead: '',
                  substitutions: [
                    {0, "Pipe operator"},
                    {1, "Pipe operator"}
                  ]
                }
              ],
              ?| => [
                %{
                  backtrack: ["bar.pipeoperator"],
                  input: '',
                  lookahead: '',
                  substitutions: [
                    {0, "Pipe operator"}
                  ]
                },
                %{
                  backtrack: '',
                  input: '>',
                  lookahead: '',
                  substitutions: [
                    {0, "Pipe operator"},
                    {1, "Pipe operator"}
                  ]
                }
              ],
              ?> => [
                %{
                  backtrack: ["bar.pipeoperator"],
                  input: '',
                  lookahead: '',
                  substitutions: [
                    {0, "Pipe operator"}
                  ]
                }
              ]
            }
          }
        ]
      },
      %Lookup{
        owner: GSUB,
        type: 8,
        name: "Right pipe operator chain",
        subtables: [
          %ReverseChainingContext1{
            backtrack: [],
            lookahead: [GlyphCoverage.of(["bar.pipeoperator"])],
            substitutions: [
              {?|, "bar.pipeoperator"}
            ]
          }
        ]
      }
    ]
  end
end
