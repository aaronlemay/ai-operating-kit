# Checklist Cards — The Core Four

One-page, print-friendly checklists for the four skills that carry most of the value. Print this page, cut along the dividers, and keep the cards near your desk (or pin them in your team channel).

Each card is the **distilled version** of a skill — enough to run it from memory. For the full copy-paste prompt, open the matching file in [`skills/`](../skills/).

> Print tip: use your browser or editor's "print to PDF" on this file. Landscape, "fit to page," margins normal. Each card is separated by a `— ✂ —` line.

---

## ✂ Card 1 — `/wrapup`  ·  Close a session cleanly

**Run when:** the conversation is long, context is degrading, or you're switching tools/sessions.

**Capture before you stop:**

- [ ] **Objective** — what are we actually trying to achieve?
- [ ] **Status** — where are we right now?
- [ ] **Decisions made** — and why
- [ ] **Important context** — facts the next session must know
- [ ] **Files / systems / data** mentioned
- [ ] **Open questions** — still unresolved
- [ ] **Risks / watchouts**
- [ ] **Next 5 actions** — concrete, ordered
- [ ] **Recommended tool/model** for the next session
- [ ] **Restart prompt** — paste-ready to resume cold

**Done when:** someone (or you, tomorrow) could resume with zero re-explaining.

→ Full skill: [`skills/wrapup.md`](../skills/wrapup.md)

— ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ —

## ✂ Card 2 — `/spec-first`  ·  Clarity before building

**Run when:** you (or the team) are tempted to start building, automating, or coding.

**Answer honestly:**

- [ ] **Business problem** — what breaks if we don't solve this?
- [ ] **User** — who is this for?
- [ ] **Workflow improved** — what gets better?
- [ ] **Current painful process** — how is it done today?
- [ ] **Smallest useful version** — the least that delivers value
- [ ] **Do-NOT-build list** — everything we're consciously skipping
- [ ] **Data needed** / **Data to avoid**
- [ ] **Existing systems** — what can we reuse?
- [ ] **ROI expectation** — worth it?
- [ ] **Risks** and **acceptance criteria**
- [ ] **First build step**

**Red flag:** if the smallest useful version is "do it manually once," do that first.

→ Full skill: [`skills/spec-first.md`](../skills/spec-first.md)

— ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ —

## ✂ Card 3 — `/roi-check`  ·  Is this worth doing?

**Run when:** a meaningful build or spend of time/money is on the table.

**Score it:**

- [ ] **Proposed project** — one sentence
- [ ] **Business problem** it solves
- [ ] **Survival value** (1–5) — does it help payroll / revenue / runway?
- [ ] **Current cost of the problem** — time/money bleeding now
- [ ] **Build cost** — realistic, not optimistic
- [ ] **Expected benefit** — concrete
- [ ] **Risks**
- [ ] **Smallest useful test** — cheapest way to learn if it works

**Pick one recommendation:**
`build now` · `prototype` · `defer` · `kill` · `use existing tool` · `manual SOP first`

**Done when:** you have a defensible go/no-go, not a vibe.

→ Full skill: [`skills/roi-check.md`](../skills/roi-check.md)

— ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ — ✂ —

## ✂ Card 4 — `/cleanroom`  ·  Protect data before you paste

**Run when:** any client data, IP, source assets, telemetry, or credentials might touch an AI tool.

**Confirm before pasting anything:**

- [ ] **Project / client / company** — what are we working on?
- [ ] **Correct account / environment** — not a personal login
- [ ] **Allowed files** identified · **Forbidden files** identified
- [ ] **Client data** — permitted? consented?
- [ ] **Employee / contractor data** — handled correctly?
- [ ] **Source code / assets** — cleared to share?
- [ ] **Prompt logging & telemetry** — where does this go?
- [ ] **Consent / GDPR / privacy** — covered?
- [ ] **Contamination risk** — could this leak across clients/projects?
- [ ] **Export rules** — allowed to leave the environment?
- [ ] **Safest workflow** chosen

**Verdict:** **GO** only if every box is clear. Otherwise **NO-GO** and fix the gap first.

→ Full skill: [`skills/cleanroom.md`](../skills/cleanroom.md)

---

### Suggested flow (all four together)

```text
/spec-first  →  /roi-check  →  /cleanroom  →  build or hand off  →  /wrapup
```

Spec it, prove it's worth doing, protect the data, do the work, close cleanly.
