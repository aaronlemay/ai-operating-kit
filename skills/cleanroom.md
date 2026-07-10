# /cleanroom

## Purpose

Protect IP, client data, telemetry, account boundaries, prompts, and sensitive project data **before** you run an AI task. `/cleanroom` is a pre-flight checklist that catches the ways confidential material leaks: wrong account, wrong environment, forbidden files pulled into context, client data pasted into a logging tool, contamination between projects, or exports that break a contract. Run it before the work, not after the breach.

## Use When

- You're about to paste, upload, or point an AI tool at real project material.
- The work touches client data, employee/contractor data, source code, or IP.
- You're switching between accounts, environments, or client projects.
- You're unsure whether a tool logs prompts or captures telemetry.
- A [/model-router](model-router.md) result flagged the task as sensitive/client-confidential.
- Before any [/handoff-to-cowork](handoff-to-cowork.md) that moves data into a build environment.

## Copy-Paste Prompt

```
Act as a data-safety and IP-protection officer. Before I run the AI task below,
walk me through a CLEANROOM pre-flight check. For each item, tell me what to
verify, flag anything risky, and refuse to wave through anything unclear. If an
item can't be confirmed safe, mark it BLOCK and say what would unblock it.

The task and what I plan to feed the AI:
<describe the task, the tool/account/environment, and the files/data involved>

Run the check across every item:

1. PROJECT / CLIENT / COMPANY — which entity's work is this, and is it correctly
   isolated from other clients/projects?
2. CORRECT ACCOUNT / ENVIRONMENT — am I in the right account, workspace, and
   environment for this work (not a personal account, not the wrong client's org)?
3. ALLOWED FILES — which files are cleared to use.
4. FORBIDDEN FILES — which files must never enter this context.
5. CLIENT DATA — is any client data involved, and is it permitted here?
6. EMPLOYEE / CONTRACTOR DATA — any personal or HR data, and is it permitted?
7. SOURCE CODE — is proprietary code involved, and is this tool cleared for it?
8. PROMPT LOGGING — does this tool retain or train on prompts? What does that mean
   for what I paste?
9. TELEMETRY — what usage data does this tool collect, and does it matter here?
10. CONSENT — do I have consent to use this data/content in an AI tool?
11. GDPR / PRIVACY — any personal data triggering privacy obligations? What's
    required to stay compliant?
12. CONTAMINATION RISK — could this mix data or context across clients/projects?
13. EXPORT RULES — any restrictions on where outputs can go or be stored?
14. SAFEST WORKFLOW — given all the above, the safest way to do this task
    (which tool/tier, what to redact, what to keep local).

For each item output one of: OK, CAUTION, or BLOCK — plus a one-line reason.
End with a single GO / NO-GO verdict and the conditions for GO.
```

## Output Format

```
# CLEANROOM CHECK: <task>

| # | Check | Status | Note |
|---|-------|--------|------|
| 1 | Project / Client / Company      | OK/CAUTION/BLOCK | <reason> |
| 2 | Correct Account / Environment   | OK/CAUTION/BLOCK | <reason> |
| 3 | Allowed Files                   | OK/CAUTION/BLOCK | <reason> |
| 4 | Forbidden Files                 | OK/CAUTION/BLOCK | <reason> |
| 5 | Client Data                     | OK/CAUTION/BLOCK | <reason> |
| 6 | Employee / Contractor Data      | OK/CAUTION/BLOCK | <reason> |
| 7 | Source Code                     | OK/CAUTION/BLOCK | <reason> |
| 8 | Prompt Logging                  | OK/CAUTION/BLOCK | <reason> |
| 9 | Telemetry                       | OK/CAUTION/BLOCK | <reason> |
| 10| Consent                         | OK/CAUTION/BLOCK | <reason> |
| 11| GDPR / Privacy                  | OK/CAUTION/BLOCK | <reason> |
| 12| Contamination Risk              | OK/CAUTION/BLOCK | <reason> |
| 13| Export Rules                    | OK/CAUTION/BLOCK | <reason> |

Safest Workflow : <recommended safe approach>
VERDICT         : GO / NO-GO
Conditions for GO : <what must be true>
```

## Notes

- A single **BLOCK** is a stop. Don't proceed until it's resolved or the data is removed from scope.
- The cheapest fix is almost always **redaction** — strip names, numbers, and identifiers before the data ever reaches the tool.
- For restricted work, [/model-router](model-router.md) will often point you to a restricted/local tier; `/cleanroom` confirms whether even that is allowed.
- Never include real company, client, personal, payroll, or deal details in any prompt. Generalize before you paste.
- Run `/cleanroom` again whenever you switch accounts or clients mid-session — context carries over even when you think it doesn't.
