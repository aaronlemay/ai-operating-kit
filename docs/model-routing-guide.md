# Model Routing Guide

**AI is not the job. AI is the leverage layer.**

Not every task deserves the most powerful model, and not every task can safely run in a general-purpose one. Model routing is the discipline of matching each piece of work to the right tier — by capability, cost, and sensitivity. Done well, it cuts your AI spend substantially while improving results, because you stop asking cheap models to do frontier work and stop paying frontier prices for cheap work.

This guide gives you a decision framework and task examples per tier. Use the **`/model-router`** skill to apply it in the moment.

## The tiers

Vendors and model names change constantly; the tiers do not. Think in terms of the job a tier does, then map it to whatever your vendor currently offers.

| Tier | Character | Rough use |
| --- | --- | --- |
| **Cheap / fast** | Small, fast, inexpensive models | High volume, low stakes, well-defined |
| **Mid-tier** | Balanced capability and cost | The everyday workhorse |
| **Frontier** | Largest, most capable, most expensive | Hard reasoning, high stakes |
| **Implementation** | Coding- and tool-optimized agents | Building, editing, running code |
| **Restricted / sensitive** | Isolated, controlled environments | Confidential or regulated data |

Example generic mappings: a "cheap" tier is your vendor's small/fast model; "mid-tier" is the standard model most people default to; "frontier" is the flagship reasoning model; "implementation" is a coding-focused agent or IDE integration; "restricted" is an enterprise or on-premise deployment with controlled retention. Named models move between these over time — route by the job, not the brand.

## The decision framework

Ask four questions, in order:

**1. Is the data sensitive or regulated?**
If yes, route to the **restricted / sensitive** tier first, regardless of the task. Confidential client material, personal data, pre-release IP, or anything covered by a strict client agreement goes into a controlled environment (see `ai-chain-of-custody.md` and `/cleanroom`). Sensitivity overrides everything below.

**2. Does the task involve building, editing, or running code or tools?**
If yes, use the **implementation** tier — a coding-optimized agent that can read a repo, make edits, and run commands. Don't do real implementation work in a chat-only model; you'll fight the interface.

**3. How hard is the reasoning, and how high are the stakes?**
- Trivial and well-defined → **cheap / fast**.
- Normal knowledge work → **mid-tier**.
- Genuinely hard reasoning, or a decision where being wrong is expensive → **frontier**.

**4. What's the volume?**
High-volume, repetitive tasks push you down a tier for cost, even if each instance is moderately complex — because the total spend, not the per-call quality, dominates. A one-off strategic analysis pushes you up a tier; being right once is worth more than the token cost.

## Task examples per tier

**Cheap / fast**
- Classifying or tagging large batches of items
- Reformatting, cleanup, and simple extraction
- First-pass summaries of low-stakes material
- Quick lookups and rephrasing
- Routing and triage before deeper work

**Mid-tier (the default)**
- Drafting emails, briefs, and documentation
- Everyday summarization and synthesis
- Meeting notes and standard analysis
- Most `/wrapup` and `/meeting-synthesis` work
- The bulk of daily executive and operator tasks

**Frontier**
- Strategic analysis where the conclusion drives a real decision
- Hard multi-step reasoning and tradeoff analysis
- Reviewing a critical spec for what's missing (`/spec-first` on a high-stakes build)
- Ambiguous problems where a mid-tier model plausibly gives a confident wrong answer
- `/roi-check` and `/forecast-check` on decisions with money on the line

**Implementation**
- Writing, editing, and refactoring code
- Running and debugging tools and scripts
- Agentic multi-step tasks that touch a filesystem or APIs
- Work handed off via `/handoff-to-cowork` that requires actual building

**Restricted / sensitive**
- Anything with client data under a strict agreement
- Personal / regulated data (privacy obligations apply — see `ai-chain-of-custody.md`)
- Pre-release source assets and high-value IP
- Work that must be provably isolated (`/cleanroom`-verified)

## Common routing mistakes

- **Frontier-by-default.** Paying flagship prices to reformat a list. Most work is mid-tier.
- **Cheap-for-decisions.** Trusting a small model on a call that's expensive to get wrong. Stakes buy you a tier.
- **Chat-for-code.** Doing implementation in a conversational model and copy-pasting all day instead of using an implementation agent.
- **Ignoring sensitivity.** Routing by capability and forgetting that the data should never have been in that tool at all. Sensitivity is the first question, not an afterthought.

## Using `/model-router`

`/model-router` walks the four questions above and recommends a tier for the task in front of you, flagging when sensitivity should override your instinct. Reach for it whenever you're about to start non-trivial AI work, and especially before any high-volume run — that's where routing to the wrong tier gets expensive fastest.

Route deliberately, and the same AI budget does noticeably more.
