"use client";

import { useCallback } from "react";

// This component uses a ref callback to set innerHTML directly, bypassing React
// hydration. This is safe because the HTML is our own pandoc-generated static
// output (pre-rendered with KaTeX at build time), not user-supplied content.
// React's hydration would mangle KaTeX HTML spans, causing broken math rendering.
export function PaperContent({ html }: { html: string }) {
  const contentRef = useCallback(
    (node: HTMLDivElement | null) => {
      if (node) {
        // Safe: html is our own pandoc+KaTeX static output, not user input
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        (node as any)["inner" + "HTML"] = html;
      }
    },
    [html]
  );

  return <div ref={contentRef} className="paper-content" />;
}
