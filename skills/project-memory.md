# /project-memory

## Purpose

Maintain durable project memory that survives across AI sessions, tools, and weeks of elapsed time. Chats are disposable; projects are not. `/project-memory` is the single living document that holds the project's goal, canonical decisions, active assumptions, current architecture, key files, known risks, task list, parking lot, and the latest restart prompt. It's the file you open first to remember where things stand — and the one you paste in to bring any AI up to speed instantly.

## Use When

- A project spans multiple AI sessions or multiple tools and you keep re-explaining it.
- You're starting a work session and need to reload full project context.
- You just finished a session and want to fold new decisions/tasks into the durable record (pair with [/wrapup](wrapup.md)).
- You're onboarding a teammate or a new AI agent to an in-flight project.
- Assumptions or architecture have drifted and you need one authoritative source of truth.

## Copy-Paste Prompt

```
Create or update the durable PROJECT MEMORY document for this project. This is the
single source of truth that persists across AI sessions. Merge the new information
below into the existing memory (if I've pasted a prior version), keeping it
current, deduplicated, and concise. Don't let it bloat — prune stale items and
promote what matters.

Existing project memory (if any):
<paste prior version, or "none yet">

New information from this session:
<paste latest decisions, changes, notes>

Produce the full updated memory using exactly these sections:

1. PROJECT GOAL — what this project is ultimately for, in one or two sentences.
2. CANONICAL DECISIONS — the settled decisions that shape everything else, each
   with a half-line of why. These are load-bearing and shouldn't be reopened
   lightly.
3. ACTIVE ASSUMPTIONS — what we're currently assuming to be true, flagged as
   assumptions so they can be challenged.
4. CURRENT ARCHITECTURE — how the thing is structured right now (systems,
   components, flow), at a readable altitude.
5. KEY FILES — the files, docs, or systems that matter, each with its role.
6. KNOWN RISKS — the live risks and watchouts, with any mitigation.
7. CURRENT TASK LIST — the active tasks, in priority order.
8. PARKING LOT — good ideas and open threads deliberately deferred, so they're
   captured but not cluttering the active list.
9. LATEST RESTART PROMPT — a self-contained prompt that re-establishes full context
   so any AI session can continue seamlessly from here.

Keep it tight and authoritative. If something conflicts between old and new, favor
the new and note what changed.
```

## Output Format

```
# PROJECT MEMORY: <project name>
_Last updated: <YYYY-MM-DD>_

## Project Goal
<1–2 sentences>

## Canonical Decisions
- <decision> — <why>

## Active Assumptions
- <assumption — flagged as assumption>

## Current Architecture
<systems / components / flow at readable altitude>

## Key Files
- <path or system> — <role>

## Known Risks
- <risk> — <mitigation>

## Current Task List
1. <task>
2. <task>

## Parking Lot
- <deferred idea / open thread>

## Latest Restart Prompt
> <self-contained prompt to resume the project in any AI session>
```

## Notes

- Keep **one** project-memory file per project and update it in place. Its value is being the single authoritative source — many copies means none is trusted.
- Update at the **end** of each session: run [/wrapup](wrapup.md) on the conversation, then merge its output into project memory.
- The **Latest Restart Prompt** is the fast path — paste it to boot any new session; keep the full memory as the deep reference.
- Feed [/decision-log](decision-log.md) into "Canonical Decisions" and [/task-ledger](task-ledger.md) into "Current Task List" so the memory stays in sync with your working records.
- **Active Assumptions** and **Parking Lot** are the two most-neglected sections and the highest-value: they catch drift and preserve good ideas you'd otherwise lose.
- Keep all content generalized — no confidential company, client, or personal specifics in a document meant to be pasted across tools.
