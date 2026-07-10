# Model Routing Matrix

> **How to use:** Match the *kind* of task to the right model tier so you don't overpay for simple work or under-power hard reasoning. Pairs with `/model-router`. Tiers are generic on purpose — fill the "example model" notes with whatever you actually use. Escalate deliberately; the goal is the cheapest tier that reliably gets the job done. Revisit as pricing and models change.

- **Owner:** [Owner]
- **Last reviewed:** [YYYY-MM-DD]

---

## Tier glossary

- **Fast/cheap** — high-volume, low-stakes execution (e.g. a small/flash-class model)
- **Mid** — everyday drafting, structure, and summarizing (e.g. a mid-tier general model)
- **Frontier** — hardest reasoning, long-context, high-stakes output (e.g. a top-tier model)
- **Implementation/agent** — writes/edits code and runs multi-step tool work (e.g. an agentic coding tool)
- **Restricted/local** — sensitive or confidential data; runs where you control logging (e.g. a self-hosted/local model or an approved private tier)

---

| Task category | Recommended tier | Cheaper alternative | Escalate when | Stop-using when | Notes |
|---|---|---|---|---|---|
| **Simple execution** (reformat, tag, extract, short replies) | Fast/cheap | — (already lowest) | Output quality is inconsistent or the task hides real reasoning | You're batching thousands of calls — check per-call cost | Keep prompts tight; this tier rewards clear instructions |
| **Planning / structure** (outlines, breakdowns, drafts) | Mid | Fast/cheap for rough first passes | The plan needs deep trade-off analysis or long context | It's just formatting — drop to fast/cheap | Good default for most day-to-day work |
| **Long-context reasoning** (synthesize many docs, hard trade-offs) | Frontier | Mid with tight scoping | Stakes are high or the mid tier misses nuance | The context actually fits in a mid tier — save cost | Feed it the restart packet / project memory for grounding |
| **Implementation** (code, refactors, multi-step builds) | Implementation/agent | Mid for pseudo-code or review | The change touches many files or needs to run and verify | It's a one-liner you can do by hand faster | Give it a handoff doc (`/handoff-to-cowork`) |
| **Sensitive / confidential** (client data, source assets, personal data) | Restricted/local | — (do not trade down for cost) | Never trade safety for price here | Data can be fully redacted — then a standard tier is fine | Run the cleanroom checklist first; watch logging/telemetry |

---

*Tip: default to **Mid**, drop to **Fast/cheap** for volume, jump to **Frontier** only when reasoning or stakes demand it, and never let cost pressure push sensitive work off the **Restricted/local** tier.*
