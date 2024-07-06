using MFQC
using Documenter

DocMeta.setdocmeta!(MFQC, :DocTestSetup, :(using MFQC); recursive=true)

makedocs(;
    modules=[MFQC],
    authors="Yusheng Zhao",
    sitename="MFQC.jl",
    format=Documenter.HTML(;
        canonical="https://exAClior.github.io/MFQC.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/exAClior/MFQC.jl",
    devbranch="main",
)
