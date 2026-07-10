# /spec-first

## Purpose

Stop yourself (or an eager AI) from jumping into build mode before the problem is understood. `/spec-first` forces a short, disciplined spec: what problem we're actually solving, for whom, what the smallest useful version is, and — just as importantly — what we are **not** going to build. Most wasted AI effort comes from building the wrong thing fast. This skill spends ten minutes to save ten hours.

## Use When

- You (or a collaborator) are reaching for code, automation, or a tool before the problem is clear.
- Someone says "let's just build a quick tool that…" and you can feel scope creep loading.
- You want a shared, written definition of done before work starts.
- You are about to run [/roi-check](roi-check.md) and need a crisp spec to evaluate.
- A stakeholder request is vague and you need to pin it down before committing time.

## Copy-Paste Prompt

```
Do NOT propose a solution, write code, or design anything yet. First, help me
write a tight SPEC so we build the right thing. Interrogate the idea below and
fill in every section. Where I haven't given you enough, ask me the specific
question needed to complete that section rather than guessing.

Here is the idea:
<paste the raw idea / request here>

Produce the spec using exactly these sections:

1. BUSINESS PROBLEM — the real problem in plain language. Not the feature — the
   pain it removes or the money/time it saves.
2. USER — who specifically will use or benefit from this. Be concrete (role, not
   "everyone").
3. WORKFLOW IMPROVED — the workflow or decision this changes, and how it changes.
4. CURRENT PAINFUL PROCESS — how this is handled today, including the annoying
   manual steps.
5. SMALLEST USEFUL VERSION — the thinnest version that delivers real value. If it
   feels ambitious, cut it in half.
6. DO-NOT-BUILD LIST — features, polish, and edge cases explicitly out of scope
   for now. Be aggressive here.
7. DATA NEEDED — the data or inputs required for this to work.
8. DATA TO AVOID — sensitive, confidential, or out-of-scope data that must NOT be
   pulled in (see /cleanroom).
9. EXISTING SYSTEMS — tools, files, or systems this must fit into or reuse rather
   than reinvent.
10. ROI EXPECTATION — the expected payoff in time saved, revenue, risk reduced, or
    clarity gained.
11. RISKS — what could make this fail, mislead, or create new problems.
12. ACCEPTANCE CRITERIA — the concrete, testable conditions that mean "this works."
13. FIRST BUILD STEP — the single first action to take once the spec is approved.

Keep it lean and honest. A good spec makes the smallest useful version obvious.
```

## Output Format

```
# SPEC: <short name>

1. Business Problem     — <...>
2. User                 — <...>
3. Workflow Improved     — <...>
4. Current Painful Process — <...>
5. Smallest Useful Version — <...>
6. Do-Not-Build List
   - <out of scope item>
   - <out of scope item>
7. Data Needed          — <...>
8. Data to Avoid        — <...>
9. Existing Systems     — <...>
10. ROI Expectation     — <...>
11. Risks
    - <risk>
12. Acceptance Criteria
    - [ ] <testable condition>
    - [ ] <testable condition>
13. First Build Step    — <single next action>
```

## Notes

- The **Do-Not-Build List** is the most valuable section. If it's empty, you haven't scoped hard enough.
- If the smallest useful version still feels big, run the prompt again and ask it to halve the scope.
- Feed the finished spec straight into [/roi-check](roi-check.md) to decide whether to build at all, then into [/handoff-to-cowork](handoff-to-cowork.md) when it's time to implement.
- A spec is cheap to change and expensive to skip. Write it down even when it feels obvious — the act of writing exposes the assumptions.
- Cross-check **Data to Avoid** against [/cleanroom](cleanroom.md) before any data touches an AI tool.
