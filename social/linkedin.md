---
platform: linkedin
topic: emergent-spacetime-dynamics
title: "Emergent Spacetime Dynamics — Full Series"
url: "https://emergent-spacetime-dynamics.vercel.app"
status: draft
created: 2026-04-30
---

<!-- ============================================================ -->
<!-- SERIES POST (~1300 chars)                                     -->
<!-- ============================================================ -->

What if spacetime is not a backdrop for physics, but an output of information?

That question drives our new five-paper series, Emergent Spacetime Dynamics — 119 pages of category-theoretic research formalising how complex matter organises itself from the ground up, one modular layer at a time.

The framework is explicitly modular, not a unified theory. Four self-standing laws compose hierarchically via typed Composition Hooks (H1–H8). Each law is a distinct categorical layer that produces emergent properties the previous layers cannot generate on their own:

Law I establishes the categorical grammar — a matter-information functor M: Phys to Info, symmetric monoidal infinity-categories, and eight formal composition interfaces for downstream laws.

Law II classifies equilibrium and topological phases of matter as functorial equivalence classes. Topological order maps to Drinfeld centers of fusion categories; SPT phases to group cohomology.

Law III lifts the static framework into periodic time — Floquet evolution as a monoidal functor from the circle category to quantum channels. Discrete time crystals and anomalous topological insulators appear as 2-categorical obstructions with no equilibrium analog.

Law IV is the capstone: composing all prior laws produces emergent spacetime geometry. Holographic codes, the Ryu-Takayanagi area law, and the ER=EPR correspondence emerge from the compositional structure — geometry is the result, not the starting point.

The Synthesis paper catalogues 12 emergent properties, each with a proof sketch that it cannot be derived from any strict subset of the four laws. The framework includes 54 verified Haskell property tests across the series.

Read the full series (open access):
https://emergent-spacetime-dynamics.vercel.app

GitHub: https://github.com/MagnetonIO/emergent-spacetime-dynamics

#CategoryTheory #QuantumInformation #EmergentSpacetime #TopologicalMatter #Holography #Floquet #TheoreticalPhysics #OpenScience


<!-- ============================================================ -->
<!-- PER-PAPER STANDALONE POSTS (~600 chars each)                 -->
<!-- ============================================================ -->

---
[PAPER 1 — SYNTHESIS]

What does it mean for complexity to be irreducible to its parts?

The Synthesis paper of our Emergent Spacetime Dynamics series offers a rigorous answer. It proves that 12 distinct emergent properties — including holographic geometry, topological entanglement entropy, and time-crystalline order — cannot be derived from any strict subset of the series' four modular laws.

This is not a philosophical claim. It is a formal one: each property is annotated with the lowest compositional layer at which it first appears, along with a proof sketch of its non-derivability from fewer laws.

The paper also provides a hook ledger mapping all 8 Composition Hooks to the laws that consume them, and closes with 11 open compositional problems — several of which are testable predictions.

119 total pages across the series. 54 verified Haskell tests.

https://emergent-spacetime-dynamics.vercel.app/papers/synthesis
https://github.com/MagnetonIO/emergent-spacetime-dynamics

#CategoryTheory #EmergentSpacetime #QuantumInformation #TheoreticalPhysics #OpenScience

---
[PAPER 2 — LAW I: MATHEMATICAL FORMALISMS]

Every subsequent law in our framework depends on a precise shared language. Law I — Mathematical Formalisms — establishes that language.

The paper argues that the correct setting for a matter-information correspondence is symmetric monoidal infinity-categories, equipped with dagger structure, sheaf semantics for local observables, operadic composition, and a type-theoretic internal language. The central object is a strong monoidal, dagger-preserving functor M: Phys to Info.

Crucially, Law I declares 8 typed Composition Hooks — formal interfaces that downstream laws plug into without modification. These hooks are the contract between the foundational layer and the rest of the series.

