# Example: Project Cost Truth Layer — Minimum Viable Data Model

> **Fictional and illustrative.** All rows are invented. This is a data-model pattern, not accounting advice.

**AI is not the job. AI is the leverage layer.** You can't get leverage from AI on top of numbers you don't trust. The cost truth layer is the honest substrate everything else — margins, forecasts, billing — sits on.

---

## Scenario

Fictional "Studio X" runs several client and internal projects with a mix of staff and contractors. Leadership can't answer a simple question — *"what did project P actually cost us this month?"* — because hours live in three tools and nobody agrees on a rate. The fix is a small, boring, canonical table that everything feeds into.

## The minimum viable data model

Nine fields. Resist adding more until these are trustworthy.

| person | project | date | hours | role | cost_basis ($/hr) | billable | task/category | source_system |
|--------|---------|------|-------|------|-------------------|----------|---------------|---------------|
| PERSON_01 | ProjP | 2026-07-01 | 6.0 | Animator | 45 | billable | cleanup | time_tool |
| PERSON_02 | ProjP | 2026-07-01 | 2.5 | Producer | 60 | non-billable | coordination | time_tool |
| CONTRACTOR_07 | ProjP | 2026-07-02 | 8.0 | Animator | 75 | billable | cleanup | invoice |
| PERSON_01 | ProjInt | 2026-07-02 | 1.5 | Animator | 45 | non-billable | internal R&D | time_tool |
| PERSON_03 | ProjQ | 2026-07-03 | 4.0 | Lead | 70 | billable | review | calendar_export |

*(Names tokenized; figures fictional and rounded.)*

## Why each field matters

- **person** — attributes cost and effort to a human. Tokenized (`PERSON_01`) in any AI-visible copy; the real identity stays behind `/cleanroom`.
- **project** — the unit you actually want P&L on. Without it, hours are noise.
- **date** — enables monthly cuts, burn rate, and matching cost to the period revenue was earned.
- **hours** — the raw quantity of effort. The one number people most often fudge; guard it.
- **role** — lets you see *what kind* of work a project consumed (too much producer time? not enough lead review?).
- **cost_basis ($/hr)** — turns hours into dollars. Staff use internal cost, contractors use their rate. This is the field most studios get wrong or leave blank, which is why margins are fiction.
- **billable** — separates client-recoverable cost from overhead. Drives realization and true margin.
- **task/category** — shows where effort goes inside a project (cleanup vs. coordination vs. rework), so you can attack the expensive parts.
- **source_system** — provenance. When two tools disagree, you need to know which row came from where to reconcile. Also flags double-counting.

## Two questions it can now answer

```
Project P cost (July, fictional):
  6.0h x $45  = $270   (PERSON_01, billable cleanup)
  2.5h x $60  = $150   (PERSON_02, non-billable coordination)
  8.0h x $75  = $600   (CONTRACTOR_07, billable cleanup)
  --------------------------------
  Total cost  = $1,020
  Billable portion = $870   Non-billable (overhead) = $150
```

That single table answers "what did P cost" *and* "how much of it can we recover" — the two questions the studio couldn't answer before.

## Privacy handling via `/cleanroom`

Person-level cost and hours are sensitive. Before any AI analysis:

```
/cleanroom mapping (local only, never sent to AI):
  PERSON_01     = <staff animator>
  PERSON_02     = <staff producer>
  CONTRACTOR_07 = <contract animator>

Rates may also be tokenized if disclosing them is sensitive:
  RATE_LOW = internal cost basis, RATE_HIGH = contractor rate
```

The AI reasons over structure and tokens. Real names and, if needed, real rates de-tokenize only in the final human-facing report.

---

## Guardrails

- Keep the model at nine fields until they're trustworthy; scope creep kills adoption.
- `cost_basis` must be filled for every row or margins are fiction.
- Person-level data is tokenized via `/cleanroom` before AI ever sees it.
- This layer is a management truth source, not a general ledger — it complements, not replaces, accounting.

*Fictional example. Illustrative only, not accounting advice.*
