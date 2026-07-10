# Decision Ledger

> **How to use:** A durable log of decisions and *why* you made them, so future-you (and your team, and the AI) don't relitigate settled questions or forget the reasoning. Pairs with `/decision-log`. Add a row the moment a real decision is made. Keep it append-only — don't delete old rows; if a decision changes, add a new row that references it.

- **Project:** [Project name]
- **Owner:** [Owner]
- **Last updated:** [YYYY-MM-DD]

---

| Date | Decision | Reason | Alternatives Rejected | Risk | Follow-Up |
|---|---|---|---|---|---|
| 2026-02-14 | Ship a read-only dashboard first, editing later | Get value in front of users fast; editing adds weeks of scope | Full CRUD in v1; buy an off-the-shelf tool | Users may ask for edits sooner than planned | Revisit editing after 2 weeks of usage data |
| 2026-02-20 | Standardize weekly status on the task-ledger template | One format cuts hand-off confusion across tools | Free-form notes; a heavier PM tool | Team resists new format at first | Check adoption at next retro |
| [YYYY-MM-DD] | [Decision] | [Reason] | [What you considered and passed on] | [What could go wrong] | [Next check-in or action] |
| [YYYY-MM-DD] | [Decision] | [Reason] | [Alternatives rejected] | [Risk] | [Follow-up] |
| [YYYY-MM-DD] | [Decision] | [Reason] | [Alternatives rejected] | [Risk] | [Follow-up] |
| [YYYY-MM-DD] | [Decision] | [Reason] | [Alternatives rejected] | [Risk] | [Follow-up] |

---

*Tip: a decision worth logging is one you'd be annoyed to re-argue in a month. Small reversible choices don't need a row; anything with cost, risk, or lock-in does.*
