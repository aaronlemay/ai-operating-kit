# Installing the AI Operating Kit

The kit is Markdown-first and dependency-free. "Installing" just means copying a few files into your project and pointing your AI assistant at them. There is nothing to compile and no package manager involved.

---

## Option A — Script Install (recommended)

From the cloned repo:

```bash
git clone https://github.com/YOURNAME/ai-operating-kit.git
cd ai-operating-kit
./scripts/install.sh /path/to/your/project
```

`install.sh` will:

- Create the target directory if it doesn't exist.
- Copy `skills/` and `templates/` into the target.
- Copy `CLAUDE.md` into the target **only if one doesn't already exist**; if it exists, it backs up the old one first.
- Print clear next steps.

To update **only** skills and templates later (never touching your `CLAUDE.md`):

```bash
./scripts/sync-skills.sh /path/to/your/project
```

If the scripts aren't executable yet:

```bash
chmod +x scripts/install.sh scripts/sync-skills.sh
```

---

## Option B — Manual Install

You only need three things in your project: `CLAUDE.md`, the `skills/` you want, and any `templates/` you'll fill in.

```bash
# from inside your project
cp /path/to/ai-operating-kit/CLAUDE.md ./CLAUDE.md
cp -R /path/to/ai-operating-kit/skills ./skills
cp -R /path/to/ai-operating-kit/templates ./templates
```

Prefer to keep the kit files in a subfolder? That's fine too:

```bash
mkdir -p ./ai-kit
cp -R /path/to/ai-operating-kit/{skills,templates,docs} ./ai-kit/
cp /path/to/ai-operating-kit/CLAUDE.md ./CLAUDE.md
```

---

## Copying Skills into an Existing Project

You don't have to take the whole kit. To start with just the recommended four:

```bash
mkdir -p ./skills
cp /path/to/ai-operating-kit/skills/{wrapup,spec-first,roi-check,cleanroom}.md ./skills/
cp /path/to/ai-operating-kit/CLAUDE.md ./CLAUDE.md
```

Add more skills as you need them.

---

## Using the Kit with Any AI Assistant

Every skill is just a Markdown file with a **Copy-Paste Prompt** section. The workflow is the same everywhere:

1. Open the skill file (e.g. `skills/spec-first.md`).
2. Copy the fenced **Copy-Paste Prompt**.
3. Paste it into your assistant and add your specifics.

### Claude (web/desktop app)
- Start a new chat. Paste the skill's Copy-Paste Prompt, then your context.
- Optionally paste the contents of `CLAUDE.md` at the top of a project or as a custom instruction so the operating rules are always active.

### Claude Code (CLI / IDE)
- Keep `CLAUDE.md` at the root of your project — Claude Code loads it automatically as project instructions.
- Reference a skill by pasting its prompt, or ask: *"Run the spec-first skill in `skills/spec-first.md` on this project."*

### Claude CoWork
- Use `/handoff-to-cowork` in your planning tool to produce a clean implementation packet, then paste that packet in to start execution.
- Keep `CLAUDE.md` available so the operating rules travel with the work.

### ChatGPT
- Paste `CLAUDE.md` into **Custom Instructions** (or a Project's instructions) so the rules persist.
- Paste any skill's Copy-Paste Prompt into the chat when you need it.

### Codex / other coding agents
- Point the agent at `CLAUDE.md` (or paste it) as the working contract.
- Use `/spec-first` and `/handoff-to-cowork` before letting the agent build, and `/cleanroom` before exposing any real data.

> The kit is assistant-agnostic on purpose. If a tool can read a prompt, it can run these skills.

---

## Updating from GitHub

```bash
cd /path/to/ai-operating-kit
git pull

# then refresh skills + templates in your project without touching CLAUDE.md
./scripts/sync-skills.sh /path/to/your/project
```

Review the [CHANGELOG.md](CHANGELOG.md) after pulling to see what changed.

---

## Keeping Company-Specific Adaptations Private

The public kit is intentionally generic. Your real-world version will not be.

- **Fork privately.** Create a private repo for your studio's adaptation and keep the public kit as an upstream remote.

  ```bash
  # in your private repo
  git remote add upstream https://github.com/YOURNAME/ai-operating-kit.git
  git pull upstream main   # pull generic improvements when you want them
  ```

- **Never commit real data** — filled-in templates, client names, payroll, forecasts, credentials — to a public repo. Keep those in the private fork or outside version control entirely.
- **Run `/cleanroom`** before pasting sensitive data into any AI tool.
- Consider a top-level `.gitignore` (in your private copy) for any `*-private.md` or `/_private/` paths you use for real data.
