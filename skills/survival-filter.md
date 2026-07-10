# /survival-filter

## Purpose

Rank work honestly when cash-flow, revenue, or execution pressure is real. When the pressure is on, "interesting" and "important" stop being the same thing. `/survival-filter` scores every candidate project against what actually keeps the business alive — making payroll, bringing in revenue, protecting cash and margin, delivering for clients, reducing distraction and risk — and returns a ranked list so you spend your limited energy on what matters most.

## Use When

- Cash is tight and you can only do a few things — you need to choose well.
- The backlog is bigger than the capacity and everything feels urgent.
- You're triaging projects and need a hard, survival-first ranking.
- A [/roi-check](roi-check.md) produced survival scores you now want to compare across many projects.
- Distraction is high and you need to cut anything that doesn't earn its slot.

## Copy-Paste Prompt

```
Act as a hard-nosed operator ranking work under real financial and execution
pressure. Score each candidate below against survival criteria and rank them.
Be blunt. Things that are interesting but don't help the business survive should
rank low, and say so.

Candidates:
<list the projects/tasks under consideration>

Score EACH candidate 0–3 on every criterion (0 = no effect, 3 = strong direct
effect):
A. Helps make payroll
B. Brings in revenue
C. Improves cash-flow visibility
D. Reduces margin leakage
E. Improves client delivery
F. Reduces executive distraction
G. Reduces legal / IP / client risk
H. Produces reusable infrastructure

For each candidate, sum the scores for a TOTAL (0–24). Then output a ranking
table sorted high-to-low by total. For the top items, add a one-line "why this
ranks here." Flag anything scoring low on A–D but consuming significant effort as
a candidate to CUT or DEFER.

End with a RECOMMENDED FOCUS: the 1–3 items to do now, and what to explicitly
stop or shelve.
```

## Output Format

```
# SURVIVAL FILTER

Scoring: each criterion 0–3. A=Payroll  B=Revenue  C=Cash visibility
D=Margin  E=Client delivery  F=Focus  G=Risk  H=Reusable infra

| Rank | Project | A | B | C | D | E | F | G | H | Total | Why it ranks here |
|------|---------|---|---|---|---|---|---|---|---|-------|-------------------|
| 1 | <project> | 3 | 3 | 2 | 1 | 2 | 1 | 1 | 0 | 13 | <why> |
| 2 | <project> | ... | ... | ... | ... | ... | ... | ... | ... | .. | <why> |

## Recommended Focus (do now)
1. <project>
2. <project>

## Stop / Shelve
- <low-survival, high-effort item> — <why cut>
```

## Notes

- Criteria **A–D** (payroll, revenue, cash visibility, margin) are the survival core. When in doubt, weight these heaviest.
- A high total driven only by **H (reusable infrastructure)** is a trap under acute pressure — infrastructure is valuable but rarely makes this week's payroll.
- Be willing to act on the **Stop / Shelve** list. The filter only works if you actually cut.
- Pairs with [/roi-check](roi-check.md) (per-project depth) and [/forecast-check](forecast-check.md) (the cash reality driving the pressure).
- Keep all figures generalized — never encode real payroll, revenue, or client specifics in the prompt.
