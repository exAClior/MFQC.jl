# Study of Coherent Error 

In order to understand how well an error correction code guards against noise,
simulation is necessary. The exponentially growing dimension of Hilbert space
makes such simulation untenable. Luckily for one type of noise, incoherent
noise, this is amenable. You may convert the noise into a depolarizing channel.
Under such conversion, all gates in the circuit are clifford, and there are well
known polynomial time simulation algorithm for such circuits. The problem is
with coherent noise.

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
    noise model which is simulatable under this framekwork [^gutierrez].

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

[^greenbaum] ???

Working as quantum memory with readout error  [^marton]

Measurement decoheres coherent error and can model as Pauli noise.[^beale]


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
