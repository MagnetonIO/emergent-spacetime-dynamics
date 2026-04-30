import type { Metadata } from "next";
import Link from "next/link";
import Image from "next/image";
import { papers } from "@/lib/papers";

export const metadata: Metadata = {
  title: "Emergent Spacetime Dynamics",
  description:
    "A Modular Framework: Information → Phase → Frequency → Geometry. Five papers by MagnetonIO Research formalising emergent spacetime dynamics via categorical composition.",
  openGraph: {
    type: "website",
    url: "/",
    siteName: "Emergent Spacetime Dynamics",
    locale: "en_US",
    title: "Emergent Spacetime Dynamics",
    description:
      "A Modular Framework: Information → Phase → Frequency → Geometry. Five papers by MagnetonIO Research.",
    images: [
      {
        url: "/og/default.png",
        width: 1200,
        height: 630,
        alt: "Emergent Spacetime Dynamics — A Modular Framework: Information → Phase → Frequency → Geometry",
        type: "image/png",
      },
    ],
  },
  twitter: {
    card: "summary_large_image",
    site: "@MagnetonIO",
    creator: "@MagnetonIO",
    title: "Emergent Spacetime Dynamics",
    description:
      "A Modular Framework: Information → Phase → Frequency → Geometry.",
    images: [
      {
        url: "/og/default.png",
        alt: "Emergent Spacetime Dynamics — A Modular Framework",
      },
    ],
  },
};

