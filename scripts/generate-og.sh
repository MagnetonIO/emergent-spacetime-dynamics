#!/usr/bin/env bash
# Generate branded 1200x630 OG cards.
# Output goes to public/og/ and is also copied to website/public/og/ for the next deploy.

set -euo pipefail

OUT="public/og"
mkdir -p "$OUT"

W=1200
H=630
BG_TOP="#0a0a0f"
BG_BOT="#1a1530"
ACCENT_VIOLET="#7c6fff"
ACCENT_CYAN="#22d3ee"
TEXT_WHITE="#f5f5f7"
TEXT_DIM="#9aa0aa"
SERIES="Emergent Spacetime Dynamics"

FONT_BOLD="/System/Library/Fonts/Helvetica.ttc"
FONT_REG="/System/Library/Fonts/Helvetica.ttc"

# Build a card.
# args: outfile, badge_text, badge_color, title_line1, title_line2, subtitle
make_card() {
  local out="$1" badge="$2" badge_color="$3" t1="$4" t2="$5" subtitle="$6"

  # Base: vertical gradient background with subtle radial highlight
  magick -size ${W}x${H} \
    gradient:"${BG_TOP}-${BG_BOT}" \
    -fill "${ACCENT_VIOLET}33" -draw "circle 120,120 120,30" \
    -fill "${ACCENT_CYAN}22" -draw "circle 1080,510 1080,440" \
    -font "${FONT_BOLD}" -pointsize 26 -fill "${badge_color}" \
    -gravity NorthWest -annotate +80+90 "$badge" \
    -font "${FONT_BOLD}" -pointsize 64 -fill "${TEXT_WHITE}" \
    -gravity NorthWest -annotate +80+150 "$t1" \
    -font "${FONT_BOLD}" -pointsize 64 -fill "${TEXT_WHITE}" \
    -gravity NorthWest -annotate +80+232 "$t2" \
    -font "${FONT_REG}" -pointsize 26 -fill "${TEXT_DIM}" \
    -gravity NorthWest -annotate +80+360 "$subtitle" \
    -font "${FONT_REG}" -pointsize 22 -fill "${TEXT_WHITE}" \
    -gravity SouthWest -annotate +80+60 "${SERIES}" \
    -font "${FONT_REG}" -pointsize 18 -fill "${TEXT_DIM}" \
    -gravity SouthWest -annotate +80+30 "MagnetonIO Research" \
    -fill "${ACCENT_VIOLET}" -draw "rectangle 80,540 200,544" \
    "$out"
}

# Default / homepage
magick -size ${W}x${H} \
  gradient:"${BG_TOP}-${BG_BOT}" \
  -fill "${ACCENT_VIOLET}40" -draw "circle 200,180 200,60" \
  -fill "${ACCENT_CYAN}30" -draw "circle 1000,460 1000,360" \
  -font "${FONT_BOLD}" -pointsize 30 -fill "${ACCENT_CYAN}" \
  -gravity North -annotate +0+90 "MagnetonIO Research" \
  -font "${FONT_BOLD}" -pointsize 76 -fill "${TEXT_WHITE}" \
  -gravity North -annotate +0+150 "Emergent Spacetime" \
  -font "${FONT_BOLD}" -pointsize 76 -fill "${TEXT_WHITE}" \
  -gravity North -annotate +0+240 "Dynamics" \
  -font "${FONT_REG}" -pointsize 30 -fill "${TEXT_DIM}" \
  -gravity North -annotate +0+360 "A Modular Framework" \
  -font "${FONT_REG}" -pointsize 26 -fill "${ACCENT_VIOLET}" \
  -gravity North -annotate +0+410 "Information -> Phase -> Frequency -> Geometry" \
  -font "${FONT_REG}" -pointsize 20 -fill "${TEXT_DIM}" \
  -gravity South -annotate +0+50 "Five papers - 119 pages - Category-theoretic foundations" \
  "$OUT/default.png"

make_card "$OUT/synthesis.png" \
  "SYNTHESIS - 26 PAGES" "${ACCENT_CYAN}" \
  "Modular Composition" \
  "of Information & Geometry" \
  "Meta-paper unifying the four-law compositional chain"

make_card "$OUT/mathematical-formalisms.png" \
  "LAW I - 24 PAGES" "${ACCENT_VIOLET}" \
  "Mathematical" \
  "Formalisms" \
  "Categorical foundations for matter-information correspondence"

make_card "$OUT/phase-bound-matter.png" \
  "LAW II - 23 PAGES" "${ACCENT_VIOLET}" \
  "Phase-bound" \
  "Matter" \
  "Functorial classification of thermodynamic & topological phases"

make_card "$OUT/frequency-modulated-processes.png" \
  "LAW III - 24 PAGES" "${ACCENT_VIOLET}" \
  "Frequency-modulated" \
  "Processes" \
  "Floquet phases as natural transformations"

make_card "$OUT/information-bearing-structures.png" \
  "LAW IV - 22 PAGES" "${ACCENT_VIOLET}" \
  "Information-bearing" \
  "Structures" \
  "Emergent geometry from compositional information"

# Verify dimensions
echo "=== Generated OG cards ==="
for f in "$OUT"/*.png; do
  echo -n "$f: "
  identify "$f" | awk '{print $3, $7}'
done

# Mirror to website/public/og for redeploy
mkdir -p website/public/og
cp "$OUT"/*.png website/public/og/
echo "=== Mirrored to website/public/og/ ==="
ls website/public/og/
