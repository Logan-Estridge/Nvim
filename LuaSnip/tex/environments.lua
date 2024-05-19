-- From any snippet file, source `get_visual` from global helper functions file
local helpers = require('luasnip-helper-funcs')
local get_visual = helpers.get_visual

return {
  s({trig="al", dscr="Expands a latex align* environment"},
    fmta(
      [[
        \begin{align*}
          <>
        \end{align*}
      ]],
      { i(0) }
    )
  ),
  s({trig="\\beg", dscr="Expands a generic latex environment", snippetType="autosnippet"},
    fmta(
      [[
        \begin{<>}
          <>
        \end{<>}
      ]],
      { i(1), i(0), rep(1) }
    )
  ),
  s({trig="eq", dscr="Expands a latex equation* environment"},
    fmta(
      [[
        \begin{equation*}
          <>
        \end{equation*}
      ]],
      { i(0) }
    )
  ),
  s({trig="mm", dscr="Autoexpands 'mm' to an inline math environment", snippetType="autosnippet"},
    fmta(
      "$ <> $",
      { i(1) }
    )
  ),
  s({trig="MM", dscr="Autoexpands 'MM' to a display math environment", snippetType="autosnippet"},
    fmta(
      [[
        $$
        <> 
        $$
        <>
      ]],
      { i(1), i(0) }
    )
  ),
  s({trig="mv", dscr="Visual capture autoexpands 'mv' to an inline math environment", snippetType="autosnippet"},
    fmta(
      "$ <> $",
      { d(1, get_visual) }
    )
  ),
  s({trig="Mv", dscr="Visual capture autoexpands 'Mv' to a display math environment", snippetType="autosnippet"},
    fmta(
      [[
        $$
        <> 
        $$
        <>
      ]],
      { d(1, get_visual), i(0) }
    )
  ),
  s({trig = "tbv", dscr="Visual capture autoexpands 'tbv' into LaTeX's textbf{} command.", snippetType="autosnippet"},
    fmta(
      "\\textbf{<>}",
      { d(1, get_visual) }
    )
  ),
  s({trig = "tiv", dscr="Visual capture autoexpands 'tiv' into LaTeX's textit{} command.", snippetType="autosnippet"},
    fmta(
      "\\textit{<>}",
      { d(1, get_visual) }
    )
  ),
  s({trig = "tv", dscr="Visual capture autoexpands 'tv' into LaTeX's text{} command.", snippetType="autosnippet"},
    fmta(
      "\\text{<>}",
      { d(1, get_visual) }
    )
  ),
}
