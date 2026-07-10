# /wrapup

## Purpose

Condense a long, sprawling AI conversation into a clean **restart packet** — a compact, structured summary you can carry into a fresh session (or hand to a teammate) so no context, decision, or open thread is lost. Long chats degrade: context windows fill, the model drifts, and the thread becomes hard to resume. `/wrapup` captures the signal and discards the noise so the next session starts sharp instead of cold.

## Use When

- A conversation has gotten long and you can feel context slipping.
- You are about to hit a context limit or want to start a fresh, faster session.
- You are switching tools or models mid-project (see [/model-router](model-router.md)).
- You are handing the thread to a teammate or to an implementation environment (see [/handoff-to-cowork](handoff-to-cowork.md)).
- You are ending a work session and want a clean pickup point for tomorrow.

## Copy-Paste Prompt

```
You are producing a RESTART PACKET that condenses this entire conversation into a
clean, structured summary I can paste into a fresh session to resume with zero
context loss. Read back through everything we've discussed and extract only the
signal. Be concise and concrete — no filler, no restating the obvious.

Produce the packet using exactly these sections and headers:

1. CURRENT OBJECTIVE — one or two sentences: what we are actually trying to
   accomplish right now.
2. CURRENT STATUS — where things stand this moment (in progress / blocked /
   awaiting decision / ready to build).
3. DECISIONS MADE — bulleted list of choices already locked in, each with a
   half-line of why.
4. IMPORTANT CONTEXT — facts, constraints, and background the next session must
   know to avoid re-deriving them.
5. FILES / SYSTEMS / DATA MENTIONED — every file path, tool, system, dataset, or
   integration referenced, with a note on its role.
6. OPEN QUESTIONS — unresolved questions that still need an answer.
7. RISKS / WATCHOUTS — anything that could go wrong, break, or mislead the next
   session.
8. NEXT 5 ACTIONS — the five most important concrete next steps, in priority
   order.
9. RECOMMENDED TOOL / MODEL FOR NEXT SESSION — which AI tool and model tier fits
   the next phase of work, and one line on why.
10. RESTART PROMPT — a self-contained prompt I can paste into a new session that
    re-establishes all of the above so the AI can continue seamlessly.

Keep the whole packet tight enough to fit comfortably at the top of a new
conversation. Do not invent details that were not in our conversation; if
something is unknown, say "unknown / to confirm."
```

## Output Format

```
# RESTART PACKET

## Current Objective
<1–2 sentences>

## Current Status
<state of play right now>

## Decisions Made
- <decision> — <why>
- <decision> — <why>

## Important Context
- <fact / constraint>
- <fact / constraint>

## Files / Systems / Data Mentioned
- <path or system> — <role>
- <path or system> — <role>

## Open Questions
- <question>
- <question>

## Risks / Watchouts
- <risk> — <mitigation or flag>

## Next 5 Actions
1. <action>
2. <action>
3. <action>
4. <action>
5. <action>

## Recommended Tool / Model for Next Session
<tool + tier> — <one-line why>

## Restart Prompt
> <self-contained prompt to paste into a fresh session>
```

## Notes

- Run `/wrapup` **before** you hit a wall, not after the model has already started forgetting. The earlier you snapshot, the cleaner the packet.
- The **Restart Prompt** at the bottom is the payload — you can paste just that block to resume, and keep the full packet as the record.
- Pairs with [/project-memory](project-memory.md): `/wrapup` snapshots a single conversation; `/project-memory` is the durable file you update across many.
- If the next phase is implementation, follow `/wrapup` with [/handoff-to-cowork](handoff-to-cowork.md) to add build-specific detail.
- Save meaningful restart packets alongside your project notes so you have a paper trail of how the work evolved.
