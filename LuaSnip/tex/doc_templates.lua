return {
  s({trig="doc", dscr="Expands a generic latex document for writing math"},
    fmta(
      [[
        \documentclass[10pt]{article}
        \usepackage[utf8]{inputenc}
        \usepackage[T1]{fontenc}
        \usepackage{amsmath, amsfonts, amssymb, hyperref}
        \usepackage[letterpaper, top=0.5in, bottom=0.5in, left=0.5in, right=0.5in, heightrounded]{geometry}
        \renewcommand{\baselinestretch}{1.15}
        \setlength{\parindent}{0.5in}
        \setlength{\parskip}{0em}
        \usepackage[backend=biber, style=chem-acs, sorting=none]{biblatex}
        \bibliography{references.bib}
        
        \title{<>}
        \author{Logan Estridge}
        
        \begin{document}
        \maketitle
        
        <>
        
        %\newpage
        %\printbibliography
        \end{document}
      ]],
      { i(1, "Generic \\LaTeX{} Document"), i(0) }
    )
  ),
}
