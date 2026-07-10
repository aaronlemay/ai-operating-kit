# Implementation Handoff

> **How to use:** Everything an implementation agent (or a teammate) needs to build a thing correctly without you hovering. Pairs with `/handoff-to-cowork`. Fill every section — the do-not-touch, data-safety, and acceptance sections are what keep a capable agent from doing damage. The final block is a copy-paste prompt to start the implementer. Be specific; ambiguity here becomes rework later.

- **Project:** [Project name]
- **Prepared by:** [Owner]
- **Date:** [YYYY-MM-DD]

---

## Objective

*The one thing this handoff asks the implementer to accomplish.*

[Objective in one or two sentences.]

## Business context

*Why this matters, briefly — enough for good judgment calls.*

[Context. Link the project brief if one exists.]

## Current state

*What exists today — code, files, data, behavior.*

[Describe the starting point. Include paths/repos.]

## Desired end state

*What "built" looks like when this is done.*

[Describe the target state concretely.]

## Files / folders / systems involved

- [Path or system] — [role in this task]
- [Path or system] — [role in this task]

## Constraints

*Technical, stylistic, or process rules the implementer must respect.*

- [e.g. match existing patterns / no new dependencies / Markdown-first, no build tools]
- [Constraint]

## Do-not-touch areas

*Explicitly off-limits. Changing these breaks things or exceeds scope.*

- [File / folder / system — why it's off-limits]
- [Area]

## Data safety notes

*Sensitive data rules for this task. Run the cleanroom checklist if client/confidential data is involved.*

- [What data may be used]
- [What must never be sent to AI tools / must stay redacted]

## First implementation task

*The single concrete starting action — small enough to begin immediately.*

[First task.]

## Acceptance criteria

*Testable conditions for "done and correct."*

- [ ] [Criterion]
- [ ] [Criterion]
- [ ] [Criterion]

## Test plan

*How the implementer verifies it works before calling it done.*

1. [Test / check]
2. [Test / check]

## Completion definition

*What must be true to consider this handoff fully complete.*

[e.g. All acceptance criteria pass, changes documented, owner notified.]

## Unresolved questions

*Known unknowns the implementer should flag or resolve, not guess.*

- [Question]
- [Question]

---

## Copy-paste implementation prompt

> ```
> You are implementing a change on [Project name].
>
> Objective: [objective].
> Current state: [current state].
> Desired end state: [desired end state].
> Files/systems involved: [paths].
> Constraints: [constraints].
> DO NOT TOUCH: [off-limits areas].
> Data safety: [rules — what must never be sent to AI / must stay redacted].
>
> Start with: [first implementation task].
> Definition of done: all acceptance criteria pass — [list them].
> Before making changes, confirm your plan and flag any unresolved question rather than guessing.
> ```
