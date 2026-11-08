# Mother-ship-archive

**Immutable byte archive for MOTHERSHIP-001** — multi-agent vulnerability-intelligence collection, 29–31 October 2026.

Coordinator: ChatGPT. Agents: Manus, Grok, Perplexity, DeepSeek, Gemini.

This repository holds **only preserved public source data and the agents' collection reports**. Packages under 100 MB are committed in `packages/<tag>/`. C-002 (3.66 GB) is published as two release parts under the `c002` tag. Analysis, class studies and templates live elsewhere and are not here.

> **GitHub description (for repo settings):** Immutable byte archive for MOTHERSHIP-001 (Oct 2026 multi-agent vuln-intel collection). Evidence only — no analysis. See NOTICE.md for source terms.

## Machine-readable inventory (source of truth)

| File | Role |
|---|---|
| [manifest.json](manifest.json) | Package id, path, cycles, producer, bytes, SHA-256, storage |
| [SHA256SUMS](SHA256SUMS) | Checksums for `sha256sum -c` |
| [CYCLES.md](CYCLES.md) | Cycle coverage, agent footprint, completeness |
| [VERIFICATION.md](VERIFICATION.md) | Integrity + upstream check receipt (operator-run) |
| [NOTICE.md](NOTICE.md) | Sources and terms (no relicense) |
| [scripts/rejoin-c002.sh](scripts/rejoin-c002.sh) | Rejoin C-002 parts, check size + SHA-256 |

## Packages

| Folder / release | File | Cycles | Producer | Bytes | SHA-256 |
|---|---|---|---|---:|---|
| `d004` | `MOTHERSHIP_D004_ECOSYSTEM_EVIDENCE.zip` | D-003 → D-004 | Manus (fetch specs from DeepSeek) | 22,742,076 | `8bf7a6311e32ce803efb1cb6531c1a63a53eda2732a38d6bab486da6c52c3a7e` |
| `c003` | `MOTHERSHIP_C003_RESULTS.zip` | C-003 | Manus | 59,205 | `91a5c5683d75c4b22350e1269dcfcf25275cbdb1267ccefb75abe31b321571c2` |
| `c003` | `MOTHERSHIP_C003_VERIFICATION.zip` | C-003 | Manus | 1,321,581 | `2b6de56736ef1b94917a243f66586f7521139477bcb12312e99281656e3dafb6` |
| `grok-x004` | `MOTHERSHIP_GROK_D1_X002_X004.zip` | D1, X-002, X-004 | Grok | 4,464,077 | `2f85e6a077840255f9e1bf91c4d5bd4543272fd9a81014b5e1dfa3f35c461552` |
| `grok-x002` | `MOTHERSHIP_GROK_D1_X002.zip` | D1, X-002 (earlier snapshot) | Grok | 4,449,135 | `bd4ac028123229aaac3a075431e5e8a7c04ebd1d65847474a3f4e202065b2721` |
| `p003` | `MOTHERSHIP_P003_HISTORICAL_EVIDENCE.zip` | P-003 | Perplexity | 15,595 | `734c30752d0396d420f18141d5d75f3f8b408baac6fcaf074d2a08cfbbf61925` |
| `p004` | `MOTHERSHIP_P004_HISTORICAL_EVIDENCE_BUNDLE.zip` | P-004 | Manus | 298,434 | `220a48af59d649dfd1dfdb3eab4b4201ea93bbc8bae6782710fc135148119fb6` |
| `c002` | `MOTHERSHIP_C002_HANDOFF.tar.gz.part00`, `.part01` | C-002 | Manus | 3,659,552,713 (whole) | `14738da2fc7d0dd0ea9cb36f9dd3b7b618344fbc3fe3103d8719c8d4c4dabf62` (whole) |

## Verify

```bash
# Git-sized packages (filenames as in SHA256SUMS; run from directory holding the zips or adjust paths)
sha256sum -c SHA256SUMS --ignore-missing

# C-002: download both release assets under tag c002, then
./scripts/rejoin-c002.sh /path/to/dir/with/parts
```

Original filenames and each package's per-file hashes are recorded in the MOTHERSHIP manifests inside the archives.

## Provenance caveats

- A matching hash proves the bytes have not changed since the agent produced them. It does not prove the agent's claims about them are correct.
- Where packages were checked against outside sources (PyPA and RustSec commits on GitHub, FreeBSD advisory pages, the CISA KEV catalog), that is recorded in the in-package manifests. Top-level re-check status lives in [VERIFICATION.md](VERIFICATION.md) (initially NOT_RUN until an operator runs it).
- Crosswalk tables link identifiers only. A shared ID does not mean two records describe the same root cause or scope.

See [NOTICE.md](NOTICE.md) for sources and attribution. This archive does not relicense upstream material.

## License / terms

There is no single project license that covers upstream advisory data. Use of package contents is governed by each source's terms as listed in NOTICE.md. Repository scaffolding (README, manifest, scripts, verification text) is provided for archival use with the collection; do not treat NOTICE silence as permission to redistribute third-party feeds.
