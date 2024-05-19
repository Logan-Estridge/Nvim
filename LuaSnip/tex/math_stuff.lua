return {
  s({trig="\\fr", dscr="Autoexpands '\\fr' to a fraction with nodes for the numerator and denominator", snippetType="autosnippet"},
    fmta(
      "\\frac{<>}{<>}",
      { i(1), i(2) }
    )
  ),
  s({trig="\\int", dscr="Autoexpands '\\int' to an integral with nodes for the range", snippetType="autosnippet"},
    fmta(
      "\\int_{<>}^{<>}",
      { i(1), i(2) }
    )
  ),
  s({trig="_", dscr="Autoexpands '_' to '_{}'", snippetType="autosnippet"},
    fmta(
      "_{<>}",
      { i(1) }
    )
  ),
  s({trig="^", dscr="Autoexpands '^' to '^{}'", snippetType="autosnippet"},
    fmta(
      "^{<>}",
      { i(1) }
    )
  ),
}

