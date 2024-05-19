return {
  s({trig="\\use", dscr="Autoexpands '\\use' to '\\usepackage{<>}'", snippetType="autosnippet"},
    fmta(
      "\\usepackage{<>}",
      { i(1) }
    )
  ),
  s({trig="\\sec", dscr="Autoexpands '\\sec' to '\\section{<>}'", snippetType="autosnippet"},
    fmta(
      "\\section{<>}",
      { i(1) }
    )
  ),
  s({trig="\\subsec", dscr="Autoexpands '\\subsec' to '\\subsection{<>}'", snippetType="autosnippet"},
    fmta(
      "\\subsection{<>}",
      { i(1) }
    )
  ),
  s({trig="\\subsubsec", dscr="Autoexpands '\\subsubsec' to '\\subsubsection{<>}'", snippetType="autosnippet"},
    fmta(
      "\\subsubsection{<>}",
      { i(1) }
    )
  ),
  s({trig="\\text", dscr="Autoexpands '\\text' to '\\text{<>}'", snippetType="autosnippet"},
    fmta(
      "\\text{<>}",
      { i(1) }
    )
  ),
  s({trig="\\printbib", dscr="Autoexpands '\\printbib' to '\\printbibliography'", snippetType="autosnippet"},
    {t("\\printbibliography")}
  ),
}
