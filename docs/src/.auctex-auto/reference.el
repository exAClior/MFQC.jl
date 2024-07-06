;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "reference"
 (lambda ()
   (LaTeX-add-bibitems
    ""
    "divincenzo2007effective"
    "paz2010fault"))
 '(or :bibtex :latex))

