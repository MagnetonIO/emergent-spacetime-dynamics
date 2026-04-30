import katex from "katex";

// Base macros common to all papers in the series
const BASE_MACROS: Record<string, string> = {
  "\\C": "\\mathcal{C}",
  "\\D": "\\mathcal{D}",
  "\\E": "\\mathcal{E}",
  "\\Phys": "\\mathbf{Phys}",
  "\\Info": "\\mathbf{Info}",
  "\\Hilb": "\\mathbf{Hilb}",
  "\\FHilb": "\\mathbf{FHilb}",
  "\\Vect": "\\mathbf{Vect}",
  "\\Set": "\\mathbf{Set}",
  "\\Cob": "\\mathbf{Cob}",
  "\\Bord": "\\mathbf{Bord}",
  "\\Cat": "\\mathbf{Cat}",
  "\\Ham": "\\mathbf{Ham}",
  "\\Phase": "\\mathbf{Phase}",
  "\\Floq": "\\mathbf{Floq}",
  "\\InfoGeom": "\\mathbf{InfoGeom}",
  "\\Theory": "\\mathbf{Theory}",
  "\\Rep": "\\mathbf{Rep}",
  "\\QChan": "\\mathbf{QChan}",
  "\\op": "\\mathrm{op}",
  "\\id": "\\mathrm{id}",
  "\\Hom": "\\mathrm{Hom}",
  "\\End": "\\mathrm{End}",
  "\\Tr": "\\mathrm{Tr}",
  "\\Ob": "\\mathrm{Ob}",
  "\\AdS": "\\mathrm{AdS}",
  "\\CFT": "\\mathrm{CFT}",
  "\\RT": "\\mathrm{RT}",
  "\\enc": "\\mathrm{enc}",
  "\\dec": "\\mathrm{dec}",
  "\\Lan": "\\mathrm{Lan}",
  "\\Ran": "\\mathrm{Ran}",
  "\\colim": "\\mathrm{colim}",
  "\\lim": "\\mathrm{lim}",
  "\\holim": "\\mathrm{holim}",
  "\\hocolim": "\\mathrm{hocolim}",
  "\\Nat": "\\mathrm{Nat}",
  "\\Fun": "\\mathrm{Fun}",
  "\\BG": "\\mathbf{B}G",
  "\\bra": "\\langle #1 |",
  "\\ket": "| #1 \\rangle",
  "\\braket": "\\langle #1 | #2 \\rangle",
  "\\norm": "\\left\\| #1 \\right\\|",
  "\\abs": "\\left| #1 \\right|",
  "\\slashed": "\\not{#1}",
};

function renderMathToken(tex: string, displayMode: boolean): string {
  try {
    return katex.renderToString(tex, {
      displayMode,
      throwOnError: false,
      trust: true,
      macros: { ...BASE_MACROS },
      strict: false,
    });
  } catch {
    // Fallback: return escaped raw LaTeX
    const escaped = tex.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;");
    return `<span class="math-fallback">${displayMode ? "$$" : "$"}${escaped}${displayMode ? "$$" : "$"}</span>`;
  }
}

export function renderMath(html: string): string {
  let result = html;

  // Replace display math: \[...\] (non-greedy)
  result = result.replace(/\\\[([\s\S]*?)\\\]/g, (_, tex) => {
    return renderMathToken(tex.trim(), true);
  });

  // Replace display math: $$...$$ (non-greedy, not inside already replaced spans)
  result = result.replace(/\$\$([\s\S]*?)\$\$/g, (_, tex) => {
    return renderMathToken(tex.trim(), true);
  });

  // Replace inline math: \(...\) (non-greedy)
  result = result.replace(/\\\(([\s\S]*?)\\\)/g, (_, tex) => {
    return renderMathToken(tex.trim(), false);
  });

  // Replace inline math: $...$ (careful not to be too greedy; skip already-replaced content)
  // Only match single-line $ $ to avoid false positives
  result = result.replace(/\$([^$\n]{1,500}?)\$/g, (match, tex) => {
    // Skip if it looks like it's inside an HTML attribute or already rendered
    if (tex.includes("katex") || tex.includes("<")) return match;
    return renderMathToken(tex.trim(), false);
  });

  return result;
}
