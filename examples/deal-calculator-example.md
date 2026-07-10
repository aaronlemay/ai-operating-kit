# Example: Deal Calculator for a Fictional Acquisition

> **ILLUSTRATIVE DECISION-SUPPORT ONLY — NOT FINANCIAL, TAX, OR LEGAL ADVICE.**
> Every name and number below is invented and rounded. This example shows a *structure* for thinking about a deal, not a valuation you should act on. A real acquisition requires qualified financial, legal, and tax advisors working from audited figures and executed documents.

**AI is not the job. AI is the leverage layer.** The leverage is a fast, transparent model you can stress-test — the judgment stays with people.

---

## Scenario

Fictional "Studio X" (a mid-size creative studio) is considering acquiring fictional "Studio Y" (a smaller specialist studio) to add a capability in-house. Leadership wants a first-pass, back-of-envelope calculator to decide whether the deal is even worth deeper diligence — before spending money on advisors.

All figures are invented round numbers for illustration.

## Skill sequence

| Order | Skill | Why |
|-------|-------|-----|
| 1 | `/spec-first` | Pin down what the calculator computes, its assumptions, and its limits. |
| 2 | `/roi-check` | Run the base case, sensitivity bands, and payback under stated assumptions. |

---

## Step 1 — `/spec-first`

**Excerpt — spec output:**

```
CALCULATOR: Acquisition First-Pass (Studio X acquiring Studio Y)

PURPOSE
- Decide GO / NO-GO to paid diligence. Not a valuation of record.

INPUTS (all fictional, rounded)
- Purchase price (headline):      $4,000,000
- Studio Y annual revenue:        $2,500,000
- Studio Y annual costs:          $2,000,000  (=> $500k operating profit)
- Expected annual synergies:      $300,000   (shared overhead + new billable capacity)
- Integration cost (one-time):    $400,000
- Attrition risk haircut:         apply to synergies (see sensitivity)

OUTPUTS
- Simple payback (years)
- Year-1 and steady-state combined contribution
- Sensitivity table across synergy realization and revenue retention

NON-GOALS
- No tax structuring, no goodwill/amortization treatment, no financing model.
- Not a fairness opinion. Not advice.
```

## Step 2 — `/roi-check`

**Base case (fictional):**

```
Annual benefit  = Studio Y operating profit + synergies
                = $500,000 + $300,000 = $800,000
Total outlay    = purchase price + integration
                = $4,000,000 + $400,000 = $4,400,000

Simple payback  = $4,400,000 / $800,000 = 5.5 years
```

### Sensitivity analysis

Two things most likely to be wrong: how much of Studio Y's revenue *stays* after the deal (retention), and how much of the promised synergy is *real* (realization). The table shows simple payback in years.

| Retention \ Synergy realized | 50% synergy | 75% synergy | 100% synergy |
|------------------------------|-------------|-------------|--------------|
| **70% revenue retained**     | ~11.0 yrs   | ~8.4 yrs    | ~6.8 yrs     |
| **85% revenue retained**     | ~7.7 yrs    | ~6.4 yrs    | ~5.5 yrs     |
| **100% revenue retained**    | ~6.3 yrs    | ~5.5 yrs    | ~4.9 yrs     |

*(Illustrative: retention scales Studio Y operating profit; realization scales the $300k synergy; outlay held at $4.4M.)*

**Read:** the deal only looks attractive (sub-6-year payback) in the upper-right region — high retention *and* high synergy realization. The downside corner more than doubles payback.

### Risk notes

- **Key-person risk.** If Studio Y's value walks out the door post-close, the "operating profit" line evaporates. Consider retention terms — a professional structures these.
- **Synergy optimism.** Synergies are the most over-estimated input in most deals. The 50% column exists because 100% rarely happens.
- **Integration drag.** The $400k one-time cost often runs over and distracts both teams for months; that opportunity cost is not in this model.
- **Financing not modeled.** Cash vs. debt vs. equity changes the real cost materially. Out of scope here by design.
- **Single-point inputs.** Every figure is a guess until diligence. This tool decides *whether to spend on diligence*, nothing more.

**First-pass verdict (illustrative):** payback is acceptable only under favorable assumptions. Recommend GO to paid diligence *if* retention terms look feasible; otherwise NO-GO.

---

## Guardrails

- Simple payback ignores time value of money, taxes, and financing — deliberately. It is a screen, not a valuation.
- The sensitivity table is the point: never present a single number to a decision-maker.
- Hand the favorable/unfavorable framing to qualified advisors before any offer.

*Fictional example. Illustrative decision-support only. Not financial, tax, or legal advice.*
