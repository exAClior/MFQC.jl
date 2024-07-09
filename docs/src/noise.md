# Study of Coherent Error 

In order to understand how well an error correction code guards against noise,
simulation is necessary. The exponentially growing dimension of Hilbert space
makes such simulation untenable. Luckily for one type of noise, incoherent
noise, this is amenable. You may convert the noise into a depolarizing channel.
Under such conversion, all gates in the circuit are clifford, and there are well
known polynomial time simulation algorithm for such circuits. The problem is
with coherent noise.

Many paper considers quantum memory and not quantum computing.

The study was obviously code specific. Much of the study was target towards
either simple repetition code or surface code. The former because it was small
and simple. The later because it was easy to realize and have high noise
threshold. See citation (9-11) in [^bravyi].

From the difficulty there are two school of thoughts. The first is to come up
with better plans on how to simulate the general, coherent error. The second is
to first see how much these errors (amplitude damping, phase damping, coherent
error) differ from Pauli Channel for specific error correction code. If they did
not differ much, we could simulate with GK theorem and Pauli Channel.

Using an effective quantum channel acting on the logical qubits to study the
dynamics of diagonal noise, each physical qubit under symmetric depolarizing
channel, acting on all physical qubits [^rahn]. This approach was later
generalized to working for arbitrary noise in [^fern]. "However, this technique
is not applicable to topological codes, which are more feasible in practical
experiments"[^Suzuki]

[^Tomita] converted non-Clifford noise via Pauli Twirling then simulated with
monte carlo. He compared the result versus non Pauli Twirling (hence exponential
cost) and shows Pauli Twirling is too pesimetic. We need another method.

!!! note "Threshold Estimation" 
    [^magesan] appears to be the first one that uses monte carlo to approximate
    a quantum circuit which estimate noise threshold. A following work is
    [^puzzuoli]. Not sure what is the contribution. A following work expands the
    noise model which is simulatable under this framekwork [^gutierrez]. They point out that 

!!! note "Other noise models"
    [^jouzdani] appears to be the first paper that relates threhold with
    correlation function of a 2D Ising model.

Later, [^Darmawan] used tensor network to do non-Clifford simulation. This is a
very natrual adaptation. Since there is a Hamiltonian corresponding to each
error correction code and tensor network is a powerful method. However, the size
of result is still limited to 153 data qubits and perfect measurement was
assumed. In case of concatenated code, this is far from sufficient.

[^Suzuki] converted repetition code with coherent noise into matchgate circuit.
Since efficient simulation algorithm exist for matchgate circuit, they were able
to estimate the threshold.

[^greenbaum] they referred to several previous results and state that coherent
noise on the level of physical qubits does have an effect on logical qubit.


Measurement decoheres coherent error and can model as Pauli noise.[^beale]

[^bravyi] studied the deviation of coherent error from Pauli Channel on surface
coe. The noise threshold was accurate with the approximation but the logical
error was under-estimated.

[^iverson] "physical noise acting on the quantum memory is highly coherent, the
coherence of the logical channel becomes strongly suppressed as the block length
of the quantum error-correcting code increases, assuming that the noise is
sufficiently weak and sufficiently weakly correlated." They provide a reason why
measure fights against coherent noise "To decode, one measures the error
syndrome, and then applies a recovery operation conditioned on the syndrome. For
a large code, many different syndromes are possible, and only the errors which
are projected onto the same syndrome value can interfere constructively, while
errors projected onto different syndrome values add stochastically."

[^venn] is the follow up of Bravyi's work.

[^Hakkaku] "The central idea is to decompose (possibly non-Clifford) noise
channels into the sum of completely stabilizer preserving (CSP) channels [15].
We simulate the circuits by sampling CSP channels according to quasiprobability
distributions, which are obtained from the decompositions [15,16].""


[^zhao] one of the very few analytical study of coherent noise. Links with
surface code under coherent noise with approximate quantum error correction
code.

[^venn2023] follow up to the [^venn] paper, estimates error threshold with the
help of mapping error correction code to majorana fermion.

Working as quantum memory with readout error, appears similar to venn's work.
[^marton]

Experimental paper that characterizes error model with randomized compiling
[^hashim].

Analyzes a slightly different kind of coherent error with FLO approach.
[^pataki]

"related the phases of surface-code QEC for coherent and incoherent errors to
entanglement phases." [^Behrends] follow up with FLO.

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
[^huang]: [huang2019performance](@cite)
[^iverson]: [iverson2020coherence](@cite)
[^venn]: [venn2020error](@cite)
[^Hakkaku]: [Hakkaku2021Sampling](@cite)
[^zhao]: [zhao2021analytic](@cite)
[^venn2023]: [venn2023coherent](@cite)

[^hashim]: [hashim2022benchmarking](@cite)

[^pataki]: [pataki2024coherent](@cite)
[^Behrends]: [Behrends2024Sufrace](@cite)

First estimation of surface code threshold.
Dennis, E., Kitaev, A., Landahl, A. & Preskill, J. Topological quantum memory. J. Math. Phys. 43, 4452–4505 (2002).
Fowler, A. G. Proof of finite surface code threshold for matching. Phys. Rev. Lett. 109, 180502 (2012).


Wang, D. S., Fowler, A. G. & Hollenberg, L. C. L. Surface code quantum computing with error rates over. Phys. Rev. A 83, 020302 (2011).
