# /meeting-synthesis

## Purpose

Turn a messy meeting transcript, a page of scrambled notes, or a rambling recap into useful, structured signal. `/meeting-synthesis` separates what was said from what matters: the decisions, the opportunities, the risks, the follow-ups, and the relationship context — plus a clean list of next actions. It's how a chaotic conversation becomes something you can actually run on.

## Use When

- You have a raw transcript or notes and need the signal, fast.
- A meeting produced decisions and follow-ups that are scattered across the recording.
- You want a shareable summary that respects everyone's time.
- You need to feed follow-ups into [/task-ledger](task-ledger.md) or decisions into [/decision-log](decision-log.md).
- You're tracking a relationship or account and want the context notes captured, not lost.

## Copy-Paste Prompt

```
Turn the messy meeting material below into clean, structured signal. Separate what
was merely discussed from what actually matters. Be concise and specific. If
something is ambiguous, note it rather than guessing at intent.

Meeting material (transcript or notes):
<paste here>

Produce these sections:

1. EXECUTIVE SUMMARY — 3–5 sentences: what this meeting was about and what came of
   it.
2. KEY SIGNALS — the important things surfaced: shifts, concerns, intentions, or
   changes in direction worth noting.
3. DECISIONS — decisions actually made, each with the reason if stated.
4. OPPORTUNITIES — openings, ideas, or possibilities worth pursuing.
5. RISKS — concerns, red flags, or things that could go wrong.
6. FOLLOW-UPS — commitments and to-dos, with owner and timing where stated.
7. RELATIONSHIP / CONTEXT NOTES — interpersonal or account context worth
   remembering (tone, dynamics, sensitivities) — generalized, no private detail.
8. NEXT ACTIONS — the concrete next steps, in priority order.

Keep confidential specifics out of the summary — generalize names, figures, and
sensitive details. Do not fabricate decisions or commitments that weren't made.
```

## Output Format

```
# MEETING SYNTHESIS: <topic / date>

## Executive Summary
<3–5 sentences>

## Key Signals
- <signal>

## Decisions
- <decision> — <reason>

## Opportunities
- <opportunity>

## Risks
- <risk>

## Follow-Ups
- <commitment> — <owner> — <timing>

## Relationship / Context Notes
- <generalized context worth remembering>

## Next Actions
1. <action>
2. <action>
```

## Notes

- **Key Signals** is what separates this from a plain summary — it's the reading-between-the-lines layer. Push for the shifts and intentions, not just the facts.
- Route **Follow-Ups** and **Next Actions** into [/task-ledger](task-ledger.md), and **Decisions** into [/decision-log](decision-log.md), so the meeting produces durable records.
- Keep **Relationship / Context Notes** generalized and respectful — capture dynamics without recording private or sensitive personal detail.
- Never paste a transcript containing confidential company, client, or personal specifics into an unvetted tool — run [/cleanroom](cleanroom.md) first and redact.
- For a running account or project, fold the important context into [/project-memory](project-memory.md) so it persists.
