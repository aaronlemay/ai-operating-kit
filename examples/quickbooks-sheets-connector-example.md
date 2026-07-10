# Example: Moving Accounting Data into Sheets/Excel for Analysis

> **Generalized workflow. No real credentials, keys, tokens, or account data appear here — and none should ever be pasted into a prompt or committed to a repo.**

**AI is not the job. AI is the leverage layer.** Bookkeeping stays in your accounting system. The leverage is getting a clean, safe *copy* of report data into a spreadsheet where you can slice margins and runway — without exposing the sensitive source.

---

## Scenario

Fictional "Studio X" keeps its books in a generic accounting system and wants monthly financial report data in Google Sheets (or Excel) for management analysis — margins, burn, and the cost truth layer. The team wants this to be safe, repeatable, and free of any credential handling.

Two approaches are described: a **manual/export-based** approach (recommended default) and an **optional automated** approach (conceptual only).

## Skill sequence

| Order | Skill | Why |
|-------|-------|-----|
| 1 | `/spec-first` | Define exactly which reports, columns, and cadence — before touching data. |
| 2 | `/cleanroom` | Redact/tokenize sensitive detail before any AI-assisted analysis of the export. |

---

## Step 1 — `/spec-first`

**Excerpt — spec output:**

```
CONNECTOR: Accounting -> Spreadsheet (report data for analysis)

SCOPE
- Reports: P&L by project, A/R aging, payroll summary (report-level, not transaction PII)
- Cadence: monthly close + weekly A/R refresh
- Destination: one Google Sheet (or .xlsx), one tab per report

EXPLICIT RULES
- Use EXPORTED reports (CSV/XLSX), not raw ledger dumps.
- NO credentials, API keys, or tokens in prompts, files, or the repo.
- Sensitive fields tokenized via /cleanroom before any AI analysis.

DONE
- Each report lands in its tab, dated, with a source note.
```

## Step 2 — the manual / export-based approach (recommended)

The safest connector is often a person and an export button.

```
1. In the accounting system, open the report (e.g., P&L by project).
2. Set the date range; Export -> CSV or XLSX.
3. Import into the target Sheet/Excel: one tab per report, label with date + source.
4. Keep the raw export in a restricted folder; the working Sheet holds the analysis.
```

Advantages: no integration to secure, no credentials anywhere, easy to audit, and it works today with zero code.

### `/cleanroom` before analysis

If you'll use AI to help analyze the export, tokenize first.

```
/cleanroom mapping (local only, never sent to AI):
  PERSON_01 = <employee name>      CLIENT_A = <client name>
  PERSON_02 = <employee name>      RATE_x   = <sensitive rate>

Then the AI sees only:
  ProjP | CLIENT_A | revenue: $R | cost: $C | margin: 18%
  Payroll summary | headcount: N | total: $P   (no per-person PII)
```

Run analysis on the tokenized copy; de-tokenize only in the final human-facing report.

## Step 3 — the optional automated approach (conceptual)

If manual export becomes a bottleneck, an automated pull *can* be built — described here at a concept level only, with no secrets shown.

```
CONCEPT (not implemented here):
- A scheduled job calls the accounting system's report API.
- Credentials live ONLY in a secrets manager / environment vault —
  NEVER in code, prompts, spreadsheets, or the repo.
- The job writes report-level rows to the Sheet via its API.
- Same /cleanroom step applies before any AI analysis.

GUARDRAILS FOR AUTOMATION
- Least-privilege, read-only credentials.
- Pull reports/summaries, not raw transaction PII, wherever possible.
- Log what was pulled; rotate keys; review access regularly.
- A qualified professional owns the accounting source of record.
```

Automate only when the manual approach's simplicity is genuinely costing you — the export button carries far less risk.

---

## Guardrails

- Default to exported reports; automate only when justified.
- No credentials, keys, tokens, or raw account data in prompts, files, or version control — ever.
- Tokenize sensitive fields with `/cleanroom` before AI analysis; de-tokenize only in the final report.
- The accounting system stays the source of record; the Sheet is for analysis, not bookkeeping.

*Generalized, fictional example for illustration only. Not accounting, tax, or financial advice.*
