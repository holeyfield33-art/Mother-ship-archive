# MOTHERSHIP-001 cycles — coverage map

**Collection window:** 2026-10-29 → 2026-10-31  
**Coordinator:** ChatGPT  
**Agents:** Manus, Grok, Perplexity, DeepSeek, Gemini  

This document answers: what cycles were run, what is archived here, what is missing or lives elsewhere.

---

## Cycle status

| Cycle | Role (summary) | Producer(s) | Archived in this repo? | Package id(s) |
|---|---|---|---|---|
| D1 | Grok primary collection baseline | Grok | Yes | grok-x002, grok-x004 |
| X-002 | Grok extension / findings layer | Grok | Yes | grok-x002, grok-x004 |
| X-004 | Grok further extension (supersedes pure X-002 snapshot when using x004 zip) | Grok | Yes | grok-x004 |
| D-003 → D-004 | Ecosystem evidence; D-004 consumes DeepSeek fetch specs via Manus | Manus (+ DeepSeek specs) | Yes | d004 |
| C-002 | Large handoff corpus (NVD/CVE/GHSA/OSV-scale materials) | Manus | Yes (release assets) | c002 |
| C-003 | Results + verification bundle | Manus | Yes | c003-results, c003-verification |
| P-003 | Historical evidence (Perplexity) | Perplexity | Yes | p003 |
| P-004 | Historical evidence bundle (incl. FreeBSD advisories) | Manus | Yes | p004 |

---

## Agent → archive footprint

| Agent | Dedicated package under `packages/` or release? | Notes |
|---|---|---|
| Manus | Yes | d004, c002, c003-*, p004 |
| Grok | Yes | grok-x002, grok-x004 |
| Perplexity | Yes | p003 |
| DeepSeek | No standalone package | Specs consumed into D-004 via Manus (see manifest `producer_note`) |
| Gemini | No standalone package | No Gemini-labeled artifact in this freeze |

If a future freeze adds DeepSeek- or Gemini-only blobs, add rows here and in `manifest.json`; do not rewrite this table’s historical “No” cells—append an amendment.

---

## Planned vs delivered (this freeze)

| Item | Status |
|---|---|
| Byte packages listed in README package table | **Delivered** (git or `c002` release) |
| Top-level SHA256SUMS | **Delivered** |
| Machine-readable inventory | **Delivered** (`manifest.json`, 2026-11-08) |
| Top-level verification receipt | **Scaffold delivered**; operational hash/upstream rows **NOT_RUN** until operator runs them (`VERIFICATION.md`) |
| Analysis / class studies / templates | **Not in this repo** (by design) |
| DeepSeek-only or Gemini-only packages | **Not in this freeze** |

---

## Consumers (analysis and product)

Analysis, class studies, and templates are **not** stored in Mother-ship-archive. Pointers:

| Consumer | Location | Notes |
|---|---|---|
| Analysis / class studies / templates | Elsewhere (not linked in original freeze) | **HOLD:** add repo URL or path when public or stable |
| Software Research Studio | `software-research-studio` (related Aletheia work) | Evidence domain separate from product runtime |
| Runtime firewall / redteam | `runtime-firewall-mvp`, `aletheia-redteam-kit` | May use vulnerability intel; not automatic consumers of this archive |
| Boundary / Core | Separate product repos | Not dependent on this archive for build |

Update this section when analysis lands somewhere permanent. Until then, treat “elsewhere” as explicit, not a broken link.

---

## Amendment log

| Date | Change |
|---|---|
| 2026-11-08 | Initial cycle map and agent footprint for gap-close (completeness transparency) |
