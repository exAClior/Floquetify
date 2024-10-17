#import "@preview/touying:0.4.2": *
#import "@preview/touying-simpl-hkustgz:0.1.0" as hkustgz-theme

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

= Steps

= Conclusion

= Helper Slides

== Terms
- "The teraquop footprint is the number of physical qubits required to create a logical qubit reliable
enough to survive one trillion operations."

#bibliography("refs.bib", style: "springer-mathphys")