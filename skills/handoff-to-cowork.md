# /handoff-to-cowork

## Purpose

Move cleanly from a planning conversation into an implementation environment (Claude CoWork, Claude Code, Codex, or any agentic build tool) without losing context or introducing risk. `/handoff-to-cowork` produces a complete implementation brief: what to build, the constraints, what not to touch, data-safety notes, the first task, and a copy-paste prompt to kick off the build. It's the bridge between "we decided what to do" and "the agent is doing it safely."

## Use When

- Planning is done and it's time to actually build.
- You're moving from a chat interface into an agentic/coding environment.
- You want the implementation agent to start with full context and clear guardrails.
- A [/spec-first](spec-first.md) and [/roi-check](roi-check.md) are complete and greenlit.
- You need a documented brief so someone else could run the build instead of you.

## Copy-Paste Prompt

```
Produce a complete HANDOFF BRIEF that takes this work from planning into an
implementation environment (an agentic coding/build tool) cleanly and safely.
Assume the implementer starts with zero prior context and must not touch anything
outside the defined scope. Be explicit; ambiguity here becomes a mistake there.

Context so far:
<paste the spec, decisions, and relevant conversation here>

Fill in every section:

1. PROJECT NAME — short, clear name.
2. OBJECTIVE — what this build must accomplish, in one or two sentences.
3. BUSINESS CONTEXT — why it matters, generalized (no confidential specifics).
4. CURRENT STATE — what exists today that the build starts from.
5. DESIRED END STATE — what "done and working" looks like.
6. FILES / FOLDERS / SYSTEMS INVOLVED — everything the implementer will touch or
   depend on, with each item's role.
7. CONSTRAINTS — technical, stylistic, and scope limits that must be respected.
8. DO-NOT-TOUCH AREAS — files, systems, data, and behavior that must be left
   alone. Be specific.
9. DATA SAFETY NOTES — sensitive data, account/environment rules, and anything the
   implementer must never expose or export (align with /cleanroom).
10. FIRST IMPLEMENTATION TASK — the single first concrete step to take.
11. ACCEPTANCE CRITERIA — testable conditions that define success.
12. TEST PLAN — how to verify the work actually works.
13. COMPLETION DEFINITION — the unambiguous line where this is "done."
14. UNRESOLVED QUESTIONS — anything still open that the implementer must confirm
    before proceeding.
15. IMPLEMENTATION PROMPT — a self-contained prompt to paste into the build
    environment that sets it up with all of the above and tells it exactly how to
    start.

Keep the brief tight but complete. The implementer should never have to guess.
```

## Output Format

```
# HANDOFF BRIEF: <project name>

Objective          : <1–2 sentences>
Business Context   : <generalized why>
Current State      : <starting point>
Desired End State  : <done and working>

Files / Folders / Systems Involved
- <path or system> — <role>

Constraints
- <constraint>

Do-Not-Touch Areas
- <off-limits file/system/behavior>

Data Safety Notes
- <sensitive data / account rules / export limits>

First Implementation Task : <single first step>

Acceptance Criteria
- [ ] <testable condition>

Test Plan
- <how to verify>

Completion Definition : <unambiguous "done" line>

Unresolved Questions
- <open question to confirm first>

## Implementation Prompt
> <self-contained prompt to paste into the build environment>
```

## Notes

- **Do-Not-Touch Areas** and **Data Safety Notes** are what keep an autonomous agent from causing damage. Never ship a handoff without them.
- Run [/cleanroom](cleanroom.md) before the handoff so data-safety notes are grounded in a real check, not a guess.
- Build on the outputs of [/spec-first](spec-first.md) (scope) and [/decision-log](decision-log.md) (why) rather than re-deriving them.
- The **Implementation Prompt** is the deliverable the agent actually consumes — make it self-contained so it works even if the rest of the brief is lost.
- If the build spans multiple sessions, capture progress with [/wrapup](wrapup.md) and keep [/project-memory](project-memory.md) current.
