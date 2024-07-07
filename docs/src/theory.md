# Measurement Free Error Correction

Traditional Quantum Error Correction requires measurment and feed back into
quantum circuit. Due to foundational limitation, they are costly timewise.
Decoherence could well happen. We present a time-ordered development of
measurement free error correction.


## First of Measurement Free Shcemes

The first paper that mentions measurement free quantum error correction was due
to Aharonov et. al [^4]. Not only did they improve Shor's previous result on
threshold of quantum error correction from being polylogarithmic to computation
size to constant, but also they shown in Section 4 in the paper that
no-measurement was necessary for quantum error correction.

In a following paper [^5], measurement free quantum error correction was used to
circumvent the problem of single molecule measurement being impossible on NMR
machine. Their contribution was to implement Hadamard gate without measurement
fault tolerantly thus closing the gap to full fault-tolerance left by previous
paper.

!!! note "Entanglement Understanding"
    In a different paper by Peres[^6], he linked the measurement of error
    syndrom being un-necessary with entanglement and teleportation. Needs
    further reading.

Much later, [^2] mentions measurement free scheme was. But he did not give any
reference to paper. In this paper he was considering the effect of slow and fast
measurement on error correction threshold.

The second paper that I have seen which mentions the measurement-free error
correction was in [^3]. It was the first to quantify threshold for
measurement-free error correction. It used Bacon-Shor code for example.

Was the result solid across other types of quantum error correction code?

Good Phd Thesis, look in chapter 3[^9].

# Experimental Realizations

[^1] is an experimental paper that realizes measurement-free quantum error
correction on trapped ions. Provided shit reference, inaccurate.

[^7] improved threshold for mfeqc, incremental, bad paper organization.


[^8] provides usage of mfqec in qudit spin. 

[^-1] discussed Fault tolerant classical computation. People that provides
garbade citation needs to be punished.


[^1]: [Schindler2011Experimental](@cite)
[^2]: [divincenzo2007effective](@cite)
[^3]: [paz2010fault](@cite)
[^4]: [aharonov1997fault](@cite)
[^5]: [Boykin2004Fault](@cite)
[^6]: [peres1998quantum](@cite)
[^7]: [crow2016improved](@cite)
[^8]: [Omanakuttan2024Fault](@cite)
[^9]: [Premakumar2019Decoherence](@cite)

[^-1]: [cruikshank2017high](@cite)


Protecting a Bosonic Qubit with Autonomous Quantum Error Correction

Measurement-free implementations of small-scale surface codes for quantum dot
qubits

what kind of error model are they considering
