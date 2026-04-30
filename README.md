# Emergent Spacetime Dynamics

A four-part research series formalizing **emergent phases of matter from information** through the lens of **category theory**.

## Series

This is a **modular framework**, not a unified one. Each law builds on the previous through compositional structure:

1. **Law I — Mathematical Formalisms** — categorical foundations for matter-information correspondence
2. **Law II — Phase-bound Matter** — thermodynamic and topological phase structure as functorial classes
3. **Law III — Frequency-modulated Processes** — temporal modulation and harmonic dynamics as natural transformations
4. **Law IV — Information-bearing Structures** — emergence of complex information geometry from prior laws
5. **Synthesis** — a unifying meta-paper showing how composition produces emergent properties

## Repository layout

```
papers/
  mathematical-formalisms/        # Law I LaTeX + PDF
  phase-bound-matter/             # Law II
  frequency-modulated-processes/  # Law III
  information-bearing-structures/ # Law IV
  synthesis/                      # Meta-paper
src/
  <topic>/                        # Haskell formal verification per topic
website/                          # Next.js site (deployed to Vercel)
public/
  papers/                         # Compiled PDFs
  covers/                         # Paper cover images
  og/                             # Open Graph 1200x630 images
social/                           # Generated social media posts
```

## Build

LaTeX compilation (per paper):
```bash
cd papers/<topic> && latexmk -pdf paper.tex
```

Haskell verification (per topic):
```bash
cd src/<topic> && cabal build && cabal test
```

Website (development):
```bash
cd website && pnpm install && pnpm dev
```

## License

Research papers: CC-BY 4.0
Code: MIT
