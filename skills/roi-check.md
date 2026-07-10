# /roi-check

## Purpose

Evaluate whether a proposed AI project, tool, or workflow is actually worth doing **before** you invest time and attention. `/roi-check` weighs the cost of the problem against the cost to build, scores how much the project matters to the survival of the business, and returns a clear recommendation — build now, prototype, defer, kill, use an existing tool, or write a manual SOP first. It exists to protect your scarcest resource: focus.

## Use When

- Someone proposes building or buying an AI tool, automation, or workflow.
- You have a backlog of "cool ideas" and need to decide what's real.
- You just finished a [/spec-first](spec-first.md) and want a go/no-go call.
- You feel the pull to build something because it's interesting, not because it's needed.
- Cash, time, or attention is tight and every project must earn its slot (pair with [/survival-filter](survival-filter.md)).

## Copy-Paste Prompt

```
Act as a pragmatic operator who is skeptical of building things for their own
sake. Evaluate whether the project below is worth doing. Be honest even if the
answer is "don't build this." Do not inflate benefits or hand-wave costs.

Here is the project:
<paste the project idea or the completed spec here>

Fill in every section:

1. PROPOSED PROJECT — restate what's being proposed in one clear sentence.
2. BUSINESS PROBLEM — the actual problem this solves. If you can't name a real
   problem, say so.
3. SURVIVAL VALUE SCORE — score 0–5 how much this matters to the survival or core
   health of the business (0 = nice-to-have, 5 = directly protects revenue,
   payroll, cash, or a key client). Justify the number in one line.
4. CURRENT COST OF PROBLEM — what the problem costs today in time, money, risk, or
   missed opportunity if we do nothing.
5. BUILD COST — realistic cost to build and maintain: effort, time, tools, and
   ongoing upkeep. Include the hidden maintenance tail.
6. EXPECTED BENEFIT — the realistic payoff, quantified where possible.
7. RISKS — what could make this fail, backfire, or create new work.
8. RECOMMENDATION — choose ONE and justify it:
   - BUILD NOW
   - PROTOTYPE (small test first)
   - DEFER (right idea, wrong time)
   - KILL (not worth it)
   - USE EXISTING TOOL (buy/adopt instead of build)
   - MANUAL SOP FIRST (solve with a process before automating)
8. SMALLEST USEFUL TEST — the cheapest experiment that would tell us whether this
   is worth pursuing further.

Bias toward the cheapest path that reduces uncertainty. Building is the last
resort, not the first.
```

## Output Format

```
# ROI CHECK: <project name>

Proposed Project     : <one sentence>
Business Problem     : <...>
Survival Value Score : <0–5> — <justification>
Current Cost of Problem : <time / money / risk today>
Build Cost           : <effort + maintenance tail>
Expected Benefit     : <quantified payoff>
Risks                : - <risk>
                       - <risk>

RECOMMENDATION       : <BUILD NOW | PROTOTYPE | DEFER | KILL |
                        USE EXISTING TOOL | MANUAL SOP FIRST>
Why                  : <one paragraph>

Smallest Useful Test : <cheapest experiment to reduce uncertainty>
```

## Notes

- A **Survival Value Score** of 0–2 with a high build cost is almost always a KILL or DEFER. Don't argue with the math.
- "USE EXISTING TOOL" and "MANUAL SOP FIRST" are wins, not failures — they get you the outcome without the build-and-maintain tax.
- The **Smallest Useful Test** matters even for a BUILD NOW: run it first to de-risk.
- Feed the survival dimension into [/survival-filter](survival-filter.md) when you're ranking many projects at once.
- Run this after [/spec-first](spec-first.md), not before — you can't evaluate ROI on a fuzzy idea.
