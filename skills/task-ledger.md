# /task-ledger

## Purpose

Turn messy, half-formed work — a rambling chat, a brain dump, a meeting's worth of "we should…" — into a clean list of **specific next actions** with owners, status, and blockers. `/task-ledger` doesn't just list tasks; it forces each one down to the single next physical action, so nothing stays vague enough to stall.

## Use When

- A conversation or meeting generated a pile of loose to-dos.
- You have a backlog that's really a fog — you can't tell what to do next.
- You're closing a session and want an actionable pickup list (pair with [/wrapup](wrapup.md)).
- A [/meeting-synthesis](meeting-synthesis.md) produced follow-ups that need structuring.
- Work is stalling and you suspect the real problem is undefined next actions.

## Copy-Paste Prompt

```
Turn the messy material below into a clean TASK LEDGER. For every real piece of
work, define the single concrete NEXT ACTION — the next physical thing someone
does, specific enough to start without thinking. Break vague items down until
they're actionable. Surface blockers explicitly.

Source material:
<paste the conversation, notes, or brain dump here>

Output a single Markdown table with these columns:
- Priority — P1 (now) / P2 (soon) / P3 (later).
- Task — the outcome, stated plainly.
- Owner — who's responsible (use "unassigned" if unknown).
- Status — not started / in progress / blocked / done.
- Next Action — the single concrete next step to move it forward.
- Blocker — what's stopping it, if anything (blank if none).
- Due / Timing — deadline or timing window (use "no date" if unstated).

Sort by priority. After the table, list ANY ITEMS TOO VAGUE TO ACTION — things
that need clarification before they can become tasks. Do not pad the list with
busywork; only include real work.
```

## Output Format

```
# TASK LEDGER

| Priority | Task | Owner | Status | Next Action | Blocker | Due / Timing |
|----------|------|-------|--------|-------------|---------|--------------|
| P1 | <task> | <owner> | <status> | <next action> | <blocker> | <due/timing> |
| P2 | <task> | <owner> | <status> | <next action> | <blocker> | <due/timing> |
| P3 | <task> | <owner> | <status> | <next action> | <blocker> | <due/timing> |

## Items Too Vague to Action
- <needs clarification before it becomes a task>
```

## Notes

- The **Next Action** column is the whole point. If it isn't the next physical thing to do, push the model to make it concrete.
- **Blocker** turns silent stalls into visible problems — always fill it in when work isn't moving.
- Use it as a living ledger: update status in place rather than regenerating from scratch each time.
- Priorities should reflect real stakes — run [/survival-filter](survival-filter.md) when cash or execution pressure should drive the ranking.
- Follow-ups from [/decision-log](decision-log.md) and [/meeting-synthesis](meeting-synthesis.md) both flow cleanly into this ledger.
