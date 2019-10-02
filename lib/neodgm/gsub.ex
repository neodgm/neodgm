defmodule NeoDGM.GSUB do
  alias TTFLib.TableSource.GSUB
  alias TTFLib.TableSource.GSUB.Linker
  alias TTFLib.TableSource.OTFLayout.{Feature, FeatureList}
  alias TTFLib.TableSource.OTFLayout.{Lookup, LookupList}
  alias TTFLib.TableSource.OTFLayout.{LanguageSystem, Script, ScriptList}

  script_list = %ScriptList{
    scripts: [
      %Script{
        tag: "DFLT",
        default_language: %LanguageSystem{
          tag: "dflt",
          feature_keys: [
            {"aalt", "Ligation for program codes"},
            {"calt", "Ligation for program codes"}
          ]
        },
        languages: []
      }
    ]
  }

  feature_list = %FeatureList{
    features: [
      %Feature{
        tag: "aalt",
        name: "Ligation for program codes",
        lookup_keys: [
          "Short bidirectional arrow body",
          "Bidirectional arrow joiner",
          "Left arrow head",
          "Left arrow body",
          "Right arrow head",
          "Right arrow head alt",
          "Right arrow body",
          "Markup comment exclam"
        ]
      },
      %Feature{
        tag: "calt",
        name: "Ligation for program codes",
        lookup_keys: [
          "Short bidirectional arrow chain",
          "Left arrow head chain",
          "Right arrow head chain",
          "Left arrow body chain",
          "Bidirectional arrow joiner chain",
          "Left arrow tail chain",
          "Right arrow body chain",
          "Markup comment chain"
        ]
      }
    ]
  }

  lookup_list = %LookupList{
    lookups: [
      %Lookup{
        owner: GSUB,
        type: 1,
        name: "Short bidirectional arrow body",
        subtables: [
          %{
            format: 2,
            substitutions: [
              {?-, "hyphen.bidiarr.short"},
              {?=, "equal.bidiarr.short"}
            ]
          }
        ]
      },
      %Lookup{
        owner: GSUB,
        type: 1,
        name: "Bidirectional arrow joiner",
        subtables: [
          %{
            format: 2,
            substitutions: [
              {?-, "hyphen.bidiarr.joiner"},
              {?=, "equal.bidiarr.joiner"}
            ]
          }
        ]
      },
      %Lookup{
        owner: GSUB,
        type: 1,
        name: "Left arrow head",
        subtables: [
          %{
            format: 2,
            substitutions: [
              {?-, "hyphen.larr.head"},
              {?=, "equal.larr.head"}
            ]
          }
        ]
      },
      %Lookup{
        owner: GSUB,
        type: 1,
        name: "Left arrow body",
        subtables: [
          %{
            format: 2,
            substitutions: [
              {?-, "hyphen.larr.body"},
              {?=, "equal.larr.body"}
            ]
          }
        ]
      },
      %Lookup{
        owner: GSUB,
        type: 1,
        name: "Right arrow head",
        subtables: [
          %{
            format: 2,
            substitutions: [
              {?-, "hyphen.rarr.head"},
              {?=, "equal.rarr.head"}
            ]
          }
        ]
      },
      %Lookup{
        owner: GSUB,
        type: 1,
        name: "Right arrow head alt",
        subtables: [
          %{
            format: 2,
            substitutions: [
              {?-, "hyphen.rarr.head2"},
              {?=, "equal.rarr.head2"}
            ]
          }
        ]
      },
      %Lookup{
        owner: GSUB,
        type: 1,
        name: "Right arrow body",
        subtables: [
          %{
            format: 2,
            substitutions: [
              {?-, "hyphen.rarr.body"},
              {?=, "equal.rarr.body"}
            ]
          }
        ]
      },
      %Lookup{
        owner: GSUB,
        type: 1,
        name: "Markup comment exclam",
        subtables: [
          %{
            format: 2,
            substitutions: [
              {?!, "exclam.markupcomment"}
            ]
          }
        ]
      },
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
            format: 3,
            backtrack: ['<'],
            input: ['!', '-', '-'],
            lookahead: [],
            substitutions: [
              {0, "Markup comment exclam"},
              {1, "Left arrow body"},
              {2, "Left arrow body"}
            ]
          }
        ]
      }
    ]
  }

  gsub =
    Linker.link(%GSUB{
      script_list: script_list,
      feature_list: feature_list,
      lookup_list: lookup_list
    })

  @spec gsub() :: map()
  def gsub, do: unquote(Macro.escape(gsub))
end
