# Studio AI Governance

**AI is not the job. AI is the leverage layer.**

Governance is what lets a studio use AI aggressively without getting hurt by it. It is not bureaucracy; it is the small set of rules that keeps client trust, IP, and legal standing intact while everyone moves fast. The goal is a policy light enough that people actually follow it and firm enough that it holds when a deadline is on the line.

This guide is the practical version. Turn it into your own written policy using the **ai-governance-policy** template, and record per-tool and per-client telemetry commitments in the **client-ai-telemetry-policy** template.

## Approved tools

Maintain a short, explicit list of AI tools approved for studio work — with the tier and terms each is approved for. "Approved" means someone checked the data-handling terms, confirmed retention and training posture, and decided the tool is fit for its use.

- Default to the approved list. Using an unapproved tool for studio work is an exception that needs a reason, not a casual choice.
- Review the list on a schedule; terms change and new tools appear.
- Note which tools are cleared for client data and which are for internal use only — they are usually not the same set.

## Client work

Client work is the highest-stakes category and the specific client agreement always wins over your defaults.

- Client data moves only into tools approved for client data, inside that client's project silo.
- Never promise a client a data posture your tools don't actually deliver — match promises to the telemetry facts recorded in the client-ai-telemetry-policy.
- If a client agreement is stricter than your default policy, follow the agreement.
- When a client requires it, run the work in a `/cleanroom`-verified isolated environment (see `ai-chain-of-custody.md`).

## Personal accounts

Personal AI accounts are for personal use. They must not be used for studio or client work, because consumer terms often permit retention and training on inputs, and personal-account activity is invisible to the studio — no logs, no audit trail, no custody.

Make this a bright line. It is one of the easiest rules to violate accidentally (someone's personal login is just faster) and one of the most damaging when client material is involved.

## Company accounts

Provision company AI accounts on business or enterprise terms where retention, training, and administration can be controlled centrally. All studio work runs through them.

- Central provisioning and offboarding — access ends when someone leaves.
- Company accounts are where prompt logging and audit exports live.
- Billing and usage roll up to the studio, not to individuals' cards.

## Contractors

Contractors and freelancers operate under the same governance as staff, made explicit in their engagement terms.

- State, before they start, which AI tools are in use and how their contributions may be processed — and get their consent (see `ai-chain-of-custody.md`).
- Give them scoped company access for the work; do not let them use personal accounts for it.
- Confirm they have the rights to any material they bring in. A contractor importing another client's assets is a contamination event you inherit.
- Revoke access at the end of the engagement.

## Source assets

The studio's source assets — art, code, designs, unreleased work — are its IP and must not leak into tools that retain or train on inputs.

- Before source assets go into any tool, confirm its terms forbid training on inputs and bound retention.
- Keep high-value and pre-release assets in `/cleanroom`-verified environments only.
- Treat "just pasting it in to ask a quick question" as a real decision, because for IP it is.

## Telemetry

Know what each approved tool sends back to its vendor — usage data, and whether prompt and output content is included, retained, or used for training. Record this per tool in the **client-ai-telemetry-policy**, and keep it consistent with what you promise clients. Telemetry is where a well-meaning studio most often breaks a client commitment without realizing it.

## Review process

Governance needs a lightweight process, or it becomes a document nobody follows.

- **Tool review:** a defined way to request adding a tool to the approved list, and someone who owns the decision.
- **Exception review:** a fast path for "I need to use something off-list for this reason," with a record of what was approved.
- **Periodic audit:** scheduled audit exports of AI activity per project (see `ai-chain-of-custody.md`), so custody is provable rather than assumed.
- **Ownership:** name a person accountable for governance. A policy owned by everyone is owned by no one.

## Incident response

Assume something will eventually go wrong — a leak, an unapproved tool used on client data, a contractor mishap. Have a plan before you need it.

1. **Contain.** Stop the activity; revoke the access or endpoint involved.
2. **Assess.** What data was exposed, to which tool, under what terms, affecting which client or asset. Pull the prompt logs and audit exports.
3. **Notify.** Inform affected clients per your agreements and any legal obligations (privacy law may require it — see `ai-chain-of-custody.md`). Do this honestly and promptly; concealment is what turns an incident into a crisis.
4. **Remediate.** Close the gap that allowed it — a rule, a tool restriction, an endpoint control.
5. **Record.** Log the incident and the fix in `/decision-log` so the lesson survives in `/project-memory` and the same gap doesn't reopen.

## Minimum viable governance

- A short approved-tools list, marked for internal vs. client-data use.
- A bright line: no personal accounts for studio work; company accounts for everything.
- Client agreements override defaults; promises match telemetry facts.
- Contractors under the same rules, with consent and scoped access.
- Source assets kept out of training-hungry tools.
- A named owner, a review path, periodic audits, and an incident plan.

Write it down with the **ai-governance-policy** and **client-ai-telemetry-policy** templates, keep it short enough to actually follow, and revisit it as the tools change.