export default function HomePage() {
  const [synthesis, ...laws] = papers;

  return (
    <div>
      {/* Hero */}
      <section
        className="hero-bg"
        style={{
          padding: "5rem 1.5rem 4rem",
          textAlign: "center",
          position: "relative",
          overflow: "hidden",
        }}
      >
        {/* Decorative grid lines */}
        <div
          aria-hidden
          style={{
            position: "absolute",
            inset: 0,
            backgroundImage:
              "linear-gradient(rgba(124,111,255,0.04) 1px, transparent 1px), linear-gradient(90deg, rgba(124,111,255,0.04) 1px, transparent 1px)",
            backgroundSize: "60px 60px",
            pointerEvents: "none",
          }}
        />

        <div style={{ position: "relative", maxWidth: "800px", margin: "0 auto" }}>
          <div style={{ marginBottom: "1.5rem" }}>
            <span
              className="badge badge-synthesis"
              style={{ fontSize: "0.8rem", letterSpacing: "0.06em" }}
            >
              MagnetonIO Research
            </span>
          </div>

          <h1
            style={{
              fontFamily: "var(--font-space), system-ui, sans-serif",
              fontWeight: 800,
              fontSize: "clamp(2rem, 5vw, 3.5rem)",
              lineHeight: 1.15,
              letterSpacing: "-0.02em",
              color: "var(--text)",
              marginBottom: "1.25rem",
            }}
          >
            Emergent Spacetime Dynamics
          </h1>

          <p
            style={{
              fontSize: "clamp(1rem, 2.5vw, 1.25rem)",
              color: "var(--accent-secondary)",
              fontWeight: 500,
              marginBottom: "1.5rem",
              letterSpacing: "0.01em",
            }}
          >
            Information → Phase → Frequency → Geometry
          </p>

          <p
            style={{
              fontSize: "1rem",
              color: "var(--text-muted)",
              lineHeight: 1.75,
              maxWidth: "640px",
              margin: "0 auto 1rem",
            }}
          >
            This modular research series formalises a four-layer hierarchy of
            emergent phenomena in quantum many-body systems through category
            theory. Each law is a self-standing categorical layer, and emergent
            properties at every level arise from the composition of prior laws
            via explicit functorial liftings — not from any single law in
            isolation.
          </p>
          <p
            style={{
              fontSize: "1rem",
              color: "var(--text-muted)",
              lineHeight: 1.75,
              maxWidth: "640px",
              margin: "0 auto 1rem",
            }}
          >
            Law I establishes categorical primitives and the matter–information
            functor. Law II classifies phases of matter as functorial equivalence
            classes. Law III lifts the framework to periodic (Floquet) systems.
            Law IV shows that composition of the three prior laws is sufficient to
            generate emergent geometry, holographic codes, and spacetime itself.
          </p>
          <p
            style={{
              fontSize: "1rem",
              color: "var(--text-muted)",
              lineHeight: 1.75,
              maxWidth: "640px",
              margin: "0 auto 2rem",
            }}
          >
            The synthesis paper traces the compositional functor chain
            Phys → Info₁ → Info₂ → Info₃ → Info₄ and identifies six
            cross-cutting themes — entanglement entropy, symmetry protection,
            fixed-point reasoning, functorial pullback, dagger preservation, and
            obstruction 2-cells — that thread all four papers.
          </p>

          <div
            style={{
              display: "flex",
              gap: "0.75rem",
              justifyContent: "center",
              flexWrap: "wrap",
            }}
          >
            <Link
              href="/papers/synthesis/"
              style={{
                display: "inline-flex",
                alignItems: "center",
                gap: "0.5rem",
                padding: "0.625rem 1.25rem",
                borderRadius: "8px",
                backgroundColor: "var(--accent)",
                color: "#fff",
                fontWeight: 600,
                fontSize: "0.9375rem",
                textDecoration: "none",
                transition: "background-color 0.15s",
              }}
            >
              Read Synthesis Paper
            </Link>
            <a
              href="/papers/synthesis.pdf"
              style={{
                display: "inline-flex",
                alignItems: "center",
                gap: "0.5rem",
                padding: "0.625rem 1.25rem",
                borderRadius: "8px",
                backgroundColor: "transparent",
                border: "1px solid var(--border-hover)",
                color: "var(--text-muted)",
                fontWeight: 500,
                fontSize: "0.9375rem",
                textDecoration: "none",
              }}
            >
              PDF
            </a>
          </div>
        </div>
      </section>

      {/* Papers grid */}
      <section
        style={{
          maxWidth: "1280px",
          margin: "0 auto",
          padding: "3rem 1.5rem 4rem",
        }}
      >
        <h2
          style={{
            fontFamily: "var(--font-space), system-ui, sans-serif",
            fontSize: "1.15rem",
            fontWeight: 600,
            color: "var(--text-dim)",
            letterSpacing: "0.08em",
            textTransform: "uppercase",
            marginBottom: "2rem",
          }}
        >
          Research Papers
        </h2>

        {/* Synthesis featured card */}
        <div className="paper-card paper-card-featured" style={{ marginBottom: "2rem" }}>
          <div
            style={{
              display: "grid",
              gridTemplateColumns: "minmax(0,1fr)",
              gap: 0,
            }}
          >
            <div
              style={{
                display: "grid",
                gridTemplateColumns: "200px 1fr",
                gap: 0,
              }}
            >
              {/* Cover image */}
              <div
                style={{
                  position: "relative",
                  aspectRatio: "3/4",
                  backgroundColor: "var(--bg)",
                  flexShrink: 0,
                  overflow: "hidden",
                  borderRadius: "12px 0 0 12px",
                }}
              >
                <Image
                  src="/covers/synthesis.png"
                  alt="Synthesis paper cover"
                  fill
                  style={{ objectFit: "cover" }}
                  sizes="200px"
                />
              </div>

              {/* Content */}
              <div style={{ padding: "1.75rem 2rem" }}>
                <div
                  style={{
                    display: "flex",
                    alignItems: "center",
                    gap: "0.5rem",
                    marginBottom: "0.75rem",
                    flexWrap: "wrap",
                  }}
                >
                  <span className="badge badge-synthesis">Synthesis</span>
                  <span
                    style={{ fontSize: "0.8rem", color: "var(--text-dim)" }}
                  >
                    26 pages
                  </span>
                </div>
                <h3
                  style={{
                    fontFamily: "var(--font-space), system-ui, sans-serif",
                    fontSize: "1.25rem",
                    fontWeight: 700,
                    color: "var(--text)",
                    lineHeight: 1.3,
                    marginBottom: "0.75rem",
                  }}
                >
                  {synthesis.title}
                </h3>
                <p
                  style={{
                    fontSize: "0.9rem",
                    color: "var(--text-muted)",
                    lineHeight: 1.65,
                    marginBottom: "1.25rem",
                    display: "-webkit-box",
                    WebkitLineClamp: 3,
                    WebkitBoxOrient: "vertical",
                    overflow: "hidden",
                  }}
                >
                  {synthesis.abstract.slice(0, 300)}...
                </p>
                <div style={{ display: "flex", gap: "0.75rem", flexWrap: "wrap" }}>
                  <Link
                    href={`/papers/${synthesis.slug}/`}
                    style={{
                      display: "inline-flex",
                      alignItems: "center",
                      padding: "0.5rem 1rem",
                      borderRadius: "6px",
                      backgroundColor: "var(--accent)",
                      color: "#fff",
                      fontWeight: 600,
                      fontSize: "0.875rem",
                      textDecoration: "none",
                    }}
                  >
                    Read
                  </Link>
                  <a
                    href={`/papers/${synthesis.slug}.pdf`}
                    style={{
                      display: "inline-flex",
                      alignItems: "center",
                      padding: "0.5rem 1rem",
                      borderRadius: "6px",
                      border: "1px solid var(--border-hover)",
                      color: "var(--text-muted)",
                      fontWeight: 500,
                      fontSize: "0.875rem",
                      textDecoration: "none",
                    }}
                  >
                    PDF
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>

        {/* Laws grid */}
        <div
          style={{
            display: "grid",
            gridTemplateColumns: "repeat(auto-fill, minmax(280px, 1fr))",
            gap: "1.25rem",
          }}
        >
          {laws.map((paper) => (
            <div key={paper.slug} className="paper-card">
              {/* Cover image */}
              <div
                style={{
                  position: "relative",
                  aspectRatio: "16/9",
                  backgroundColor: "var(--bg)",
                  overflow: "hidden",
                }}
              >
                <Image
                  src={`/covers/${paper.slug}.png`}
                  alt={`${paper.title} cover`}
                  fill
                  style={{ objectFit: "cover" }}
                  sizes="(max-width: 768px) 100vw, 33vw"
                />
              </div>

              {/* Card content */}
              <div style={{ padding: "1.25rem" }}>
                <div
                  style={{
                    display: "flex",
                    alignItems: "center",
                    gap: "0.5rem",
                    marginBottom: "0.6rem",
                    flexWrap: "wrap",
                  }}
                >
                  <span className="badge badge-law">{paper.part}</span>
                  <span
                    style={{ fontSize: "0.75rem", color: "var(--text-dim)" }}
                  >
                    {paper.pages} pages
                  </span>
                </div>
                <h3
                  style={{
                    fontFamily: "var(--font-space), system-ui, sans-serif",
                    fontSize: "1rem",
                    fontWeight: 600,
                    color: "var(--text)",
                    lineHeight: 1.35,
                    marginBottom: "0.6rem",
                  }}
                >
                  {paper.title}
                </h3>
                <p
                  style={{
                    fontSize: "0.8375rem",
                    color: "var(--text-muted)",
                    lineHeight: 1.6,
                    marginBottom: "1rem",
                    display: "-webkit-box",
                    WebkitLineClamp: 3,
                    WebkitBoxOrient: "vertical",
                    overflow: "hidden",
                  }}
                >
                  {paper.abstract.slice(0, 150)}...
                </p>
                <div style={{ display: "flex", gap: "0.5rem" }}>
                  <Link
                    href={`/papers/${paper.slug}/`}
                    style={{
                      display: "inline-flex",
                      alignItems: "center",
                      padding: "0.4rem 0.875rem",
                      borderRadius: "6px",
                      backgroundColor: "var(--accent)",
                      color: "#fff",
                      fontWeight: 600,
                      fontSize: "0.8125rem",
                      textDecoration: "none",
                    }}
                  >
                    Read
                  </Link>
                  <a
                    href={`/papers/${paper.slug}.pdf`}
                    style={{
                      display: "inline-flex",
                      alignItems: "center",
                      padding: "0.4rem 0.875rem",
                      borderRadius: "6px",
                      border: "1px solid var(--border-hover)",
                      color: "var(--text-muted)",
                      fontWeight: 500,
                      fontSize: "0.8125rem",
                      textDecoration: "none",
                    }}
                  >
                    PDF
                  </a>
                </div>
              </div>
            </div>
          ))}
        </div>
      </section>
    </div>
  );
}
