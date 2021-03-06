(TeX-add-style-hook
 "OnToTheJob"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem") ("caption" "font=scriptsize" "labelfont=bf") ("hyperref" "linktocpage=true") ("raleway" "default") ("standalone" "subpreambles=True")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "report"
    "rep10"
    "inputenc"
    "fontenc"
    "graphicx"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref"
    "babel"
    "subfig"
    "paralist"
    "float"
    "caption"
    "easytable"
    "raleway"
    "tabu"
    "standalone"
    "enumitem"
    "import"
    "tocloft"
    "tcolorbox")
   (LaTeX-add-labels
    "sec:orgfdc010e"
    "sec:org080db40"
    "sec:org9e87734"))
 :latex)

