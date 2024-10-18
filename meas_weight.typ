#import "@preview/touying:0.4.2": *
#import "@preview/touying-simpl-hkustgz:0.1.0" as hkustgz-theme
#import "@preview/physica:0.9.3": *


#let s = hkustgz-theme.register()

// Global information configuration
#let s = (s.methods.info)(
  self: s,
  title: [Floquet Code],
  subtitle: [Establishing Connection between Floquet Code and Toric Code],
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

- Study of Fault-tolerant quantum computation: *Quantum Memory* and logical operations

- Design of quantum memory concerns the following properties of a *Quantum Error Correction Code* @Fu2024 

	#set enum(numbering: "a)")
	  + Code distance
		+ Ease of implementing logical gates
		+ Tradeoffs between the number of logical qubits and distance

- Surface code is not optimal by standard a) and c) @Bravyi2010 but has higher threshold in practice @Fowler2012 due to *low-weight measurement* (@weight-meas) and *lower connectivity* hardware requirements compare to many families of qLDPC codes  @Higgott2023 @McEwen2023

- Floquet code is a family of codes that pushes these strength of surface code even further @Gidney2021

= News

Floquet Code has good qualities
- *Threshold* of $0.2% - 0.3%$ without native *weight-2 measurement* @Gidney2021 #footnote[$0.5% - 0.7%$ for surface code]
- Thershold of $1.5% - 2.0%$ with native weight-measurements @Gidney2021  
- Photon loss threshold: $6.4%$ on photonic platform @Hilaire2024
-	Code Overhead: $limits(lim)_(n arrow.r infinity) k/n arrow.r 1/2$ on qudit codes @Tanggara2024
- $5.6 times$ fewer physical qubits are needed to implement Floquet code at depolarizing noise of $0.1%$ compare to surface code @Higgott2023

= Steps

== Stabilizer Code

=== Example: [[4,2,2]] Code

- Stabilizers: $X_1X_2X_3X_4$ and $Z_1Z_2Z_3Z_4$

#figure(image("img/encoding_pic.png",width:70%))

- Logical Operators: $tilde(X)_1 = X_1X_2$, $tilde(X)_2 = X_1X_3$, $tilde(Z)_1 = Z_1Z_3$ and $tilde(Z)_2 = Z_1Z_2$ 

== Subsystem Code

=== Example: [[4,1,2]] Code 


#pagebreak()

=== Floquet Code:


= Conclusion

- Honeycomb Code on a hexagonal lattice is equivalent to Toric Code on a larger hexagonal lattice

- Floquet code has comparable quality as surface code but requires lower connectivity on hardware

= Helper Slides

== Terms
- "The *teraquop footprint* is the number of physical qubits required to create a logical qubit reliable enough to survive one trillion operations." <teraquop>

#pagebreak()

=== Static Code: Shor-style Measurement 

#figure(image("img/shor-style-meas.png",width:50%))<weight-meas>

#pagebreak()

=== Repetition Code: Encoding, Syndrome Extraction, and Error Correction

#figure(image("img/repetition_code.png",width:70%))

= References

#bibliography("refs.bib", style: "springer-mathphys")