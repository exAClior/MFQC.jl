using MFQC
using Documenter
using DocumenterCitations

DocMeta.setdocmeta!(MFQC, :DocTestSetup, :(using MFQC); recursive=true)

bib = CitationBibliography(joinpath(@__DIR__,"src/reference.bib"),style=:authoryear)

makedocs(;
    modules=[MFQC],
    plugins = [bib],
    authors="Yusheng Zhao",
    sitename="MFQC.jl",
    format=Documenter.HTML(;
        canonical="https://exAClior.github.io/MFQC.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Measurement-Free Scheme" => "schemes.md",
        "Noise Model" => "noise.md",
        "Glossary" => "glossary.md",
        "Suggested Readings and References" => "reference.md"
    ],
)

deploydocs(;
    repo="github.com/exAClior/MFQC.jl",
    devbranch="master",
)
