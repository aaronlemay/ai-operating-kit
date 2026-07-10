# /model-router

## Purpose

Choose the right AI model and tool for the task in front of you — and stop overpaying (in cost, latency, or risk) by defaulting to the biggest model for everything. `/model-router` sorts the work into a category, recommends a model tier and tool, names a cheaper alternative, and tells you when to escalate up and when to stop using the expensive option. The goal is to match horsepower to the job.

## Use When

- You're unsure whether a task needs a frontier model or a fast, cheap one.
- Costs or latency are creeping up and you suspect you're over-provisioning.
- You're starting a new phase of work (planning vs. long reasoning vs. implementation) and the right tool changes.
- The work touches sensitive or client-confidential data and tool choice is a compliance question (pair with [/cleanroom](cleanroom.md)).
- You're setting a default policy for a team and want a simple routing rule.

## Copy-Paste Prompt

```
Act as an AI model/tool router. Given the task below, recommend the most
cost-effective tool and model tier that will do the job well — not the biggest
one by reflex. Optimize for the right amount of capability, not the maximum.

Task:
<describe the task, its stakes, data sensitivity, and any latency/cost limits>

First, classify the task into ONE primary category:
- SIMPLE EXECUTION — formatting, extraction, short rewrites, routine transforms.
- PLANNING & STRUCTURE — outlines, specs, breaking work into steps, decision framing.
- LONG-CONTEXT REASONING — synthesizing large documents, deep analysis, nuanced judgment.
- IMPLEMENTATION — writing/editing code, running an agent, multi-step tool use.
- SENSITIVE / CLIENT-CONFIDENTIAL — anything with IP, client data, or privacy exposure.

Then produce:

1. CATEGORY — the category you chose and one line of why.
2. RECOMMENDED MODEL / TOOL — the tier and tool that fits. Use generic tiers:
   fast/cheap tier, mid tier, frontier tier, implementation/agent tier, or
   restricted/local tier. You may name examples (e.g. Claude Haiku / Sonnet /
   Opus, GPT tiers) but do not depend on a specific SKU.
3. WHY — why this tier is the right match for the task.
4. CHEAPER ALTERNATIVE — a lower-cost option that would still be acceptable, and
   what you'd trade away to use it.
5. WHEN TO ESCALATE — the signal that means "move up to a stronger model."
6. WHEN TO STOP USING THE EXPENSIVE MODEL — the signal that you're over-provisioned
   and should drop down.
7. RISKS OF WRONG TOOL CHOICE — what goes wrong if this is routed to the wrong
   tier (bad output, wasted cost, or a data/compliance breach).

Default to the cheapest tier that clears the quality bar. Reserve the frontier
and implementation tiers for tasks that genuinely need them.
```

## Output Format

```
# MODEL ROUTER

Category                 : <one of the five> — <why>
Recommended Model / Tool : <tier + tool>
Why                      : <fit rationale>
Cheaper Alternative      : <lower-cost option> — <what you trade away>
When to Escalate         : <signal to move up>
When to Stop Using Expensive Model : <signal you're over-provisioned>
Risks of Wrong Tool Choice : <bad output / wasted cost / data exposure>
```

### Quick routing reference

| Category | Default tier | Typical use |
| --- | --- | --- |
| Simple execution | Fast/cheap tier | Formatting, extraction, routine rewrites |
| Planning & structure | Mid tier | Specs, outlines, breaking down work |
| Long-context reasoning | Frontier tier | Large-doc synthesis, nuanced judgment |
| Implementation | Implementation/agent tier | Code, multi-step tool use, agents |
| Sensitive / client-confidential | Restricted/local tier | IP, client data, privacy-bound work |

## Notes

- Use **generic tiers** as the durable interface. Model names change; the tier logic doesn't. Examples (Claude Haiku/Sonnet/Opus, GPT tiers) are illustrative, not hardcoded policy.
- The two most-ignored outputs are **When to Stop Using the Expensive Model** and **Cheaper Alternative** — that's where the savings live.
- For **Sensitive / Client-Confidential** work, tool choice is a safety decision, not just a cost one. Run [/cleanroom](cleanroom.md) before routing.
- When you switch tiers mid-project, capture the state with [/wrapup](wrapup.md) so the new session starts clean.
