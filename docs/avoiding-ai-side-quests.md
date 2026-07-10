# Avoiding AI Side Quests

**AI is not the job. AI is the leverage layer.**

A side quest is work that feels productive but doesn't move a real outcome. Every studio has always had them; AI makes them far more dangerous, because it removes the friction that used to make a detour obviously not worth it. When building something takes a week, you think hard before starting. When it takes an afternoon, you just start — and afternoons are how quarters disappear.

The insidious part is that side quests feel *great*. You're making things, solving problems, watching progress happen on screen. It scratches every itch that real work scratches, minus the result. This guide is about spotting that feeling and getting out of it fast.

## The classic side quests

**Rebuilding tools that already exist.** You need something a mature product already does well, but building your own version is more interesting than evaluating and adopting theirs. Weeks later you have a worse version of a solved problem to maintain forever. The interesting-ness of building is not evidence that building is the right call.

**Creating dashboards without decisions.** You build a dashboard to "get visibility." But a dashboard is only worth building if a specific decision changes based on what it shows. Most dashboards are watched, not used. If you can't name the decision the dashboard drives, you're decorating data, not informing action.

**Coding instead of selling.** The most expensive substitution there is. Selling is uncomfortable, uncertain, and involves rejection. Coding is absorbing, controllable, and feels like progress. Under pressure, people flee toward the comfortable work — and a studio can code its way right past the revenue it needed (see `survival-before-novelty.md`, where revenue sits at level 2 and novelty at the bottom).

**Over-automating rare workflows.** Spending two days automating a task you do twice a year. The automation will be stale by the next time you need it, and you'll spend as long remembering how it works as you would have spent just doing it. Automate the frequent and the painful, not the rare.

**Endless refactoring.** The code works, but it could be *cleaner*. AI makes refactoring effortless and therefore bottomless — there is always another improvement. Refactoring that doesn't unblock a real change is polishing for its own sake. Working and shipped beats elegant and delayed.

**The "80% done" illusion.** AI gets you to a demo-quality result astonishingly fast, and it *feels* nearly finished. But the last 20% — edge cases, reliability, integration, the parts that make it actually usable — is often 80% of the real work. The fast, satisfying start creates a false sense of completion that keeps you invested in something still far from done.

## Warning signs

You are probably on a side quest if:

- You can't name, in one sentence, which real outcome this advances.
- You'd rather keep working on this than do the uncomfortable thing you know matters more.
- The work is fun and frictionless, and no one is waiting for the result.
- You're improving something that already works.
- You're building instead of buying, without having seriously evaluated buying.
- You keep saying "it's almost done" across multiple sessions.
- Something higher on the survival order is unhandled while you do this.
- You started this because a model made it *possible*, not because a goal made it *necessary*.

Any one of these is a yellow flag. Two or more, stop and check.

## Recovery protocol

When you catch yourself mid-side-quest, run this short protocol. It takes a few minutes and routinely saves days.

1. **Name the outcome.** Say out loud the real result this work is supposed to advance. If you can't, that's your answer — stop now.

2. **Run `/roi-check`.** Honestly account for what's already sunk and, more importantly, what finishing will *still* cost versus what it returns. Sunk cost is not a reason to continue; only future return is. Beware the "80% done" illusion here — estimate the remaining 20% as if it's the hard 80%, because it usually is.

3. **Run `/survival-filter`.** Place this work on the survival order (`survival-before-novelty.md`). Is anything above it unhandled? If a level-2 revenue problem is open while you refactor at level 8, the refactor waits.

4. **Decide: kill, delegate, or shrink.**
   - **Kill** it if the ROI doesn't clear the bar or something above it is unhandled. The willingness to stop is the whole skill.
   - **Delegate** it (via `/handoff-to-cowork`) if it's real but shouldn't be *your* time.
   - **Shrink** it to the smallest version that delivers the named outcome, and cut the rest.

5. **Log it.** Note the call in `/decision-log` so the lesson lands in `/project-memory` and you recognize the pattern faster next time. Side quests have signatures; naming yours makes them cheaper to escape.

## The one question

Before starting any AI build, ask: *"If I finish this perfectly, what real outcome changes — and is anything more important currently unhandled?"*

If the answer is fuzzy, you've found a side quest before it cost you anything. That's the cheapest save there is. AI should be removing the reasons you're busy, not inventing new ones — keep it as the leverage layer, and refuse the quests that turn it back into the job.
