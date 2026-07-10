# Example: Motion-Capture Production Workflow

> **Fictional and vendor-neutral.** Names, rates, and shot counts are invented and rounded. This example shows *generalized* production concepts, not a specific studio's process or any real contractor's terms.

**AI is not the job. AI is the leverage layer.** The performers, the review eye, and the cleanup craft are the job. The leverage is keeping cost truth, take selection, assignments, and billing in one honest ledger so nothing slips.

---

## Scenario

Fictional "Studio X" runs a short motion-capture shoot for a game cinematic: one capture day, ~40 takes across 8 scenes, then cleanup handled by a mix of in-house and contract animators. Leadership keeps losing track of which takes were selected, who cleaned what, and whether the final invoice matches reality.

The workflow ties five things together: **project cost truth, select/take review, contractor assignment, cleanup tracking, and final billing.**

## Skill sequence

| Order | Skill | Why |
|-------|-------|-----|
| 1 | `/spec-first` | Define the pipeline stages, roles, and what "done" means per take. |
| 2 | `/project-memory` | Persist project facts (rates, scene list, decisions) so context survives across days and people. |
| 3 | `/task-ledger` | Track every take and cleanup task from capture to billed, with owner and status. |

---

## Step 1 — `/spec-first`

**Excerpt — spec output:**

```
PIPELINE: Mocap Cinematic — Studio X (fictional)

STAGES
1. Capture     -> raw takes recorded, slated
2. Select      -> director picks hero take per beat (select/take review)
3. Assign      -> each selected take assigned to a cleanup animator
4. Cleanup     -> solve + polish; tracked to "approved"
5. Bill        -> reconcile hours/deliverables to invoice

ROLES
- Director (selects), Producer (assigns + bills), Animators (cleanup)

DONE (per take)
- Selected take marked HERO, others ARCHIVED
- Cleanup approved by director
- Hours logged against the take for cost truth
```

## Step 2 — `/project-memory`

Store the durable facts once so every later step and every teammate references the same source.

**Excerpt — project memory:**

```
PROJECT: mocap-cinematic-01 (fictional)
- Scenes: 8 (S1..S8), ~40 raw takes total
- Capture day: 1 (studio day rate: $6,000, fictional)
- Cleanup rate (contract): $75/hr (fictional, generic)
- Cleanup rate (in-house cost basis): $45/hr (fictional)
- Decision (day 1): S4 reshoot dropped; use best available take
- Deliverable: 8 approved hero takes, game-engine ready
```

`/project-memory` means the day-2 producer doesn't re-litigate the S4 decision or misquote a rate.

## Step 3 — `/task-ledger`

One row per take, tracked all the way to billed. This is where **cost truth, selection, assignment, cleanup, and billing** converge.

**Excerpt — task ledger:**

| Scene | Hero take | Owner | Status | Cleanup hrs | Cost basis | Billable? |
|-------|-----------|-------|--------|-------------|------------|-----------|
| S1 | T03 | Animator A (contract) | Approved | 6.0 | $75/hr | Yes |
| S2 | T07 | Animator B (in-house) | Approved | 4.5 | $45/hr | No (internal) |
| S3 | T02 | Animator A (contract) | In cleanup | 3.0 so far | $75/hr | Yes |
| S4 | T05 | Animator C (contract) | Selected | — | $75/hr | Yes |
| S5 | T09 | Unassigned | Selected | — | — | Yes |

**Selection review note:** all non-hero takes for S1–S4 marked `ARCHIVED` so no one cleans the wrong take. Selection is a decision the director owns; the ledger just records it.

### Final billing reconciliation

At close, the ledger *is* the invoice backup.

**Excerpt — billing check:**

```
Contract cleanup billed:
  S1: 6.0 hr, S3: (final) 5.0 hr, S4: 5.5 hr ... x $75/hr
In-house cleanup (cost, not billed to client): S2 4.5 hr x $45/hr

RECONCILE:
- Every billed hour maps to an approved hero take. YES.
- Any hours logged against ARCHIVED takes? -> flag, do not bill.
- Contractor invoice total == ledger contract hours x rate? -> must match before pay.
```

---

## Guardrails

- The ledger is the single source of truth for what was selected, cleaned, and billed — no side spreadsheets.
- Hours on archived (non-hero) takes are flagged and not billed.
- Contractor pay is released only when their invoice reconciles to ledger hours.
- Rates and cost basis stay generic here; real contractor terms live behind `/cleanroom` if AI review is used.

*Fictional, vendor-neutral example for illustration only.*
