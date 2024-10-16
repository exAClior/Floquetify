#import "@preview/springer-spaniel:0.1.0" as springer-spaniel
#import springer-spaniel.ctheorems: *
#import springer-spaniel.gentle-clues: *

#import "@preview/physica:0.9.3": *

#show: springer-spaniel.template(
  title: [Floquetifying Quantum Error Correction Code],
  authors: (
    (
      name: "Yusheng Zhao",
      institute: "HKUST(GZ)",
      address: "1 Duxue Rd, Nanshan District, Guangzhou, Guangdong, China",
      email: "yushengzhao2020@outlook.com"
    ),
    (
      name: "Clemens Schumann",
      institute: "",
      address: "",
      email: ""
    ),
  ),
  abstract: [
    The study of automated steps in Floquetifying Quantum Error Correction Codes.
  ],
)

#pagebreak()

= Vision

Design of quantum error correction codes concerns the property of "code distance, code distance, logical gates and tradeoffs between the number of logical qubits and distance." @Baspin2024.

How are these improved in Floquet code? Are they directly related to measurement weight? Indeed, threshold was improved @Gidney2021. Another threshold numerical simulation: "Benchmarking the Planar Honeycomb Code". "Enhanced Fault-tolerance in Photonic Quantum Computing: Floquet Code Outperforms Surface Code in Tailored Architecture" beating surface code in actual platform.

Stabilizer codes require large weight measurements which extra care in fault-tolerant protocols @Hastings2021.

= News

Consider a Floquet code defined as a code "where measurements are products of Paulis and the number of logical qubits is larger than the number that would be obtained when the code is viewed as a subsystem code" @Hastings2021.



In such a code, measurement weights are lower to $2$ and are native to hardwares like Majorana devices @Hastings2021. Furthermore, the measurement cycle are also shorter @Hastings2021. "The sparse connectivity and two-local measurements are desirable features for certain hardware, while the weight-six parity checks enable robust performance in the circuit model." @Gidney2021.

Furthremore, "As a dynamical code consists of several rounds of ISG, it can potentially circumvent the no-go theorem by Eastin and Knill which shows that transversal operators on any non-trivial quantum code belong to a finite group, and thus cannot be universal." @Hastings2021.


= Steps

= Conclusion


= Questions
How did "Floquet Codes without Parent Subsystem Codes" create Floquet codes?

What is the difference between "Relaxing Hardware Requirements for Surface Code Circuits using Time-dynamics" and Floquet code? What is the automated tools they have used?

Numerical simulation of performance and explain how measuremnet on MZM is carried out "Performance of Planar Floquet Codes with Majorana-Based Qubits"

How did people use ZX Calculus to analyze Floquet codes? "Unifying flavors of fault tolerance with the ZX calculus"

Generalization of Floquet code "Quantum computation from dynamic automorphism codes"

How did they generate Floquet code from color code "Constructions and performance of hyperbolic and semi-hyperbolic Floquet codes"?

What is rewinding and how did it help in generating new Floquet codes? "Engineering 3D Floquet Codes by Rewinding"

Is this equivalent to compiling Floquet code from QLDPC code? "Spacetime codes of Clifford circuits"

Why do you need to specifically design gate for Floquet code? "Cross-Cap Defects and Fault-Tolerant Logical Gates in the Surface Code and the Honeycomb Floquet Code" How does this guide us on compiling Floquet code?

Is the flow mentioned extensible to ZX Calculus? Can we use it as a guide for generating Floquet code in ZX Calculus? "Measurement Quantum Cellular Automata and Anomalies in Floquet Codes"

What is the siginiciance of boundary here? "Planar Floquet Codes"

How did cultivation paper cite Floquet code? "Magic state cultivation: growing T states as cheap as CNOT gates
"

How did they do construction of Floquet code from qudits? "Simple Construction of Qudit Floquet Codes on a Family of Lattices


"

What is the path integral way of generating Floquet code? "The x+y Floquet code: A simple example for topological quantum computation in the path integral approach"

#bibliography("refs.bib", style: "springer-mathphys")