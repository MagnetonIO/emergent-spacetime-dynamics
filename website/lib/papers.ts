export interface Paper {
  slug: string;
  title: string;
  subtitle: string;
  part: string;
  pages: number;
  abstract: string;
  category: string;
}

export const papers: Paper[] = [
  {
    slug: "synthesis",
    title: "Modular Composition of Information, Phase, Modulation, and Geometry",
    subtitle: "Synthesis — Emergent Spacetime Dynamics",
    part: "Synthesis",
    pages: 26,
    abstract:
      "We present the synthesis paper of the four-paper modular research series Emergent Spacetime Dynamics. Rather than proposing a unified theory, we articulate a precise modular thesis: each of Laws I–IV (Mathematical Formalisms; Phase-bound Matter; Frequency-modulated Processes; Information-bearing Structures) is a self-standing categorical layer, and the emergent properties at every level arise from the composition of prior laws via explicit functorial liftings, not from any single law in isolation. The contributions of this synthesis are sixfold: a hook ledger tabulating each Composition Hook H1–H8; the compositional functor chain Phys → Info₁ → Info₂ → Info₃ → Info₄ as a 1-cell in a 2-category of physical theories; six cross-cutting themes threading all four papers; a numbered catalogue of emergent phenomena; an identification of open problems; and an assessment of the framework's empirical content.",
    category: "math-ph",
  },
  {
    slug: "mathematical-formalisms",
    title: "Mathematical Formalisms: Categorical Foundations for Matter–Information Correspondence",
    subtitle: "Law I — Emergent Spacetime Dynamics",
    part: "Law I",
    pages: 24,
    abstract:
      "We formulate the categorical grammar underlying a modular four-law programme for emergent spacetime dynamics. Law I, presented here, is the foundational layer: it fixes the language in which Laws II (phase-bound matter), III (frequency-modulated processes), and IV (information-bearing structures) are written. We argue that the appropriate mathematical setting for a matter–information correspondence is that of symmetric monoidal (∞,n)-categories together with their sheaf-theoretic, operadic, and type-theoretic refinements. We isolate eight composition hooks—formal interfaces marked H1–H8—that downstream laws plug into without modification. We define the matter–information functor M : Phys → Info as a strong monoidal, dagger-preserving functor between symmetric monoidal dagger categories, and we prove three structural results.",
    category: "math-ph",
  },
  {
    slug: "phase-bound-matter",
    title: "Phase-bound Matter: Functorial Classification of Thermodynamic and Topological Phases",
    subtitle: "Law II — Emergent Spacetime Dynamics",
    part: "Law II",
    pages: 23,
    abstract:
      "We present the second installment of the modular research series Emergent Spacetime Dynamics. Building strictly modularly on the categorical primitives established in Law I—the matter–information functor M:Phys→Info, the symmetric monoidal structure of physical composition, and the sheaf semantics of local observables—we classify phases of matter as functorial equivalence classes. We first formalise the Landau paradigm as the connected-component invariant π₀([BG, Ham₀]ᵉq), where Ham₀ is the groupoid of gapped local Hamiltonians under gap-preserving adiabatic equivalence. We then generalise beyond Landau by showing that topological order in (2+1)D corresponds to unitary modular tensor categories (MTCs), arising as Drinfeld centers Z(C) of unitary fusion categories.",
    category: "cond-mat.str-el",
  },
  {
    slug: "frequency-modulated-processes",
    title: "Frequency-modulated Processes: Floquet Phases as Natural Transformations",
    subtitle: "Law III — Emergent Spacetime Dynamics",
    part: "Law III",
    pages: 24,
    abstract:
      "We develop the third law of a four-paper modular framework for emergent phases of matter from quantum information through category theory. Building directly on Law I (categorical primitives) and Law II (functorial classification of equilibrium phases), Law III lifts the static phase-classification framework to a temporal setting in which a periodic Hamiltonian H(t+T)=H(t) defines a monoidal functor from the discrete circle category BZT to the dagger-monoidal category of quantum channels. We show that Floquet evolution is naturally a 2-categorical structure: a Floquet system is a 1-cell, micromotion data are 2-cells, and Floquet phase transitions are connected components of the space of natural transformations between Floquet functors.",
    category: "cond-mat.str-el",
  },
  {
    slug: "information-bearing-structures",
    title: "Information-bearing Structures: Emergent Geometry from Compositional Information",
    subtitle: "Law IV — Emergent Spacetime Dynamics",
    part: "Law IV",
    pages: 22,
    abstract:
      "We present Law IV of the modular research series Emergent Spacetime Dynamics, the capstone law in a four-paper hierarchy that derives geometry and spacetime from layered categorical and informational structures. Building on Law I (categorical primitives), Law II (phase-bound matter as functorial classes), and Law III (frequency-modulated processes as Floquet functors), we argue that the compositional structure produced by the prior three laws is sufficient to generate emergent information geometry, holographic codes, and ultimately spacetime itself. We formalise quantum error correction as a categorical functor and show that holographic codes realise AdS/CFT-style emergent geometry as an isometric embedding whose discrete Ryu–Takayanagi formula is exact.",
    category: "hep-th",
  },
];

export function getPaper(slug: string): Paper | undefined {
  return papers.find((p) => p.slug === slug);
}

export function getPaperIndex(slug: string): number {
  return papers.findIndex((p) => p.slug === slug);
}
