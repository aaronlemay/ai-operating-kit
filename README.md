# AI Operating Kit v1

> **AI is not the job. AI is the leverage layer.**

A lightweight, Markdown-first operating system for teams that want to use AI with **discipline instead of chaos**. Built for creative studios, game studios, executives, operators, producers, and AI-native teams.

No Node. No Python. No npm. No accounts to create. Clone it, copy a few Markdown files into your project, and start working.

---

## What This Is

The AI Operating Kit is a set of reusable **skills** (prompt protocols), **templates**, **docs**, and **examples** that help you spec before you build, route the right model to the right task, protect sensitive data, run ROI checks, and preserve project memory across sessions.

It provides:

- **Reusable AI skills / prompts** — copy-paste protocols for the recurring moments in AI-assisted work
- **Executive workflow protocols** — daily and weekly rhythms that keep AI as leverage, not a distraction
- **Project memory templates** — durable context that survives across sessions and tools
- **Cleanroom and data-safety checks** — protect IP, client data, telemetry, and account boundaries
- **ROI filters** — decide what's worth building before you build it
- **Model-routing guidance** — match task complexity to the right (and cheapest sufficient) tool
- **Forecasting and survival-focused decision tools** — prioritize cash-flow, revenue, and runway
- **Handoff templates** — move cleanly from planning chat to an implementation agent

---

## Who It's For

- **Executives and founders** who want AI leverage without getting consumed by tool-building
- **Studio and production leaders** managing client work, contractors, IP, and margins
- **Operators and producers** who need decisions, tasks, and memory to stay organized
- **AI-native teams** who want a shared, disciplined way of working with AI

---

## What Problems It Solves

| Problem | The Kit's Answer |
|--------|------------------|
| Jumping into build mode too early | `/spec-first` |
| AI tool addiction and endless side quests | `/roi-check`, `/survival-filter`, [Avoiding AI Side Quests](docs/avoiding-ai-side-quests.md) |
| Using an expensive model for trivial work (or a weak one for hard work) | `/model-router` |
| Leaking client data, IP, or credentials | `/cleanroom` |
| Losing context in long AI sessions | `/wrapup`, `/project-memory` |
| Decisions and tasks evaporating | `/decision-log`, `/task-ledger` |
| Not knowing if you can make payroll | `/forecast-check`, `/survival-filter` |
| Messy handoffs to implementation | `/handoff-to-cowork` |

---

## Quick Install

```bash
git clone https://github.com/YOURNAME/ai-operating-kit.git
cd ai-operating-kit
./scripts/install.sh /path/to/your/project
```

This copies `skills/` and `templates/` into your project and installs `CLAUDE.md` (backing up any existing one). Prefer to do it by hand? See [INSTALL.md](INSTALL.md).

---

## Quick Start

1. Copy `CLAUDE.md` into your project so your AI assistant loads the operating rules.
2. Copy the `skills/` you want into your project.
3. Open a skill file, copy its **Copy-Paste Prompt**, and paste it into Claude, Claude Code, Claude CoWork, ChatGPT, or Codex.

A full 15-minute walkthrough lives in [QUICKSTART.md](QUICKSTART.md).

---

## Recommended First Four Skills

Start here. These four cover 80% of the value on day one.

1. **[`/wrapup`](skills/wrapup.md)** — condense a long AI session into a clean restart packet
2. **[`/spec-first`](skills/spec-first.md)** — force clarity before you build
3. **[`/roi-check`](skills/roi-check.md)** — decide whether the work is worth doing
4. **[`/cleanroom`](skills/cleanroom.md)** — protect IP, client data, and account boundaries

---

## Repo Structure

```text
ai-operating-kit/
  README.md              This file
  INSTALL.md             Manual + script install, and how to use with any AI assistant
  QUICKSTART.md          15-minute setup
  LICENSE.md             MIT license
  CONTRIBUTING.md        How to propose changes
  CHANGELOG.md           Version history
  CLAUDE.md              Global operating instructions for AI assistants

  skills/                Reusable prompt protocols (the core of the kit)
  templates/             Fill-in-the-blank working documents
  docs/                  Executive guides and studio governance
  examples/              Fictional, generalized worked examples

  scripts/
    install.sh           Copy skills + templates + CLAUDE.md into a project
    sync-skills.sh       Update skills + templates only (never touches CLAUDE.md)
```

---

## Usage Examples

- **Starting a new tool idea?** Run `/roi-check`, then `/spec-first`, then `/cleanroom` if data is involved. See [examples/cap-table-workflow-example.md](examples/cap-table-workflow-example.md).
- **Cash is tight?** Run `/survival-filter` to rank all in-flight work, then `/forecast-check` for runway. See [examples/forecast-dashboard-example.md](examples/forecast-dashboard-example.md).
- **Ending a long planning session?** Run `/wrapup`, then `/handoff-to-cowork` to move into implementation.
- **Building a cost/forecast layer?** See [examples/project-cost-truth-layer-example.md](examples/project-cost-truth-layer-example.md).

---

## Privacy & Confidentiality Warning

This repository is a **neutral, reusable toolkit**. It intentionally contains **no** real company, client, personal, payroll, merger, or financial details.

- Keep the public copy generic.
- Put company-specific adaptations, real data, and filled-in templates in a **private** repo or private folder.
- Run `/cleanroom` before pasting any sensitive data into an AI tool.
- Nothing in this kit is legal, tax, or financial advice. Outputs are decision-support only.

---

## Suggested Workflow

```text
Objective ── /spec-first ── /roi-check ── /cleanroom ── build or /handoff-to-cowork
     │                                                          │
     └──────── /decision-log ── /task-ledger ── /wrapup ── /project-memory
```

- **Daily:** plan → spec → delegate → review → log decisions → `/wrapup`.
- **Weekly:** sync `/project-memory`, re-run `/survival-filter`, review the task ledger.

See [docs/executive-ai-workflow.md](docs/executive-ai-workflow.md) for the full rhythm.

---

## Roadmap

- **v1 (this release):** skills, templates, docs, examples, install scripts.
- **v1.x:** more worked examples, printable one-page checklists, a lightweight self-audit skill.
- **v2 (exploring):** optional connectors and a companion agent config for popular AI IDEs, while staying dependency-free at the core.

Ideas and improvements welcome — see [CONTRIBUTING.md](CONTRIBUTING.md).

---

## License

MIT. See [LICENSE.md](LICENSE.md). Use it, adapt it, keep your private adaptations private.
