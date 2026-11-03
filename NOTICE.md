# Sources and attribution

The release assets contain copies of public data from the sources below. **This archive doesn't relicense anything.** Each source's own terms apply to its material. Where we've checked a source's license, it's stated; otherwise it's marked **not verified**, and you should check the source before reusing its material.

| Source | Where it appears | Terms |
|---|---|---|
| PyPA Advisory Database, https://github.com/pypa/advisory-database (commit `8084f16`) | d004 | Repository `LICENSE` headed "Attribution 4.0 International" (CC BY 4.0). Whether it covers every imported advisory is not determined |
| RustSec Advisory Database, https://github.com/RustSec/advisory-db (commit `2295466`) | d004 | `LICENSE.txt` states CC0-1.0 by default, with CC BY 4.0 for GHSA-derived material. **Unresolved:** the bundled `LICENSES/CC-BY-4.0.txt` contains Attribution-ShareAlike text |
| Go Vulnerability Database, https://vuln.go.dev | d004 | Not verified (no license file in the bulk ZIP) |
| OSV Hackage bulk export, https://osv.dev | d004 | Not verified (no license file in the bulk ZIP) |
| NVD, https://nvd.nist.gov | c002, c003 | Not verified here; see NVD terms of use |
| CVE List V5, https://github.com/CVEProject/cvelistV5 | c002 | Not verified here; see CVE Program terms of use |
| GitHub Advisory Database, https://github.com/github/advisory-database | c002 | Not verified here; see the repository's license |
| OSV all.zip, https://osv.dev | c002 | Not verified; aggregated records carry their upstream sources' terms |
| CISA Known Exploited Vulnerabilities catalog, https://www.cisa.gov/known-exploited-vulnerabilities-catalog | grok-x002, grok-x004, c003 | Not verified here; see CISA terms |
| MITRE CWE, https://cwe.mitre.org | grok-x002, grok-x004 | Not verified here; see the CWE terms of use |
| FreeBSD Security Advisories, https://www.freebsd.org/security/advisories/ | p004 (original signed `.asc` files) | FreeBSD Documentation License, per the P-003 report; retain notices. Embedded patch text belongs to its authors |

Research summaries (X-002 / X-004 findings, P-003 records) paraphrase and cite primary publications, such as Google Project Zero and GitHub Security Lab. They link to the originals and don't reproduce them. Credit for the underlying research belongs to those authors.

If you are a rights holder and want material removed, open an issue.
