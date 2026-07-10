# Skills

**AI is not the job. AI is the leverage layer.**

This directory holds the reusable prompt protocols — "skills" — that make up the operating layer of the AI Operating Kit.

## What a "skill" is here

A skill in this kit is **not** code, a plugin, or an installed package. It is a **reusable prompt protocol**: a well-engineered instruction set that turns a fuzzy request ("help me figure out if this project is worth doing") into a repeatable, structured output ("a filled-in ROI table with a clear recommendation").

Each skill file contains:

- **Purpose** — what the skill is for.
- **Use When** — the moments it earns its keep.
- **Copy-Paste Prompt** — a complete, ready-to-run prompt in a fenced code block.
- **Output Format** — the exact structure the skill produces.
- **Notes** — guardrails, cross-links, and practical tips.

No Node, Python, npm, or package manager is required. Everything is Markdown you can read, edit, and paste.

## How to invoke a skill manually

1. Open the skill file (e.g. `roi-check.md`).
2. Copy everything inside the **Copy-Paste Prompt** fenced code block.
3. Paste it into any AI assistant — Claude, Claude Code, Claude CoWork, ChatGPT, or Codex.
4. Add your specific context underneath (the messy notes, the situation, the transcript).
5. Send. You get back the structured output described in **Output Format**.

That is the whole mechanism. A skill is a protocol you run by pasting, not software you install.

## Start with these four

If you do nothing else, wire these into your daily flow first:

1. **/wrapup** — never lose a long AI conversation again. Condense it into a clean restart packet.
2. **/spec-first** — stop yourself from building the wrong thing. Define before you build.
3. **/roi-check** — decide whether a project is even worth doing before you spend time on it.
4. **/cleanroom** — protect IP, client data, and account boundaries before anything leaves your hands.

Together these cover the four highest-leverage failure modes: lost context, premature building, wasted effort, and leaked data.

## Skill index

| Skill | One-line purpose |
| --- | --- |
| [/wrapup](wrapup.md) | Condense a long AI conversation into a clean restart packet. |
| [/spec-first](spec-first.md) | Define the problem and smallest useful version before building. |
| [/roi-check](roi-check.md) | Decide whether a proposed project is worth doing. |
| [/model-router](model-router.md) | Choose the right AI model/tool tier for the task. |
| [/cleanroom](cleanroom.md) | Protect IP, client data, telemetry, and account boundaries. |
| [/decision-log](decision-log.md) | Track meaningful decisions and the reasoning behind them. |
| [/task-ledger](task-ledger.md) | Turn messy work into specific, owned next actions. |
| [/handoff-to-cowork](handoff-to-cowork.md) | Move cleanly from planning chat to implementation environment. |
| [/survival-filter](survival-filter.md) | Rank work when cash-flow and execution pressure is real. |
| [/forecast-check](forecast-check.md) | Design or review a studio forecasting tool (decision-support only). |
| [/meeting-synthesis](meeting-synthesis.md) | Turn a messy meeting into structured signal and next actions. |
| [/project-memory](project-memory.md) | Maintain durable project memory across AI sessions. |

## How the skills connect

- **/spec-first** and **/roi-check** run before you build; **/handoff-to-cowork** runs when you're ready to build.
- **/wrapup** and **/project-memory** keep context alive across sessions; **/wrapup** is per-conversation, **/project-memory** is per-project.
- **/model-router** picks the tool; **/cleanroom** decides whether the work is even safe to run there.
- **/decision-log** and **/task-ledger** are the durable records that outlast any single chat.
- **/survival-filter** and **/forecast-check** apply when the pressure is financial and real.
- **/meeting-synthesis** feeds all of the above by extracting signal from the room.
