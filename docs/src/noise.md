# Survey on Coherent Error

Simulation with realistic nosie is necessary for designing better error
correction code. Noise can be broken down into two categories, incoherent noise
coherent noise. [Incoherent noise is stochastic while coherent noise is
unitary](https://quantumcomputing.stackexchange.com/a/34615/5116). Amplitude
damping, depolarizing, and phase damping are all examples of incoherent noise.
Imperfect control in qubit gate implementation is an example of coherent noise.
Quantum circuit with depolarizing noise can be efficiently simulated thanks to
[Gottesman-Knill
Theorem](https://en.wikipedia.org/wiki/Gottesman%E2%80%93Knill_theorem).
Therefore the nosie threshold is best understood in this regime. The study of
the other noise faces the challange of exponentially increasing simulation cost.
In this survey, we focus on coheret noise.

## Summary

Three approaches exist for the study of coherent noise.
- Direct simulation with coherent noise.
- Verify deviation of coherent noise from depolarizing noise is small on logical
  qubit level and then simulate with Clifford-based methods.
- Analytic study of coherent noise.

Many consider quantum memory and not quantum computing. Focus was on simple
code, i.e repetition code, or surface code. The former because it was small
therefore managable in simulation. The later because it was easy to realize
experimentally and have high noise threshold. See citation (9-11) in [^bravyi].

## Direct Simulation Approach

To approximate threshold for concatenated code, an effective quantum channel
acting on the logical qubit(s) was used to study the dynamics of diagonal noise,
each physical qubit under symmetric depolarizing channel, acting on all physical
qubits [^rahn]. This approach was later generalized to working for arbitrary
noise in [^fern]. We know it as the "Pauli Transfer Matrix"[^iverson]. "However,
this technique is not applicable to topological codes, which are more feasible
in practical experiments"[^Suzuki] Cannot approximate non-Clifford noise with
Clifford channel which guarantees efficient simulation. Furthermore, the
threshold is higher than acutal one due to ignoring encoding and decoding error.

PEPS encoded physical qubit state was used to do non-Clifford simulation.
However, the size of result is still limited to 153 data qubits and perfect
measurement was assumed. In case of concatenated code, this is far from
sufficient.[^Darmawan]

By"map(ping) the complete evolution after one quantum error correction cycle
onto the problem of computing correlation functions of a two-dimensional Ising
model with boundary fields", [^jouzdani] tries to find the noise threshold.
However, they limit the error and gate to nearest neighbor.

Convertting repetition code with coherent noise into matchgate circuit enables
efficient simulation. [^Suzuki] [^bravyi] used FLO for simulation following
suzuki. [^venn] is the follow up of Bravyi's work. [^venn2023] follow up to the
[^venn] paper, estimates error threshold with the help of mapping error
correction code to majorana fermion. Working as quantum memory with readout
error, appears similar to venn's work [^marton]. Analyzes a slightly different
kind of coherent error with FLO approach [^pataki]. "related the phases of
surface-code QEC for coherent and incoherent errors to entanglement phases."
[^Behrends] follow up with FLO.

"The central idea is to decompose (possibly non-Clifford) noise channels into
the sum of completely stabilizer preserving (CSP) channels. We simulate the
circuits by sampling CSP channels according to quasiprobability distributions,
which are obtained from the decompositions." [^Hakkaku]

## Approximate with Depolarizing Approach 

Pauli Twirling may be used to turn coherent noise into depolarizing ones.
Although the gate implementing Pauli Twirling may also have coherent error. This
makes the error channel after twirling not exactly a simple depolarizing
channel. A good estimation of such noise channel, original coherent nosie +
coherent noise in Pauli Twirling, into mixed depolarizing channel was proposed
by [^magesan]. They simulate with monte carlo sampling. This work has a follow
up, not sure what's the contribution [^puzzuoli]. A following work expands the
noise model, including random insertion of one-qubit gate and measurement, which
is simulatable under this framekwork [^gutierrez]. A follow up was done in
[^Tomita] for different code and different noise model.

Deviation of coherent error from Pauli Channel on surface code was studied
[^bravyi]. The noise threshold was accurate with the approximation but the
logical error was under-estimated.

Measurement decoheres coherent error and can model as Pauli noise.[^beale]
"after perfect syndrome measurement, the syndrome averaged logical off-diagonal
terms of the error channel decays exponentially with respect to the code
distance, and the decay is faster than that from the logical diagonal terms.
Then, they made a conclusion that the syndrome measurements of the stabilizer
code decohere independent coherent errors." [^zhao]

## Analytic Study

Pauli Transfer Matrix was derived for repeition code to analytically analyze the
amount of coherent error vs incoherent error on the level of logic qubit.
[^greenbaum] There was indeed coherent error and "degree of coherence depends on
the code distance and concatenation level.

Using Pauli Transfer Matrix, logical qubit channel was studied under many
different codes.[^huang]

"The coherence of the logical channel becomes strongly suppressed as the block
length of the quantum error-correcting code increases, assuming that the noise
is sufficiently weak and sufficiently weakly correlated." "To decode, one
measures the error syndrome, and then applies a recovery operation conditioned
on the syndrome. For a large code, many different syndromes are possible, and
only the errors which are projected onto the same syndrome value can interfere
constructively, while errors projected onto different syndrome values add
stochastically."[^iverson]

Answers the question "how dose the coherency of the noise channel affect the
logical diagonal terms in (Pauli Transfer Matrix) and the success probability of
error corrections."[^zhao] I.e, the toric code becomes an [approximate quantum
error correction](https://link.springer.com/article/10.1023/A:1019653202562)
which recovers the logical state with $\epsilon$ infidelity with the true logic
state[^zhao].


Experimental paper that characterizes error model with randomized compiling
[^hashim].


[^beale]: [beale2018coherence](@cite)
[^marton]: [marton2023coherent](@cite)
[^rahn]: [rahn2002exact](@cite)
[^fern]: [fern2006generalized](@cite)
[^Tomita]: [Tomita2014Low](@cite)
[^magesan]: [magesan2013modeling](@cite)
[^puzzuoli]: [puzzuoli2014tractable](@cite)
[^gutierrez]: [gutierrez2013approximation](@cite)
[^jouzdani]: [jouzdani2014fidelity](@cite)
[^Darmawan]: [Darmawan2017Tensor](@cite)
[^Suzuki]: [Suzuki2017Efficient](@cite)
[^greenbaum]:[greenbaum2017modeling](@cite)
[^bravyi]: [bravyi2018correcting](@cite)
[^iverson]: [iverson2020coherence](@cite)
[^venn]: [venn2020error](@cite)
[^Hakkaku]: [Hakkaku2021Sampling](@cite)
[^zhao]: [zhao2021analytic](@cite)
[^venn2023]: [venn2023coherent](@cite)
[^hashim]: [hashim2022benchmarking](@cite)
[^pataki]: [pataki2024coherent](@cite)
[^Behrends]: [Behrends2024Surface](@cite)
[^huang]: [huang2019performance](@cite)

<!-- pauli transfer matrix, which non-trivial code is doable. more conrete. -->
Toric code was analyzed using this formalism in [^iverson]
<!-- how large of code can we simulate: how large how accurate in general methods approach  -->
<!-- is coherent error similar to incoherent error upto a constant in statistical limit -->

<!-- focus on the majorana paper again -->
