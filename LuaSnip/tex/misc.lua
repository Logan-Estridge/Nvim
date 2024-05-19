return {
  s({trig="\\hr", dscr="Expands '\\hr' to the hyperref packages 'href{}{}' command for url links", snippetType="autosnippet"},
    fmta(
      "\\href{<>}{<>}",
      { 
        i(1, "enter the url here"), 
        i(2, "enter the display name here") 
      }
    )
  ),
}
