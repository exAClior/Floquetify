# Open questions
- How to get graph
    - Necessitates choices affecting topology, like in the 4-legged tensor splitting case
    - Also choice of which three-legged tensors should be split up to get extra one legged tensor (origin/end of extra qubit)
- How to formulate existence of cycle as constraint(!)
    - Ansatz: Vars of the type [[#prev,#next,#black]]
- Would it also be possible to have some meaningful coloring choice generator which we could check cycles on? It only takes 40ms even for 1000 node graphs to check existence of cycle.