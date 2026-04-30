"use client";

import { useState, useEffect } from "react";

export interface TocEntry {
  id: string;
  text: string;
  level: number;
}

export function TableOfContents({ headings }: { headings: TocEntry[] }) {
  const [activeId, setActiveId] = useState("");
  const [isOpen, setIsOpen] = useState(false);

  useEffect(() => {
    const onScroll = () => {
      const scrollY = window.scrollY + 80; // offset for sticky header
      let current = "";
      for (const { id } of headings) {
        const el = document.getElementById(id);
        if (el && el.offsetTop <= scrollY) {
          current = id;
        }
      }
      setActiveId(current);
    };

    window.addEventListener("scroll", onScroll, { passive: true });
    onScroll(); // set initial active
    return () => window.removeEventListener("scroll", onScroll);
  }, [headings]);

  if (headings.length === 0) return null;

  return (
    <>
      {/* Mobile toggle button */}
      <button
        onClick={() => setIsOpen((v) => !v)}
        style={{
          display: "none",
          position: "fixed",
          bottom: "1.5rem",
          right: "1.5rem",
          zIndex: 40,
          padding: "0.75rem",
          borderRadius: "50%",
          backgroundColor: "var(--accent)",
          color: "#fff",
          border: "none",
          cursor: "pointer",
          boxShadow: "0 4px 16px rgba(124,111,255,0.4)",
          fontSize: "1.25rem",
          lineHeight: 1,
        }}
        className="toc-mobile-btn"
        aria-label="Toggle table of contents"
      >
        {isOpen ? "×" : "≡"}
      </button>

      {/* TOC panel */}
      <nav
        aria-label="Table of contents"
        style={{
          padding: "0.5rem 0",
        }}
      >
        <p
          style={{
            fontSize: "0.7rem",
            fontWeight: 700,
            letterSpacing: "0.1em",
            textTransform: "uppercase",
            color: "var(--text-dim)",
            padding: "0 0.75rem",
            marginBottom: "0.5rem",
          }}
        >
          Contents
        </p>
        {headings.map(({ id, text, level }) => (
          <a
            key={id}
            href={`#${id}`}
            className={`toc-item${level >= 3 ? " toc-sub" : ""}${activeId === id ? " toc-active" : ""}`}
            onClick={() => setIsOpen(false)}
          >
            {text}
          </a>
        ))}
      </nav>

      <style>{`
        @media (max-width: 1023px) {
          .toc-mobile-btn { display: flex !important; align-items: center; justify-content: center; }
        }
      `}</style>
    </>
  );
}
