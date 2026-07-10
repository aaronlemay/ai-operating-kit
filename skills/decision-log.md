# /decision-log

## Purpose

Capture meaningful decisions and the reasoning behind them so future-you (and your team) don't re-litigate settled questions or forget why a path was chosen. `/decision-log` turns a conversation full of choices into a clean, durable table. The value isn't the decision — it's the **why**, the **alternatives rejected**, and the **follow-up**, which are exactly what memory loses first.

## Use When

- A conversation or meeting produced real choices worth remembering.
- You keep re-arguing the same points because nobody wrote down the last conclusion.
- You're closing out a work session and want a record of what was decided (pair with [/wrapup](wrapup.md)).
- You're maintaining [/project-memory](project-memory.md) and need the canonical-decisions section populated.
- An audit, retro, or handoff needs a trail of how the project got here.

## Copy-Paste Prompt

```
Extract every meaningful decision from the material below into a DECISION LOG.
Only include real decisions — choices that close off alternatives or commit
resources. Skip trivial or purely tactical notes. For each decision, capture WHY
it was made and what was rejected, because that's what we forget.

Source material:
<paste the conversation, meeting notes, or thread here>

Output a single Markdown table with these columns:
- Date — when the decision was made (use today's date if unstated).
- Decision — the choice, stated plainly.
- Reason — why this was chosen.
- Alternatives Rejected — the options considered and dropped.
- Risk — the main risk this decision carries.
- Follow-Up — the action or check this decision creates, and who should own it.

After the table, list any DECISIONS STILL PENDING — questions that were raised but
not resolved. Do not invent decisions that weren't actually made.
```

## Output Format

```
# DECISION LOG

| Date | Decision | Reason | Alternatives Rejected | Risk | Follow-Up |
|------|----------|--------|-----------------------|------|-----------|
| <YYYY-MM-DD> | <decision> | <why> | <options dropped> | <main risk> | <action + owner> |
| <YYYY-MM-DD> | <decision> | <why> | <options dropped> | <main risk> | <action + owner> |

## Decisions Still Pending
- <unresolved question>
- <unresolved question>
```

## Notes

- The **Alternatives Rejected** column is what stops you from reopening closed debates. Never leave it blank.
- Keep one running decision log per project rather than scattering them across chats — append, don't restart.
- Feed the log into [/project-memory](project-memory.md) under "canonical decisions" so it survives across sessions.
- Pairs naturally with [/task-ledger](task-ledger.md): decisions here often spawn tasks there via the Follow-Up column.
- Never record confidential specifics (names, figures, deal terms). Log the decision and its logic in generalized form.
