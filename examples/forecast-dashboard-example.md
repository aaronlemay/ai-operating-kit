# Example: Survival-Focused Studio Dashboard

> **DECISION-SUPPORT ONLY — NOT FINANCIAL ADVICE.**
> Every number below is fictional and rounded. This is a dashboard *concept*, not a live financial statement. Cash and payroll decisions require your actual books and qualified professionals.

**AI is not the job. AI is the leverage layer.** Survival is the job. The dashboard's leverage is turning scattered financial facts into a few tiles that each drive one clear decision — refreshed with `/forecast-check`.

---

## Scenario

Fictional "Studio X" is running lean. Leadership doesn't need a 20-tab financial model; they need to know, at a glance, *can we make payroll, and how many weeks do we have?* This dashboard is built for survival, not for investors.

Run `/forecast-check` on a regular cadence (e.g., weekly) to refresh the tiles and re-test the assumptions behind receivables and runway.

## The dashboard — key tiles

Each tile shows a fictional round number and the **decision it drives**.

| Tile | Fictional value | Decision it drives |
|------|-----------------|--------------------|
| **Current cash** | $180,000 | Baseline. Is there enough buffer to say no to bad revenue? |
| **Next payroll (date & risk)** | Jul 15 · **LOW risk** | The single most important tile. Green = proceed; amber = act now. |
| **Receivables + confidence** | $120,000 (**65% confidence**) | Which invoices to chase *today*; discount the shaky ones. |
| **Contractor burn** | $22,000 / wk | The fastest lever to pull if runway shortens — pause or slow. |
| **Runway** | **9 weeks** | The countdown. Under a threshold triggers survival mode. |
| **Revenue gap** | $60,000 to breakeven/mo | How much new signed work is needed, not hoped for. |
| **Project margins** | ProjP +18% · ProjQ **−6%** | Kill or renegotiate the negative-margin work. |

### How the tiles connect (fictional)

```
Cash on hand ........................ $180,000
+ Receivables (confidence-weighted) . $120,000 x 0.65 = $78,000
--------------------------------------------------------
Realistic near-term cash ............ ~$258,000

Weekly burn:
  Payroll (avg/wk) .................. $16,000
  Contractors ....................... $22,000
  Fixed overhead .................... $6,000
  --------------------------------------------
  Total burn ........................ ~$44,000 / wk

Runway = $258,000 / $44,000 ≈ 5.9 weeks (confidence-weighted)
         $360,000 / $44,000 ≈ 8.2 weeks (if all receivables land)
Displayed runway uses the conservative band. -> 9-week tile is the optimistic read; treat 6 as the planning number.
```

**Read:** the gap between the optimistic (9 wk) and confidence-weighted (~6 wk) runway is the whole story. `/forecast-check` exists to keep that gap honest.

### The decisions this dashboard forces

- **Payroll amber?** Pull the contractor-burn lever first ($22k/wk is the biggest fast lever), then chase the high-confidence receivables.
- **ProjQ at −6% margin?** Renegotiate or stop; you're paying to do that work.
- **Revenue gap $60k/mo?** That's the *signed* target, not the pipeline hope — sales priority is set by this number.
- **Runway under ~6 weeks?** Survival mode: freeze discretionary spend, accelerate collections, defer non-critical hires.

---

## Guardrails

- Confidence-weight receivables; never plan on 100% of invoices landing on time.
- Show the conservative runway band as the planning number, optimistic as context.
- Refresh with `/forecast-check` on a fixed cadence — a stale survival dashboard is worse than none.
- This is management decision-support, not your books of record.

*Fictional example. Decision-support only. Not financial advice.*
