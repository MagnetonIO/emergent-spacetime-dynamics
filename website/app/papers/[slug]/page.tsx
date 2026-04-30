import type { Metadata } from "next";
import { notFound } from "next/navigation";
import Link from "next/link";
import fs from "fs";
import path from "path";
import { papers, getPaper, getPaperIndex } from "@/lib/papers";
import { renderMath } from "@/lib/render-math";
import { PaperContent } from "@/app/components/PaperContent";
import { TableOfContents, TocEntry } from "@/app/components/TableOfContents";

export function generateStaticParams() {
  return papers.map((p) => ({ slug: p.slug }));
}

export async function generateMetadata({
  params,
}: {
  params: Promise<{ slug: string }>;
}): Promise<Metadata> {
  const { slug } = await params;
  const paper = getPaper(slug);
  if (!paper) return {};

  const altText = `${paper.part}: ${paper.title} — Emergent Spacetime Dynamics`;
  return {
    title: paper.title,
    description: paper.abstract.slice(0, 200),
    openGraph: {
      type: "article",
      url: `/papers/${paper.slug}/`,
      siteName: "Emergent Spacetime Dynamics",
      locale: "en_US",
      title: paper.title,
      description: paper.abstract.slice(0, 200),
      images: [
        {
          url: `/og/${paper.slug}.png`,
          width: 1200,
          height: 630,
          alt: altText,
          type: "image/png",
        },
      ],
    },
    twitter: {
      card: "summary_large_image",
      site: "@MagnetonIO",
      creator: "@MagnetonIO",
      title: paper.title,
      description: paper.abstract.slice(0, 200),
      images: [{ url: `/og/${paper.slug}.png`, alt: altText }],
    },
  };
}

function extractHeadings(html: string): TocEntry[] {
  const headings: TocEntry[] = [];
  const regex = /<h([23])[^>]*\s+id="([^"]+)"[^>]*>([\s\S]*?)<\/h\1>/gi;
  let match;
  while ((match = regex.exec(html)) !== null) {
    const level = parseInt(match[1]);
    const id = match[2];
    const text = match[3]
      .replace(/<[^>]+>/g, "")
      .replace(/&amp;/g, "&")
      .replace(/&lt;/g, "<")
      .replace(/&gt;/g, ">")
      .replace(/&quot;/g, '"')
      .trim();
    if (text) {
      headings.push({ id, text, level });
    }
  }
  return headings;
}

