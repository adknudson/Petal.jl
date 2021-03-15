using Petal
using Documenter

DocMeta.setdocmeta!(Petal, :DocTestSetup, :(using Petal); recursive=true)

makedocs(;
    modules=[Petal],
    authors="Alex Knudson <aknudson@nevada.unr.edu> and contributors",
    repo="https://github.com/adknudson/Petal.jl/blob/{commit}{path}#{line}",
    sitename="Petal.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://adknudson.github.io/Petal.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/adknudson/Petal.jl",
)
