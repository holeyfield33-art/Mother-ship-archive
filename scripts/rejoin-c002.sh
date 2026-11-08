#!/usr/bin/env bash
# Rejoin MOTHERSHIP C-002 split release assets and verify SHA-256 + size.
# Usage:
#   ./scripts/rejoin-c002.sh [dir-containing-parts]
# Default dir: current working directory.
set -euo pipefail

DIR="${1:-.}"
PART0="${DIR}/MOTHERSHIP_C002_HANDOFF.tar.gz.part00"
PART1="${DIR}/MOTHERSHIP_C002_HANDOFF.tar.gz.part01"
OUT="${DIR}/MOTHERSHIP_C002_HANDOFF.tar.gz"

EXPECTED_SHA256="14738da2fc7d0dd0ea9cb36f9dd3b7b618344fbc3fe3103d8719c8d4c4dabf62"
EXPECTED_BYTES=3659552713
EXPECTED_PART0=1900000000
EXPECTED_PART1=1759552713

if [[ ! -f "$PART0" || ! -f "$PART1" ]]; then
  echo "ERROR: missing part00 or part01 under: $DIR" >&2
  echo "Download release assets from tag c002, then re-run." >&2
  exit 1
fi

sz0=$(wc -c < "$PART0" | tr -d ' ')
sz1=$(wc -c < "$PART1" | tr -d ' ')

if [[ "$sz0" -ne "$EXPECTED_PART0" ]]; then
  echo "ERROR: part00 size $sz0 != expected $EXPECTED_PART0 (truncated download?)" >&2
  exit 1
fi
if [[ "$sz1" -ne "$EXPECTED_PART1" ]]; then
  echo "ERROR: part01 size $sz1 != expected $EXPECTED_PART1 (truncated download?)" >&2
  exit 1
fi

echo "Concatenating parts → $OUT"
cat "$PART0" "$PART1" > "$OUT"

out_sz=$(wc -c < "$OUT" | tr -d ' ')
if [[ "$out_sz" -ne "$EXPECTED_BYTES" ]]; then
  echo "ERROR: rejoined size $out_sz != expected $EXPECTED_BYTES" >&2
  exit 1
fi

echo "Verifying SHA-256..."
if command -v sha256sum >/dev/null 2>&1; then
  actual=$(sha256sum "$OUT" | awk '{print $1}')
elif command -v shasum >/dev/null 2>&1; then
  actual=$(shasum -a 256 "$OUT" | awk '{print $1}')
else
  echo "ERROR: need sha256sum or shasum" >&2
  exit 1
fi

if [[ "$actual" != "$EXPECTED_SHA256" ]]; then
  echo "ERROR: SHA-256 mismatch" >&2
  echo "  expected: $EXPECTED_SHA256" >&2
  echo "  actual:   $actual" >&2
  exit 1
fi

echo "PASS: $OUT"
echo "  bytes:  $out_sz"
echo "  sha256: $actual"
