# FLO Based Method

## First of FLo
Fermionic Linear Optics circuit has efficient simulation algorithm. Quantum Circuit with coherent noise was simulated with this algorithm [^Suzuki2017]. 

### Pro
Did 1D repetition code, and surface code.

### Con
Original quantum circuit must be convertible to FLO (matchgate circuit), no Controlled-Phase gate [ref](https://arxiv.org/pdf/2307.12702) or no SWAP gate [ref](https://arxiv.org/pdf/0804.4050).

## Bravyi Extension
Generalizes decoder to general one. But assumes noiseless syndrom measurement and correction gate application.

Did 2401 qubit 49 distance surface code.

### Con
Noise model is translation invariant. But claims easily extensible. No cross-talk (correlated noise).

Code is limited to square lattice []


## Venn Extension
Generalizes to surface code defined on planar topology.

### Con
Constrained noise model, the noise is uniaxial. I.e Z/X axis rotation with uniform angle. 

## Other re-combination
Combination with measurement error [^marton2023]. 
Quastatic phase damping error [^pataki2024].

# Summary
Surface code with qubits on planar graph. Noise model captures single qubit rotation (no-correlated error). Can do upto as large as matchgate circuit simulation. E.g 2401 qubit 49 distance surface code.

[^Suzuki2017]: [Suzuki2017Efficient](@cite)

[^bravyi2018]: [bravyi2018correcting](@cite)

[^venn2020]: [venn2020error](@cite)

[^marton2023]: [marton2023coherent](@cite)

[^pataki2024]: [pataki2024coherent](@cite)