export default async function PaperPage({
  params,
}: {
  params: Promise<{ slug: string }>;
}) {
  const { slug } = await params;
  const paper = getPaper(slug);
  if (!paper) notFound();

  const htmlPath = path.join(process.cwd(), "public", "html", `${slug}.html`);
  let paperHtml = "";
  if (fs.existsSync(htmlPath)) {
    const raw = fs.readFileSync(htmlPath, "utf-8");
    paperHtml = renderMath(raw);
  }

  const headings = extractHeadings(paperHtml);
  const paperIndex = getPaperIndex(slug);
  const prevPaper = paperIndex > 0 ? papers[paperIndex - 1] : null;
  const nextPaper = paperIndex < papers.length - 1 ? papers[paperIndex + 1] : null;

  return (
    <div style={{ maxWidth: "1280px", margin: "0 auto", padding: "0 1.5rem" }}>
      <div style={{ padding: "1.25rem 0 0" }}>
        <Link
          href="/"
          style={{
            fontSize: "0.875rem",
            color: "var(--text-dim)",
            textDecoration: "none",
            display: "inline-flex",
            alignItems: "center",
            gap: "0.35rem",
          }}
        >
          Back to All Papers
        </Link>
      </div>

      <header style={{ padding: "2rem 0 1.5rem", borderBottom: "1px solid var(--border)" }}>
        <div style={{ display: "flex", gap: "0.5rem", marginBottom: "0.75rem", flexWrap: "wrap" }}>
          <span className={`badge ${paper.part === "Synthesis" ? "badge-synthesis" : "badge-law"}`}>
            {paper.part}
          </span>
          <span style={{ fontSize: "0.8rem", color: "var(--text-dim)", alignSelf: "center" }}>
            {paper.pages} pages &middot; {paper.category}
          </span>
        </div>
        <h1
          style={{
            fontFamily: "var(--font-space), system-ui, sans-serif",
            fontSize: "clamp(1.4rem, 3vw, 2rem)",
            fontWeight: 700,
            color: "var(--text)",
            lineHeight: 1.25,
            letterSpacing: "-0.015em",
            marginBottom: "0.75rem",
          }}
        >
          {paper.title}
        </h1>
        <p style={{ fontSize: "0.95rem", color: "var(--text-muted)", lineHeight: 1.7 }}>
          {paper.abstract}
        </p>

        <div style={{ marginTop: "1.25rem", display: "flex", gap: "0.75rem", flexWrap: "wrap" }}>
          <a
            href={`/papers/${slug}.pdf`}
            style={{
              display: "inline-flex",
              alignItems: "center",
              gap: "0.5rem",
              padding: "0.5rem 1.125rem",
              borderRadius: "8px",
              backgroundColor: "var(--accent)",
              color: "#fff",
              fontWeight: 600,
              fontSize: "0.875rem",
              textDecoration: "none",
            }}
          >
            Download PDF
          </a>
        </div>
      </header>

      <div
        style={{
          display: "grid",
          gridTemplateColumns: "1fr",
          gap: "2rem",
          paddingTop: "2rem",
        }}
        className="paper-layout"
      >
        <aside
          style={{
            display: "none",
            width: "240px",
            flexShrink: 0,
            position: "sticky",
            top: "72px",
            maxHeight: "calc(100vh - 100px)",
            overflowY: "auto",
            alignSelf: "start",
          }}
          className="toc-sidebar"
        >
          <TableOfContents headings={headings} />
        </aside>

        <article
          style={{
            minWidth: 0,
            flex: 1,
            paddingBottom: "4rem",
          }}
        >
          {paperHtml ? (
            <PaperContent html={paperHtml} />
          ) : (
            <div>
              <p style={{ color: "var(--text-muted)", marginBottom: "1.5rem" }}>
                HTML rendering unavailable. Please use the PDF version below.
              </p>
              <iframe
                src={`/papers/${slug}.pdf`}
                style={{
                  width: "100%",
                  height: "80vh",
                  border: "1px solid var(--border)",
                  borderRadius: "8px",
                }}
                title={paper.title}
              />
            </div>
          )}
        </article>
      </div>

      <nav
        style={{
          borderTop: "1px solid var(--border)",
          padding: "2rem 0",
          display: "flex",
          justifyContent: "space-between",
          gap: "1rem",
          flexWrap: "wrap",
        }}
      >
        {prevPaper ? (
          <Link
            href={`/papers/${prevPaper.slug}/`}
            style={{
              fontSize: "0.875rem",
              color: "var(--text-muted)",
              textDecoration: "none",
              maxWidth: "45%",
            }}
          >
            <div style={{ color: "var(--text-dim)", fontSize: "0.75rem", marginBottom: "0.25rem" }}>
              Previous
            </div>
            <div style={{ color: "var(--text)" }}>{prevPaper.part}: {prevPaper.title.split(":")[0]}</div>
          </Link>
        ) : (
          <div />
        )}
        {nextPaper ? (
          <Link
            href={`/papers/${nextPaper.slug}/`}
            style={{
              fontSize: "0.875rem",
              color: "var(--text-muted)",
              textDecoration: "none",
              maxWidth: "45%",
              textAlign: "right",
            }}
          >
            <div style={{ color: "var(--text-dim)", fontSize: "0.75rem", marginBottom: "0.25rem" }}>
              Next
            </div>
            <div style={{ color: "var(--text)" }}>{nextPaper.part}: {nextPaper.title.split(":")[0]}</div>
          </Link>
        ) : (
          <div />
        )}
      </nav>

      <style>{`
        @media (min-width: 1024px) {
          .paper-layout {
            grid-template-columns: 240px 1fr !important;
          }
          .toc-sidebar {
            display: block !important;
          }
        }
      `}</style>
    </div>
  );
}
