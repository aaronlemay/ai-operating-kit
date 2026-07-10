# AI Chain of Custody

**AI is not the job. AI is the leverage layer.**

Chain of custody is a legal idea: an unbroken, documented record of who handled a piece of evidence, when, and how — so its integrity can be trusted. AI work needs the same discipline. Every prompt, dataset, and generated asset passes through accounts, models, and endpoints you may not fully control. Without a chain of custody, you cannot answer the questions that matter when something goes wrong: *Where did this data go? Whose material trained on it? Can we prove the client's assets never left the clean environment?*

This guide covers how to preserve AI data integrity and IP safety in a studio. It pairs with the **`/cleanroom`** skill and the **client-ai-telemetry-policy** template.

## Account separation

Do not mix identities. Personal AI accounts, company AI accounts, and client-scoped accounts must be distinct, with distinct credentials and distinct billing. When an employee uses a personal ChatGPT or Claude login for client work, that work may fall under consumer terms, may be retained for training, and leaves no company-visible record. Provision company accounts on business or enterprise terms where retention and training can be controlled, and require their use for any studio work.

## Project silos

Treat each client or sensitive project as a silo. Its data, prompts, and outputs stay within a workspace or project space dedicated to it, never commingled with another client's material or with general studio experimentation. Silos are what let you make a clean statement to a client: *your material was handled only within your project, by named people, under these terms.* `/cleanroom` helps you stand up and verify these isolated environments before sensitive work begins.

## Prompt logging

The prompt is the input to everything. Log prompts for studio work — at minimum: who ran it, when, against which model, in which project. This is not surveillance; it is the record that lets you reconstruct what happened. If a client asks whether their spec was ever pasted into a public tool, a prompt log is the difference between "no, here's the record" and "we don't know."

## Telemetry

AI tools emit telemetry — usage data, and sometimes prompt and output content — back to the vendor. You need to know, per tool, what is collected, whether content is included, whether it feeds training, and how retention works. The **client-ai-telemetry-policy** template is where you record this per approved tool and per client agreement, so that what you promise clients matches what your tools actually do. Never promise a client "nothing leaves our systems" while running their data through a tool whose telemetry says otherwise.

## Client data

Client data is the highest-sensitivity category. Rules:

- It moves only into approved, contractually-covered tools.
- It stays in its project silo.
- It is never used to seed general studio prompts, examples, or fine-tuning.
- Its handling matches the specific client agreement, which may be stricter than your default policy.

When in doubt, treat client data as if the client's counsel will one day audit exactly where it went — because they might.

## Source assets

A studio's source assets — art, code, designs, models, unreleased work — are its IP. Feeding them into a tool that retains or trains on inputs can leak them into a model that competitors also use. Before source assets go into any AI tool, confirm the tool's terms forbid training on your inputs and that retention is bounded. High-value or pre-release assets belong only in `/cleanroom`-verified environments.

## Contractor consent

Contractors and freelancers must know, before they start, what AI tools are in use and how their contributions may be processed. Two-way consent: the contractor consents to your AI-assisted workflow, and you confirm the contractor has the rights to whatever material they bring in. Put this in the engagement terms. A contractor who pastes another client's code into your project is a contamination event you inherit.

## GDPR and privacy

If any data includes personal information — names, contact details, anything identifying a real person — privacy law applies regardless of how "internal" the work feels. Under GDPR and similar regimes you need a lawful basis to process personal data, limits on retention, and the ability to honor deletion and access requests. Do not paste personal data into AI tools that cannot honor those obligations. When personal data is genuinely needed, minimize it, and prefer tools with data-processing agreements in place.

## Endpoint control

Custody breaks at the edges. A model routed through an unapproved API, a browser extension that reads page content, a plugin with broad permissions, or a personal device syncing work files — each is an uncontrolled endpoint. Maintain an approved list of endpoints (which tools, which APIs, which devices) and treat anything off the list as out of custody until reviewed.

## Audit exports

You should be able to produce, on demand, a record of AI activity for a project: which tools touched it, what the telemetry posture was, who ran what. Set up periodic audit exports rather than scrambling to reconstruct them after an incident. An audit export you can hand to a client or regulator is proof of custody; a promise that you "follow good practices" is not.

## Contamination prevention

Contamination is when material from one context bleeds into another: Client A's data influencing Client B's deliverable, a public tool ingesting private IP, a shared prompt library carrying confidential examples. Prevent it structurally — through the silos, account separation, and endpoint control above — not through good intentions. The `/cleanroom` skill exists precisely to give you a verified-clean environment where you can state, with evidence, that no cross-contamination occurred.

## A minimum viable chain of custody

1. Separate personal, company, and client accounts — enforce company accounts for studio work.
2. Silo every client and sensitive project; verify with `/cleanroom`.
3. Log prompts for studio work.
4. Record telemetry posture per tool in the **client-ai-telemetry-policy**.
5. Keep client data and source assets out of any tool that trains on or over-retains inputs.
6. Get contractor consent in writing.
7. Honor privacy law wherever personal data appears.
8. Maintain an approved-endpoint list and periodic audit exports.

Chain of custody is what lets a studio use AI aggressively and still look a client, a regulator, or its own future self in the eye.
