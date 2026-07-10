# /forecast-check

## Purpose

Design or review a lightweight studio forecasting tool — the kind that answers "can we make the next payroll, and how much runway do we have?" `/forecast-check` structures the inputs (cash, receivables, burn, payroll, expenses, project margins, pending deals) into a clear picture of the revenue gap, next-payroll risk, and runway, then recommends an action. It is built for operators who need decision-support, not a finance department.

> **Disclaimer:** Outputs are **decision-support only, not financial advice.** They are estimates based on the inputs you provide. Confirm anything material with your accountant or financial professional before acting.

## Use When

- You're building a simple cash/runway forecasting sheet or tool for a studio.
- You need to sanity-check whether the next payroll is at risk.
- You want a repeatable structure for reviewing cash position each week or month.
- Cash-flow pressure is driving prioritization (feeds [/survival-filter](survival-filter.md)).
- You're reviewing an existing forecast and want to pressure-test its logic.

## Copy-Paste Prompt

```
Act as a pragmatic studio operator helping design/review a simple cash forecast.
This is decision-support, not financial advice — flag assumptions and uncertainty
openly, and never present estimates as guarantees.

Use the inputs below. Where an input is missing, mark it "unknown" and note how
it affects confidence rather than inventing a number.

Inputs:
- Current cash on hand: <...>
- Upcoming payroll dates and amounts: <...>
- Expected receivables (amount, source, expected date, confidence %): <...>
- Contractor burn (per period): <...>
- Employee payroll (per period): <...>
- Projected other expenses (per period): <...>
- Active project margins: <...>
- Pending deals (value, probability, expected close): <...>

Produce:

1. CURRENT CASH — starting position.
2. PAYROLL DATES — upcoming payroll obligations and amounts.
3. EXPECTED RECEIVABLES — inflows with amount, timing, and confidence.
4. CONFIDENCE LEVEL — overall confidence in the forecast and what drives it.
5. CONTRACTOR BURN — outflow to contractors per period.
6. EMPLOYEE PAYROLL — outflow to employees per period.
7. PROJECTED EXPENSES — other recurring/one-off outflows.
8. ACTIVE PROJECT MARGINS — contribution from live projects.
9. PENDING DEALS — probability-weighted potential inflows.
10. REVENUE GAP — the shortfall (or surplus) between committed inflows and
    obligations over the forecast window.
11. NEXT PAYROLL RISK — LOW / MEDIUM / HIGH that the next payroll is covered, with
    the reasoning.
12. RUNWAY ESTIMATE — how many periods of runway at current burn, with a
    conservative and an optimistic case.
13. RECOMMENDED ACTION — the most useful next move (e.g. accelerate a receivable,
    trim burn, delay a spend, close a pending deal), stated plainly.

Show your arithmetic so I can check it. Restate the decision-support disclaimer at
the end.
```

## Output Format

```
# FORECAST CHECK  (decision-support only — not financial advice)

Current Cash          : <amount>
Payroll Dates         : <date — amount; date — amount>
Expected Receivables  : <amount — source — date — confidence%>
Confidence Level      : <overall + drivers>
Contractor Burn       : <per period>
Employee Payroll      : <per period>
Projected Expenses    : <per period>
Active Project Margins : <contribution>
Pending Deals         : <value × probability — expected close>

Revenue Gap           : <shortfall or surplus over window>
Next Payroll Risk     : LOW / MEDIUM / HIGH — <reasoning>
Runway Estimate       : <conservative case> / <optimistic case>
Recommended Action    : <clearest next move>

Note: Estimates based on inputs provided. Decision-support only, not financial
advice. Confirm material decisions with a financial professional.
```

## Notes

- **Confidence is a first-class output.** A forecast that hides its uncertainty is worse than none — always weight receivables and deals by likelihood.
- Run the **conservative case** as your planning default; treat the optimistic case as upside, not budget.
- Feed **Next Payroll Risk** and **Revenue Gap** into [/survival-filter](survival-filter.md) to let real cash pressure drive prioritization.
- Keep every figure generalized and private. Never paste real payroll, client, or banking specifics into an AI tool — run [/cleanroom](cleanroom.md) first.
- This is a thinking aid, not a ledger. It complements, and never replaces, proper bookkeeping and professional advice.
