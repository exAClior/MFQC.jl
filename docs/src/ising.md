# Statistical Model
Approximates the error threshold via mapping the random measurement result to spin state in a classical statistical model. 

## First work  [^Dennis2001]
Surface code (toric code is similar) with perfect syndrome measurement is mapped to 2D Ising Model. With imperfect syndrome measurement mapped to 3D Ising model. Extra dimension corresponds to "time", repeated measurment of syndrom. Error are introduce quenched randomness. Error corresponds to temperature of Ising Model.

Limitations: only considers un-correlated in space and time bit flip,phase flip error and measurement error but claims extensible.

## Other Model [^Wang2002]
Relate 3D Ising Model to random-plaquette Z2 gauge model

## Other code [^Katzgraber2009]
3D Ising model with triangular lattice. Incremental

## Correlated Noise [^Chubb2018]
Able to analyze correlated error.

## Coherent Noise [^venn2023]
Maps to 2D majorana network instead of Ising Model.

No one uses probability as a thershold for coherent error. They use pauli twirling to convert to the depolarizing noise channel with a certain error probability, this is $\approx 0.18$ versus $0.11$ for incoherent noise. [^venn2023]

[^venn2023]: [venn2023coherent](@cite)

[^Dennis2001]: [Dennis2001TopologicalQM](@cite)

[^Wang2002]: [Wang2002ConfinementHT](@cite)

[^Katzgraber2009]: [Katzgraber2009ErrorTF](@cite)

[^Chubb2018]: [Chubb2018StatisticalMM](@cite)

[^eckstein2024]: [eckstein2024robust](@cite)