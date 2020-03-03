defmodule NeoDGM.GSUB.ProgrammingLigatures.Contexts do
  alias TTFLib.TableSource.GSUB
  alias TTFLib.TableSource.OTFLayout.GlyphCoverage
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
            backtrack: [%GlyphCoverage{glyphs: '<'}],
            input: [%GlyphCoverage{glyphs: '-='}],
            lookahead: [%GlyphCoverage{glyphs: '>'}],
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
            format: 1,
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
          %{
            format: 3,
            backtrack: [
              %GlyphCoverage{glyphs: ["hyphen.larr.head", "equal.larr.head"]},
              %GlyphCoverage{glyphs: '<'}
            ],
            input: [%GlyphCoverage{glyphs: '-='}],
            lookahead: [%GlyphCoverage{glyphs: '>'}],
            substitutions: [
              {0, "Right arrow head alt"}
            ]
          },
          %{
            format: 3,
            backtrack: [],
            input: [%GlyphCoverage{glyphs: '-='}],
            lookahead: [%GlyphCoverage{glyphs: '>'}],
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
            backtrack: [
              %GlyphCoverage{glyphs: ["hyphen.larr.head", "equal.larr.head"]},
              %GlyphCoverage{glyphs: '<'}
            ],
            input: [%GlyphCoverage{glyphs: '-='}],
            lookahead: [%GlyphCoverage{glyphs: '-='}],
            substitutions: [
              {0, "Left arrow body"}
            ]
          },
          %{
            format: 3,
            backtrack: [
              %GlyphCoverage{glyphs: ["hyphen.larr.body", "equal.larr.body"]}
            ],
            input: [%GlyphCoverage{glyphs: '-='}],
            lookahead: [%GlyphCoverage{glyphs: '-='}],
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
              %GlyphCoverage{glyphs: [
                "hyphen.larr.head",
                "hyphen.larr.body",
                "equal.larr.head",
                "equal.larr.body"
              ]}
            ],
            input: [%GlyphCoverage{glyphs: '-='}],
            lookahead: [
              %GlyphCoverage{glyphs: ["hyphen.rarr.head", "equal.rarr.head"]},
              %GlyphCoverage{glyphs: '>'}
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
          %{
            format: 3,
            backtrack: [
              %GlyphCoverage{glyphs: [
                "hyphen.larr.head",
                "hyphen.larr.body",
                "equal.larr.head",
                "equal.larr.body"
              ]}
            ],
            input: [%GlyphCoverage{glyphs: '-='}],
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
              %GlyphCoverage{glyphs: [
                "hyphen.rarr.head",
                "hyphen.rarr.body",
                "equal.rarr.head",
                "equal.rarr.body"
              ]}
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
      },
      %Lookup{
        owner: GSUB,
        type: 6,
        name: "Pipe operator chain",
        subtables: [
          %{
            format: 1,
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
          %{
            format: 1,
            backtrack: [],
            lookahead: [%GlyphCoverage{glyphs: ["bar.pipeoperator"]}],
            substitutions: [
              {?|, "bar.pipeoperator"}
            ]
          }
        ]
      }
    ]
  end
end
