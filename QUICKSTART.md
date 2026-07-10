# Quickstart — 15 Minutes to Working

This gets you from zero to real value in about 15 minutes. You'll install the kit, then run it on one real project.

> **Rule of thumb:** don't read the whole kit first. Install it, then run the four core skills on something real. Understanding comes from use.

---

## Before You Start (1 min)

You need:
- A terminal and `git` (for the script install) — or just the ability to copy files.
- Access to any AI assistant: Claude, Claude Code, Claude CoWork, ChatGPT, or Codex.
- One real project or decision you're currently working on.

---

## Step 1 — Clone the Repo (2 min)

```bash
git clone https://github.com/YOURNAME/ai-operating-kit.git
cd ai-operating-kit
```

---

## Step 2 — Copy CLAUDE.md into Your Project (1 min)

`CLAUDE.md` is the operating contract for your AI assistant.

```bash
./scripts/install.sh /path/to/your/project
```

Or manually:

```bash
cp CLAUDE.md /path/to/your/project/CLAUDE.md
```

If you use ChatGPT, paste `CLAUDE.md` into Custom Instructions instead.

---

## Step 3 — Copy the Skills (1 min)

The script in Step 2 already copied `skills/` and `templates/`. If you're going manual and want just the essentials:

```bash
cp skills/{wrapup,spec-first,roi-check,cleanroom}.md /path/to/your/project/skills/
```

---

## Step 4 — Start with `/wrapup` (2 min)

If you're mid-project or coming off a long AI session, capture where you are before doing anything else.

- Open [skills/wrapup.md](skills/wrapup.md).
- Copy the **Copy-Paste Prompt**.
- Paste it into your assistant along with your recent conversation or notes.

You'll get a clean restart packet: objective, status, decisions, open questions, risks, and next actions. Save it — this is your project's living memory.

---

## Step 5 — Run `/spec-first` on One Real Project (3 min)

Pick something you're tempted to build or automate.

- Open [skills/spec-first.md](skills/spec-first.md), copy the prompt, paste it in.
- Answer the questions honestly, especially **smallest useful version** and the **do-not-build list**.

Most people discover the real scope is smaller than they thought.

---

## Step 6 — Run `/roi-check` Before Building (2 min)

Now pressure-test it.

- Open [skills/roi-check.md](skills/roi-check.md), copy the prompt, paste in your spec.
- Read the recommendation: **build now / prototype / defer / kill / use existing tool / manual SOP first.**

If the answer is "manual SOP first" or "use an existing tool," you just saved yourself days.

---

## Step 7 — Run `/cleanroom` Before Any Client Data (2 min)

If your project touches client data, IP, source assets, telemetry, or credentials, do this **before** pasting anything into an AI tool.

- Open [skills/cleanroom.md](skills/cleanroom.md), copy the prompt, run the checklist.
- Confirm you're in the right account/environment and that no forbidden data is in play.

---

## Step 8 — End with `/task-ledger` (1 min)

Turn everything you just decided into concrete next actions.

- Open [skills/task-ledger.md](skills/task-ledger.md), copy the prompt, paste in your notes.
- You'll get a prioritized table: Priority | Task | Owner | Status | Next Action | Blocker | Due.

---

## You're Done

In 15 minutes you've:
- Installed a disciplined AI operating layer.
- Captured your context so it survives across sessions.
- Scoped one real project down to its smallest useful version.
- Confirmed it's worth building.
- Protected any sensitive data.
- Left with a clear task list.

### Where to Go Next

- **Executives:** [docs/executive-ai-workflow.md](docs/executive-ai-workflow.md) and [docs/ai-discipline-for-executives.md](docs/ai-discipline-for-executives.md)
- **Under cash pressure:** [docs/survival-before-novelty.md](docs/survival-before-novelty.md) + `/survival-filter` + `/forecast-check`
- **Handing off to build:** [skills/handoff-to-cowork.md](skills/handoff-to-cowork.md)
- **Worked examples:** [examples/](examples/)
