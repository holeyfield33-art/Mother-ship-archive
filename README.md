# Mother-ship-archive

Byte archive for **MOTHERSHIP-001**, a multi-agent vulnerability-intelligence collection, October 29-31, 2026. The coordinator was ChatGPT; the five agents were Manus, Grok, Perplexity, DeepSeek and Gemini.

This repository holds **only preserved public source data and the agents' collection reports**, published as GitHub release assets. Analysis, class studies and templates live elsewhere and aren't here.

## Releases

| Tag | Asset | Cycles | Producer | Bytes | SHA-256 |
|---|---|---|---|---:|---|
| `d004` | `MOTHERSHIP_D004_ECOSYSTEM_EVIDENCE.zip` | D-003 → D-004 | Manus (fetch specs from DeepSeek) | 22,742,076 | `8bf7a6311e32ce803efb1cb6531c1a63a53eda2732a38d6bab486da6c52c3a7e` |
| `c003` | `MOTHERSHIP_C003_RESULTS.zip` | C-003 | Manus | 59,205 | `91a5c5683d75c4b22350e1269dcfcf25275cbdb1267ccefb75abe31b321571c2` |
| `c003` | `MOTHERSHIP_C003_VERIFICATION.zip` | C-003 | Manus | 1,321,581 | `2b6de56736ef1b94917a243f66586f7521139477bcb12312e99281656e3dafb6` |
| `grok-x004` | `MOTHERSHIP_GROK_D1_X002_X004.zip` | D1, X-002, X-004 | Grok | 4,464,077 | `2f85e6a077840255f9e1bf91c4d5bd4543272fd9a81014b5e1dfa3f35c461552` |
| `grok-x002` | `MOTHERSHIP_GROK_D1_X002.zip` | D1, X-002 (earlier snapshot) | Grok | 4,449,135 | `bd4ac028123229aaac3a075431e5e8a7c04ebd1d65847474a3f4e202065b2721` |
| `p003` | `MOTHERSHIP_P003_HISTORICAL_EVIDENCE.zip` | P-003 | Perplexity | 15,595 | `734c30752d0396d420f18141d5d75f3f8b408baac6fcaf074d2a08cfbbf61925` |
| `p004` | `MOTHERSHIP_P004_HISTORICAL_EVIDENCE_BUNDLE.zip` | P-004 | Manus | 298,434 | `220a48af59d649dfd1dfdb3eab4b4201ea93bbc8bae6782710fc135148119fb6` |
| `c002` | `MOTHERSHIP_C002_HANDOFF.tar.gz.part00`, `.part01` | C-002 | Manus | 3,659,552,713 (whole) | `14738da2fc7d0dd0ea9cb36f9dd3b7b618344fbc3fe3103d8719c8d4c4dabf62` (whole) |

`SHA256SUMS` lists the same hashes. Verify after download:

```bash
sha256sum -c SHA256SUMS --ignore-missing
# C-002: rejoin the parts first
cat MOTHERSHIP_C002_HANDOFF.tar.gz.part00 MOTHERSHIP_C002_HANDOFF.tar.gz.part01 > MOTHERSHIP_C002_HANDOFF.tar.gz
```

Original filenames and each package's per-file hashes are recorded in the MOTHERSHIP manifests.

## Provenance caveats

- A matching hash proves the bytes haven't changed since the agent produced them. It doesn't prove the agent's claims about them are correct. Where packages were checked against outside sources (PyPA and RustSec commits on GitHub, FreeBSD advisory pages, the CISA KEV catalog), that's recorded in the manifests.
- Crosswalk tables link identifiers only. A shared ID doesn't mean two records describe the same root cause or scope.

See [NOTICE.md](NOTICE.md) for sources and attribution.
