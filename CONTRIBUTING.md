# Contributing

Thanks for helping improve the AI Operating Kit. The goal is a **practical, mature, dependency-free** toolkit that teams can trust. Contributions should keep it that way.

---

## Principles

1. **Operator-friendly over clever.** Write for a busy executive or producer, not for engineers. Clear, concise, no hype.
2. **Markdown-first, dependency-free.** No Node, Python, npm, or build steps in the core kit. If a contribution needs a runtime, it belongs in a separate optional module, not the core.
3. **Generic and reusable.** Never add real company, client, personal, payroll, merger, or financial details. Examples must be fictional.
4. **Smallest useful version.** Prefer a tight, focused addition over a sprawling one. The kit practices what it preaches.
5. **Decision-support, not advice.** Anything touching legal, tax, or financial territory must carry the appropriate disclaimer.

---

## Ways to Contribute

- **New skill** — a reusable prompt protocol for a recurring AI-work moment.
- **New template** — a fill-in-the-blank working document.
- **New doc** — an executive/operator guide.
- **New example** — a fictional, generalized worked scenario.
- **Fixes** — clarity, typos, broken links, better prompts.

---

## Style Rules

### Skills
Every skill file must follow this structure exactly:

```markdown
# /skill-name

## Purpose

## Use When

## Copy-Paste Prompt

## Output Format

## Notes
```

- The **Copy-Paste Prompt** must be a fenced code block, complete and ready to paste into any AI assistant.
- Cross-link related skills by slash-name (e.g. `/cleanroom`).

### Templates
- Start with a short "How to use" note.
- Use bracketed placeholders (`[Project name]`, `[YYYY-MM-DD]`).
- Include a small illustrative example where it helps.

### Docs
- Prose guides, 600–1200 words, with headings and lists.
- Tie back to the relevant skills.

### Examples
- Fully fictional. Use tokens like "Studio X", "Client A", round fictional numbers.
- Carry any required disclaimers.

---

## Submitting Changes

1. Fork the repo and create a branch: `git checkout -b add-<thing>`.
2. Make your change. Keep the diff focused.
3. Check links and structure. Run a quick sanity pass (see below).
4. Update [CHANGELOG.md](CHANGELOG.md) under "Unreleased."
5. Open a pull request describing **what problem it solves** and **who benefits** — the kit's own `/spec-first` discipline applies to its own changes.

### Quick sanity pass

```bash
# every skill has the required sections
grep -L "## Copy-Paste Prompt" skills/*.md

# no obvious placeholder leftovers
grep -rn "TODO\|FIXME\|lorem ipsum" .
```

---

## Confidentiality Check Before Every PR

Ask yourself: *Would I be comfortable if this were public forever?* If a file contains anything company-specific, real, or sensitive, it does **not** belong in this repo. Keep those in a private fork. When in doubt, run the `/cleanroom` skill on your own contribution.
