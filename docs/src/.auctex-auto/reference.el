;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "reference"
 (lambda ()
   (LaTeX-add-bibitems
    "Schindler2011Experimental"
    "divincenzo2007effective"
    "paz2010fault"
    "Boykin2004Fault"
    "aharonov1997fault"
    "peres1998quantum"
    "crow2016improved"
    "cruikshank2017high"
    "Omanakuttan2024Fault"
    "Premakumar2019Decoherence"
    "gertler2021protecting"
    "ercan2018measurement"))
 '(or :bibtex :latex))

