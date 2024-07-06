servedocs:
	julia -e 'using Pkg; Pkg.activate("./docs"); Pkg.develop(path="."); Pkg.instantiate()'
	julia  -e 'using Pkg; Pkg.activate("./docs"); using MFQC,LiveServer; servedocs()'

format:
	julia -e 'using JuliaFormatter; format("src")'
	julia -e 'using JuliaFormatter; format("test")'
