# Forecast Dashboard Spec

> **How to use:** A spec for a survival-focused studio forecast — the small set of numbers that tell you whether you can make payroll and keep the lights on. Pairs with `/forecast-check`. Fill in the data source, refresh cadence, owner, and the *decision each metric drives* — a metric that drives no decision doesn't belong here. This is a spec, not the dashboard itself; hand it to whoever builds the sheet or tool.
>
> **Disclaimer:** Decision-support only. This is not financial, accounting, tax, or investment advice. Validate all figures with your bookkeeper, accountant, or CFO before acting.

- **Owner:** [Owner]
- **Date:** [YYYY-MM-DD]

---

## Purpose

*What this dashboard exists to answer, in one sentence.*

[e.g. "Can we cover the next two payrolls and how much runway remains?"]

## Key metrics

| Metric | Definition | Data source | Refresh | Owner | Decision it drives |
|---|---|---|---|---|---|
| **Current cash** | Cash on hand across accounts | [Source] | [Daily/weekly] | [Owner] | Whether spending pauses this week |
| **Payroll dates & amounts** | Upcoming payroll runs and totals | [Source] | [Cadence] | [Owner] | Reserve set-aside timing |
| **Receivables + confidence** | Money owed, each with a likelihood % | [Source] | [Cadence] | [Owner] | Which inflows to count on |
| **Contractor burn** | Ongoing contractor spend rate | [Source] | [Cadence] | [Owner] | Whether to pause/extend contracts |
| **Projected expenses** | Known upcoming outflows | [Source] | [Cadence] | [Owner] | What to defer if cash tightens |
| **Project margins** | Revenue minus cost per active project | [Source] | [Cadence] | [Owner] | Which projects to prioritize or renegotiate |
| **Pending deals** | Likely new revenue, weighted by confidence | [Source] | [Cadence] | [Owner] | Whether to invest ahead of close |
| **Revenue gap** | Shortfall between committed revenue and needs | [Source] | [Cadence] | [Owner] | Size of the hole to close |
| **Runway estimate** | Weeks/months of cash at current burn | [Source] | [Cadence] | [Owner] | How urgently to act |
| **Next-payroll risk** | Red/amber/green on covering the next run | [Source] | [Cadence] | [Owner] | Trigger for emergency measures |

## Data sources

*List each system feeding the dashboard and who controls access.*

- [Source] — [what it provides] — access owner: [name/role]
- [Source] — [what it provides] — access owner: [name/role]

## Refresh cadence

- **Overall dashboard refresh:** [e.g. every Monday AM, or daily]
- **Manual vs automated:** [which metrics are pulled automatically vs hand-updated]

## Owner and review

- **Dashboard owner:** [Owner]
- **Reviewed with:** [e.g. finance/bookkeeper] on [cadence]

---

*Keep it to metrics that change a decision. If nothing changes based on a number, cut it.*
