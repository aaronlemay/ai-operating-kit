# Changelog

All notable changes to the AI Operating Kit are documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/), and this
project aims to follow [Semantic Versioning](https://semver.org/).

---

## [Unreleased]

- Placeholder for the next round of improvements. Add entries here in your PR.

---

## [1.0.0] — 2026-07-09

### Added

**Core**
- `README.md`, `INSTALL.md`, `QUICKSTART.md`, `LICENSE.md`, `CONTRIBUTING.md`, `CHANGELOG.md`
- `CLAUDE.md` — global operating instructions for any AI assistant working in the repo

**Skills (12)**
- `/wrapup` — condense a long session into a clean restart packet
- `/spec-first` — force clarity before building
- `/roi-check` — decide whether work is worth doing
- `/model-router` — match task to the right (and cheapest sufficient) tool
- `/cleanroom` — protect IP, client data, and account boundaries
- `/decision-log` — track meaningful decisions and why
- `/task-ledger` — turn messy work into concrete next actions
- `/handoff-to-cowork` — move cleanly from planning to implementation
- `/survival-filter` — rank work under cash-flow/execution pressure
- `/forecast-check` — design or review a studio forecast
- `/meeting-synthesis` — turn transcripts/notes into signal
- `/project-memory` — durable project memory across sessions

**Templates (11)**
- project brief, AI session summary, decision ledger, task ledger, ROI scorecard,
  cleanroom checklist, model routing matrix, forecast dashboard spec,
  AI governance policy, client AI telemetry policy, implementation handoff

**Docs (7)**
- AI discipline for executives, survival before novelty, AI chain of custody,
  model routing guide, executive AI workflow, studio AI governance,
  avoiding AI side quests

**Examples (6)**
- cap table workflow, deal calculator, mocap pipeline, project cost truth layer,
  forecast dashboard, QuickBooks→Sheets connector (all fictional and generalized)

**Scripts**
- `scripts/install.sh` — copy skills + templates + CLAUDE.md into a project
- `scripts/sync-skills.sh` — update skills + templates only

### Notes
- First public release. Markdown-first, dependency-free.
- Contains no real company, client, or financial details by design.
