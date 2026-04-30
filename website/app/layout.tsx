import type { Metadata } from "next";
import { Inter, Space_Grotesk } from "next/font/google";
import Link from "next/link";
import "./globals.css";

const inter = Inter({
  subsets: ["latin"],
  variable: "--font-inter",
  display: "swap",
});

const spaceGrotesk = Space_Grotesk({
  subsets: ["latin"],
  variable: "--font-space",
  display: "swap",
});

const siteUrl = process.env.VERCEL_PROJECT_PRODUCTION_URL
  ? `https://${process.env.VERCEL_PROJECT_PRODUCTION_URL}`
  : process.env.NEXT_PUBLIC_SITE_URL || "http://localhost:3000";

export const metadata: Metadata = {
  metadataBase: new URL(siteUrl),
  title: {
    default: "Emergent Spacetime Dynamics",
    template: "%s | Emergent Spacetime Dynamics",
  },
  description:
    "A Modular Framework: Information → Phase → Frequency → Geometry. A four-paper research series by MagnetonIO formalising emergent spacetime from categorical and informational structures.",
  openGraph: {
    type: "website",
    siteName: "Emergent Spacetime Dynamics",
    images: [{ url: "/og/default.png", width: 1200, height: 630 }],
  },
  twitter: {
    card: "summary_large_image",
    images: ["/og/default.png"],
  },
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en" className={`${inter.variable} ${spaceGrotesk.variable}`}>
      <body style={{ backgroundColor: "var(--bg)", color: "var(--text)" }}>
        {/* Header */}
        <header
          style={{
            borderBottom: "1px solid var(--border)",
            backgroundColor: "rgba(10, 10, 15, 0.95)",
            backdropFilter: "blur(12px)",
            position: "sticky",
            top: 0,
            zIndex: 50,
          }}
        >
          <div
            style={{
              maxWidth: "1280px",
              margin: "0 auto",
              padding: "0 1.5rem",
              display: "flex",
              alignItems: "center",
              justifyContent: "space-between",
              height: "60px",
            }}
          >
            <Link
              href="/"
              style={{
                fontFamily: "var(--font-space), system-ui, sans-serif",
                fontWeight: 700,
                fontSize: "1.05rem",
                color: "var(--text)",
                textDecoration: "none",
                letterSpacing: "-0.01em",
              }}
            >
              Emergent Spacetime Dynamics
            </Link>
            <nav style={{ display: "flex", gap: "1.5rem", alignItems: "center" }}>
              <Link
                href="/"
                style={{
                  fontSize: "0.875rem",
                  color: "var(--text-muted)",
                  textDecoration: "none",
                  transition: "color 0.15s",
                }}
              >
                Papers
              </Link>
              <a
                href="https://github.com/MagnetonIO/emergent-spacetime-dynamics"
                target="_blank"
                rel="noopener noreferrer"
                style={{
                  fontSize: "0.875rem",
                  color: "var(--text-muted)",
                  textDecoration: "none",
                  transition: "color 0.15s",
                  display: "flex",
                  alignItems: "center",
                  gap: "0.4rem",
                }}
              >
                GitHub
              </a>
            </nav>
          </div>
        </header>

        {/* Main content */}
        <main style={{ minHeight: "calc(100vh - 60px - 80px)" }}>{children}</main>

        {/* Footer */}
        <footer
          style={{
            borderTop: "1px solid var(--border)",
            padding: "1.5rem",
            marginTop: "4rem",
          }}
        >
          <div
            style={{
              maxWidth: "1280px",
              margin: "0 auto",
              display: "flex",
              flexWrap: "wrap",
              justifyContent: "space-between",
              alignItems: "center",
              gap: "1rem",
              fontSize: "0.8125rem",
              color: "var(--text-dim)",
            }}
          >
            <span>© 2026 MagnetonIO</span>
            <div style={{ display: "flex", gap: "1.5rem" }}>
              <a
                href="https://github.com/MagnetonIO/emergent-spacetime-dynamics"
                target="_blank"
                rel="noopener noreferrer"
                style={{ color: "var(--text-dim)", textDecoration: "none" }}
              >
                GitHub
              </a>
            </div>
          </div>
        </footer>
      </body>
    </html>
  );
}
