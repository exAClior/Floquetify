#import "@preview/touying:0.4.2": *
#import "@preview/touying-simpl-hkustgz:0.1.0" as hkustgz-theme
#import "@preview/physica:0.9.3": *


#let s = hkustgz-theme.register()

// Global information configuration
#let s = (s.methods.info)(
  self: s,
  title: [Floquet Code],
  subtitle: [Definition and Low-weight Measurement],
  author: [Yusheng Zhao],
  date: datetime.today(),
  institution: [HKUST(GZ)],
)

// Extract methods
#let (init, slides) = utils.methods(s)
#show: init

// Extract slide functions
#let (slide, empty-slide, title-slide, outline-slide, new-section-slide, ending-slide) = utils.slides(s)
#show: slides.with()

#outline-slide() 

= Vision

== Floquet Code needs more attention 

- "Quantum error-correcting codes are a key ingredient for fault-tolerant quantum computation." @Dua2024

- Design of quantum error correction codes concerns the improvement of @Fu2024 

	#set enum(numbering: "a)")
	  + Code distance
		+ Ease of implementing logical gates
		+ Tradeoffs between the number of logical qubits and distance

- Surface code is not optimal by standard a) and c) @Bravyi2010 but has higher threshold in practice @Fowler2012 due to *low-weight measurement* and *lower connectivity* hardware requirements compare to many families of qLDPC codes  @Higgott2023 @McEwen2023

- Floquet code is a family of codes that pushes these strength of surface code even further @Gidney2021

= News

Floquet Code has good quality 
- Threshold of $0.2% - 0.3%$ without native weight-2 measurement compare to $0.5% - 0.7%$ for surface code  @Gidney2021
- Thershold of $1.5% - 2.0%$ with native weight-measurements @Gidney2021
- $6.4%$ on photonic platform @Hilaire2024
-	$k/n arrow.r 1/2$ on qudit codes @Tanggara2024
- $5.6x$ fewer physical qubits are needed to implement Floquet code at depolarizing noise of $0.1%$ @Higgott2023

= Steps

== Overview of Quantum Error Correction

- Quantum error correction consists of encoding, syndrome extraction, error detection and correction.

- Quantum Error Correction is determined by encoding method and error syndromes. 

- Floquet code differs from static code in syndrome extraction 

== Encoding

- Encoding process is a linear map of input logical state from a smaller Hiblert space to a subspace of larger Hilbert space.
- Errors map states from one subspace to another.

#figure(image("img/encoding_pic.png",width:70%))

=== Static Code: Repetition Code
- Encoding: $ket(0) arrow.r ket(000)$ and $ket(1) arrow.r ket(111)$
- Protects from $X$ error but not $Z$ error

#figure(image("img/repetition_code.png",width:70%))

#pagebreak()

=== Floquet Code:

== Syndrome Extraction

- Syndrome extraction is the process of determining which subspace the state is in.

#pagebreak()

=== Static Code: Shor-style Measurement
#figure(image("img/shor-style-meas.png",width:50%))

=== Floquet Code: Weight-2 Measurement
how is it equivalent to static code syndrome measurement?

== Error Correction

= Conclusion

What are needed to define a Floquet code?

Floquet code has comparable quality as surface code but requires lower connectivity on hardware

= Helper Slides

== Terms
- "The teraquop footprint is the number of physical qubits required to create a logical qubit reliable
enough to survive one trillion operations."

= References

#bibliography("refs.bib", style: "springer-mathphys")