Three structural theorems are proved: M is fully determined on generators via the cobordism hypothesis; dagger-preservation implies a Born-rule formula on traceable processes; and a sheaf condition on observables lifts uniquely through M.

A Haskell encoding of the categorical core, with QuickCheck property tests, accompanies the paper.

https://emergent-spacetime-dynamics.vercel.app/papers/mathematical-formalisms
https://github.com/MagnetonIO/emergent-spacetime-dynamics

#CategoryTheory #QuantumInformation #TypeTheory #TheoreticalPhysics

---
[PAPER 3 — LAW II: PHASE-BOUND MATTER]

Can every phase of matter be classified by a functor?

Law II — Phase-bound Matter — argues yes, and makes it precise. Building strictly on the categorical grammar of Law I, it classifies both thermodynamic and topological phases as functorial equivalence classes.

Landau symmetry-breaking phases are formalised as connected components of the space of gapped Hamiltonians under gap-preserving adiabatic equivalence. Topological order in (2+1)D corresponds to unitary modular tensor categories arising as Drinfeld centers of fusion categories. SPT phases are classified by group cohomology H^(d+1)(G, U(1)).

Topological entanglement entropy — the constant gamma = log(D) — is constructed as an entanglement-entropy functor evaluated on a disk, and is proved invariant under finite-depth local circuits.

Worked computations cover the toric code, the SSH chain, and the Levin-Wen string-net model.

https://emergent-spacetime-dynamics.vercel.app/papers/phase-bound-matter
https://github.com/MagnetonIO/emergent-spacetime-dynamics

#TopologicalMatter #QuantumInformation #CategoryTheory #CondensedMatter

---
[PAPER 4 — LAW III: FREQUENCY-MODULATED PROCESSES]

Time crystals are a phase of matter that no equilibrium theory can classify. Law III is built precisely to handle them.

Lifting Law II by a single categorical dimension — periodic time — Law III models Floquet evolution as a strong monoidal functor from the discrete circle category B(Z_T) to the category of quantum channels. Floquet systems become 1-cells; micromotion data become 2-cells; phase transitions are connected components of natural transformation spaces.

Three emergent phenomena appear at this layer with no equilibrium analog: discrete time crystals (formalised as obstruction 2-cells detecting spontaneous breaking of discrete time-translation symmetry), anomalous Floquet topological insulators classified by a Z-valued winding number on the spatio-temporal Brillouin torus, and prethermal Floquet engineering via the Magnus expansion.

The Magnus expansion is given a colimit construction; its finite truncations factor through the Law II equilibrium-phase functor, formalising the prethermal correspondence.

https://emergent-spacetime-dynamics.vercel.app/papers/frequency-modulated-processes
https://github.com/MagnetonIO/emergent-spacetime-dynamics

#Floquet #TimeCrystals #QuantumInformation #CategoryTheory #CondensedMatter

---
[PAPER 5 — LAW IV: INFORMATION-BEARING STRUCTURES]

Spacetime geometry does not appear as an assumption in Law IV. It appears as a theorem — or rather, as an emergent output of composing the prior three laws.

Law IV formalises quantum error correction as a functor from logical to physical Hilbert spaces. Holographic codes (the HaPPY pentagon code in particular) realise AdS/CFT-style emergent geometry as an isometric embedding whose discrete Ryu-Takayanagi formula is exact. The Fisher information metric defines a Riemannian structure on parametrised quantum state manifolds that, in the holographic limit, reproduces features of the bulk AdS metric.

Van Raamsdonk's entanglement-as-glue argument is reformulated as a continuity property of an emergent metric functor. ER=EPR is stated as the agreement of the entanglement-induced metric and the gravitational metric on bipartite states.

The central modular thesis is precise: none of these geometric properties can be derived from any single prior law. The composition of all four layers is what generates the metric.

https://emergent-spacetime-dynamics.vercel.app/papers/information-bearing-structures
https://github.com/MagnetonIO/emergent-spacetime-dynamics

#Holography #EmergentSpacetime #QuantumGravity #QuantumInformation #CategoryTheory
