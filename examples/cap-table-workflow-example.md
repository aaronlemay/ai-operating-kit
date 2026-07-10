# Example: Scoping a Cap-Table Support Tool

> **DECISION-SUPPORT ONLY — NOT LEGAL, TAX, OR FINANCIAL ADVICE.**
> A cap table governs real ownership, dilution, and money. This example shows how to *scope a support tool* that organizes information for human review. It does **not** produce ownership calculations you should rely on. Any real cap-table work — issuances, option grants, conversions, 409A, waterfalls — requires a qualified attorney and accountant working from your actual legal documents. Treat every output below as a draft for a professional to check.

**AI is not the job. AI is the leverage layer.** Here the leverage is faster, cleaner scoping and organization — not the ownership math itself.

---

## Scenario

Fictional "Studio X" has grown from 3 founders to 14 people plus a handful of advisors and contractors. Equity promises live in email threads, a signed SAFE, a founder spreadsheet, and one board consent. The COO wants a single, reviewable summary the studio's attorney can validate before the next financing conversation.

The goal is **not** to build a cap-table system of record. The goal is to scope a lightweight support tool that:

- gathers scattered inputs into one structured place,
- flags gaps and contradictions for a human,
- and hands a clean packet to the attorney.

## Skill sequence

| Order | Skill | Why |
|-------|-------|-----|
| 1 | `/spec-first` | Define exactly what the tool does and, crucially, what it must never do. |
| 2 | `/cleanroom` | Strip and quarantine sensitive identity/financial detail before any AI processing. |
| 3 | `/model-router` | Choose the right model tier for extraction vs. reasoning, and keep sensitive steps local/redacted. |
| 4 | `/handoff-to-cowork` | Package a review-ready summary for the attorney and COO to co-work. |

---

## Step 1 — `/spec-first`

Write the spec before touching data. The most important section is the non-goals.

**Excerpt — spec output:**

```
TOOL: Cap-Table Support Packet (draft assembler)

GOAL
- Collect equity-related facts from provided documents into one structured table.
- Surface gaps, duplicates, and contradictions for human review.

NON-GOALS (HARD LIMITS)
- Does NOT compute ownership %, dilution, or waterfall outcomes for reliance.
- Does NOT interpret legal terms (vesting cliffs, conversion, pro-rata).
- Does NOT replace the attorney, accountant, or system of record.
- Does NOT store raw PII or dollar figures in any AI-visible location.

INPUTS
- Redacted summaries of: founder split sheet, one SAFE, board consent, offer emails.

OUTPUT
- A structured "facts + open questions" packet, clearly marked DRAFT / NEEDS COUNSEL.

DEFINITION OF DONE
- Every row traces to a source document.
- Every ambiguity is listed as an open question, not silently resolved.
```

## Step 2 — `/cleanroom`

Before any content goes to a model, run `/cleanroom` to separate sensitive specifics from the structure you actually need to reason about. Replace real names and figures with stable tokens.

**Excerpt — cleanroom mapping (kept locally, never sent to AI):**

```
PERSON_01 = <founder A>       AMOUNT_01 = <SAFE principal>
PERSON_02 = <founder B>       AMOUNT_02 = <advisor grant size>
PERSON_03 = <early engineer>  DATE_01   = <SAFE date>
```

**Excerpt — what the model actually sees (redacted):**

```
- PERSON_01: common shares, founder split, no cliff noted (SOURCE: split_sheet)
- PERSON_03: offer email mentions "0.X% options, 4-yr vest" — GRANT NOT SIGNED (SOURCE: email_04)
- INVESTOR_01: SAFE, AMOUNT_01, cap noted, discount unclear (SOURCE: safe_doc)
```

Sensitive values stay in the local mapping file. The AI reasons over tokens and structure only.

## Step 3 — `/model-router`

Match each sub-task to the cheapest capable tier, and keep anything sensitive on the most contained option.

**Excerpt — routing decision:**

```
- Bulk text extraction from redacted docs   -> fast/cheap tier
- Contradiction + gap detection (reasoning)  -> mid/high tier
- Legal interpretation                       -> ROUTE TO HUMAN (attorney). No model.
```

The router's job here is partly to *refuse* to route legal interpretation to a model at all.

## Step 4 — `/handoff-to-cowork`

Package the result so the attorney and COO can co-work on it directly, with provenance and open questions front and center.

**Excerpt — handoff packet:**

```
CAP-TABLE SUPPORT PACKET — DRAFT / NEEDS COUNSEL
(fictional Studio X)

CONFIRMED FACTS (each traces to a source)
- Founders: 3 holders of common (split_sheet). De-tokenize before filing.
- 1 outstanding SAFE (safe_doc); cap present, discount ambiguous.

OPEN QUESTIONS FOR ATTORNEY
1. PERSON_03 option grant referenced in email but no signed grant on file. Real?
2. SAFE discount rate not stated in provided copy — confirm final executed version.
3. Advisor equity mentioned verbally; no document provided. Exists?

NOT INCLUDED (out of scope by design)
- Ownership %, dilution, 409A, waterfall. Counsel/accountant to compute.
```

---

## Guardrails

- The tool organizes and flags. It never decides ownership.
- No raw PII or dollar figures reach the AI layer; `/cleanroom` tokens do.
- Every output is stamped **DRAFT / NEEDS COUNSEL** and lists open questions instead of guessing.
- The system of record remains whatever the attorney and studio agree on — not this packet.

*Fictional example. Not legal, tax, or financial advice. Real cap-table work requires qualified professionals.*
