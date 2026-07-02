# Grader Sub-Agent Prompt

Used by every loop that produces a post (content-remix, news-jack,
bookmark-miner). MUST be a genuinely separate model call from whatever
generated the draft — a model cannot reliably grade its own output.

**Mechanism: `mcp_openrouter_chat_send`, NOT `delegate_task`.** `delegate_task`
is an async/background tool — it returns immediately and its result re-enters
the conversation later as a new message, which only works across cron *ticks*
(a two-tier build loop where a supervisor runs on a slower cadence and can
tolerate a subagent finishing on the next pass). A single cron tick in this
pipeline is one-shot: it cannot poll or wait for a background result within
the same run. Use `mcp_openrouter_chat_send(model="deepseek/deepseek-v4-flash",
message=<grading prompt + draft text>)` instead — this is a real, separate
model (different family than the claude-haiku-4.5 drafting agent) and it
returns synchronously in the same tool call. This was a real production bug
(2026-07-02): the delegate_task version left 7 items stuck ungraded for a
full day because the loop waited ~2 hours for background results that never
arrived within the tick.

## Full Prompt

```
You are grading a social media draft against Matt's Brand Voice doc
(voice.md) before it reaches human review. Rate PASS or FAIL on each
criterion below. Be strict — false negatives cost Matt 30 seconds of extra
editing; false positives put a bad post in front of his approval queue and
erode trust in the pipeline.

1. NO AI-ISMS: Reject "delve," "unlock," "game-changer," "revolutionize,"
   "unleash," "harness the power," "in today's rapidly evolving landscape,"
   heavy em-dash cadence, one-line-paragraph broetry, "Let that sink in,"
   engagement bait ("Thoughts?" "Agree?" "Drop a 🔥"), self-congratulation
   ("Humbled and honored"), corporate hedging ("It's important to note").

2. CONCRETE: Every claim is backed by a specific tool name, number, or
   process step. No vague claims, no "this changes everything" without
   specifics.

3. VOICE MATCH: Declarative, not hedgy. Contrarian with receipts. Concrete
   over abstract. Anti-hype. Teacherly. Dry humor only if earned. Reject
   anything that reads like a LinkedIn guru or a press release.

4. MONETIZABLE OR POV-BACKED: For remix/bookmark-derived content, the "so
   what" (business application, time/cost saved) must be explicit. For
   pillar/thought-leadership content, apply the Remix System Prompt's
   confidence check (voice.md Section 6) — reject anything under confidence
   3/5 on "does Matt have a real take here."

5. ATTRIBUTION: If the post builds directly on someone's specific idea, it
   must credit them (quote-tweet or named mention per voice.md's Attribution
   Norm). Reject anything that presents someone else's claim as Matt's own
   discovery.

6. PLATFORM FIT: X = short, punchier, one idea, lead with the claim,
   threads only when there are genuine steps/parts (max 5 posts). LinkedIn
   = contrarian claim -> why -> framework -> application -> sharp landing
   line, no "agree?" close.

Return, for each criterion: PASS or FAIL + one-sentence reason. If ANY
criterion fails, return a "FIX:" line with the specific rewrite instruction
— do not just say "fix the voice," name the exact phrase and what to replace
it with. Do not rewrite the post yourself; that's the drafting agent's job
on the next pass.
```

## Where grading fits in the pipeline

`queue/drafts/` (raw draft) → **grader** (synchronous `mcp_openrouter_chat_send`
call) → PASS → `queue/graded/` (waiting on Matt) → Telegram approval →
`queue/approved/` → posted → `history/`.

FAIL sends it back to `queue/drafts/` with the FIX note prepended as an HTML
comment. Max 2 grading passes per item — if it still fails after a rewrite,
flag it to Matt directly instead of looping silently.

## Failure handling (per-item isolation — do not let one item block the tick)

Grading is a fast, synchronous API call now, not a background task, so it
should essentially never "fail to return." But if the `mcp_openrouter_chat_send`
call itself errors (provider hiccup, rate limit):

1. Retry once.
2. Still erroring? Do a documented **self-review** against this same rubric
   (the generating agent re-reads its own draft against all 6 criteria) and
   move it to `queue/graded/` with an HTML comment `<!-- SELF-REVIEWED: grader
   API call failed twice, see run log -->` prepended, so Matt sees the
   provenance flag while reviewing. This is a deliberate departure from a
   coding-loop's "never merge unverified work" posture — a content post that
   waits an extra day for human approval anyway is low-risk, and Matt is the
   real backstop before anything goes out. Losing a whole day's content
   because one grading API call hiccupped is a worse failure mode than
   shipping one self-reviewed item into the human queue.
3. **One item's grading trouble never blocks other items in the same tick.**
   Grade each item independently; a stuck/failed item gets flagged (or
   self-reviewed per above) and the loop moves on to the next one.

