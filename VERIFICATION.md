# Verification receipt — Mother-ship-archive (MOTHERSHIP-001)

**Status vocabulary:** `PASS` | `FAIL` | `NOT_RUN` | `PARTIAL`  
**Scope:** Integrity of archived bytes and (where claimed) correspondence to public upstreams.  
**Not in scope:** Truth of agent analytical claims; that requires independent analysis elsewhere.

Generated: 2026-11-08  
Archive schema: manifest.json `schema_version` 1.0

---

## 1. Byte integrity (agent-produced artifacts)

A matching SHA-256 proves the file has not changed since the agent (or archive operator) produced the listed digest. It does **not** prove upstream correctness.

| Package id | Artifact | Expected SHA-256 | Method | Result |
|---|---|---|---|---|
| d004 | `MOTHERSHIP_D004_ECOSYSTEM_EVIDENCE.zip` | `8bf7a6311e32ce803efb1cb6531c1a63a53eda2732a38d6bab486da6c52c3a7e` | Compare to `SHA256SUMS` / `manifest.json` after download | **NOT_RUN** (operator: run `sha256sum -c SHA256SUMS`) |
| c003-results | `MOTHERSHIP_C003_RESULTS.zip` | `91a5c5683d75c4b22350e1269dcfcf25275cbdb1267ccefb75abe31b321571c2` | same | **NOT_RUN** |
| c003-verification | `MOTHERSHIP_C003_VERIFICATION.zip` | `2b6de56736ef1b94917a243f66586f7521139477bcb12312e99281656e3dafb6` | same | **NOT_RUN** |
| grok-x004 | `MOTHERSHIP_GROK_D1_X002_X004.zip` | `2f85e6a077840255f9e1bf91c4d5bd4543272fd9a81014b5e1dfa3f35c461552` | same | **NOT_RUN** |
| grok-x002 | `MOTHERSHIP_GROK_D1_X002.zip` | `bd4ac028123229aaac3a075431e5e8a7c04ebd1d65847474a3f4e202065b2721` | same | **NOT_RUN** |
| p003 | `MOTHERSHIP_P003_HISTORICAL_EVIDENCE.zip` | `734c30752d0396d420f18141d5d75f3f8b408baac6fcaf074d2a08cfbbf61925` | same | **NOT_RUN** |
| p004 | `MOTHERSHIP_P004_HISTORICAL_EVIDENCE_BUNDLE.zip` | `220a48af59d649dfd1dfdb3eab4b4201ea93bbc8bae6782710fc135148119fb6` | same | **NOT_RUN** |
| c002 | `MOTHERSHIP_C002_HANDOFF.tar.gz` (rejoined) | `14738da2fc7d0dd0ea9cb36f9dd3b7b618344fbc3fe3103d8719c8d4c4dabf62` | `scripts/rejoin-c002.sh` then sha256 | **NOT_RUN** |

**How to promote NOT_RUN → PASS locally:**

```bash
# Git-sized packages (from repo root after clone)
sha256sum -c SHA256SUMS --ignore-missing

# C-002
./scripts/rejoin-c002.sh /path/to/downloaded/parts
```

Record the date, operator, and environment in a follow-up line under each row when you run them. Do not edit historical PASS rows to match new claims.

---

## 2. Upstream correspondence (public sources)

README/NOTICE state that some packages were checked against outside sources and that detail lives in **in-package MOTHERSHIP manifests**. This top-level receipt does **not** re-assert those checks until an independent operator re-runs them and fills the table.

| Package id | Claimed upstream touchpoints (from NOTICE / README) | Independent re-check | Result |
|---|---|---|---|
| d004 | PyPA advisory-db commit `8084f16`; RustSec advisory-db commit `2295466`; Go vuln DB bulk; OSV Hackage bulk | Re-fetch and diff or document impossibility | **NOT_RUN** |
| c002 | NVD; CVE List V5; GitHub Advisory Database; OSV all.zip | same | **NOT_RUN** |
| c003 | NVD (via cycle); CISA KEV (via cycle materials) | same | **NOT_RUN** |
| grok-x002 / grok-x004 | CISA KEV; MITRE CWE | same | **NOT_RUN** |
| p004 | FreeBSD Security Advisories (signed `.asc` retained) | Verify `.asc` where practical | **NOT_RUN** |
| p003 | Historical evidence (Perplexity); cites primary publications | Citation integrity only | **NOT_RUN** |

**Rule:** Promote a cell to PASS only with operator, date, method, and artifact (log or receipt hash). PARTIAL is allowed when only a subset of upstreams was re-checked.

---

## 3. Custody boundaries (explicit)

| Claim | Status |
|---|---|
| Bytes match listed SHA-256 after download | Achievable; commands above |
| Agent faithfully mirrored a given upstream commit | Requires §2 re-check; not implied by §1 |
| Crosswalk IDs denote same root cause/scope | **Not claimed** (README provenance caveat) |
| Analysis conclusions in agent reports are correct | **Out of scope** for this archive |

---

## 4. Amendment log

| Date | Change | Operator |
|---|---|---|
| 2026-11-08 | Initial top-level verification scaffold; all operational rows NOT_RUN pending local/CI hash runs | Archive gap-close pass |

When you first run `sha256sum -c` successfully, append a row and set §1 results to PASS with date.
