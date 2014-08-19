(TeX-add-style-hook "hwk1"
 (lambda ()
    (LaTeX-add-labels
     "sec-1"
     "sec-1-1"
     "sec-1-2"
     "sec-1-3"
     "sec-1-4"
     "sec-2"
     "sec-3"
     "sec-4"
     "sec-5")
    (TeX-run-style-hooks
     "minted"
     "hyperref"
     "linktocpage"
     "colorlinks"
     "amssymb"
     "wasysym"
     "marvosym"
     "textcomp"
     "amsmath"
     "ulem"
     "normalem"
     "rotating"
     "wrapfig"
     "float"
     "longtable"
     "graphicx"
     "fixltx2e"
     "fontenc"
     "T1"
     "inputenc"
     "utf8"
     "latex2e"
     "art11"
     "article"
     "11pt")))

