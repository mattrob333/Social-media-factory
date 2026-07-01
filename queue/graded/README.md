# Graded Queue

Content that has passed through the grader sub-agent but is waiting for
Matt's approval in Telegram. This sits between `queue/drafts/` (raw
generation) and `queue/approved/` (cleared to post).

## Why a separate stage

The grader is a *different* sub-agent than the one that wrote the draft —
never let a model grade its own homework. Splitting `drafts` from `graded`
makes it visible whether something failed grading and got kicked back
(stays in `drafts/`, never reaches here) versus passed and is just waiting
on the human (lives here).

## Grading criteria (see references in bookmark-miner skill + voice.md)

1. **No AI-isms** — no em-dash-stacked broetry, no "delve/unlock/game-changer/
   revolutionize/unleash/harness the power," no "in today's rapidly evolving
   landscape."
2. **Concrete** — every claim backed by a named tool, a number, or a process
   step. No vague claims.
3. **Voice match** — declarative, operator-pilot. Matches `voice.md` Section
   1 attributes and avoids every item in Section 2 (the anti-voice list).
4. **Monetizable or thought-leadership-worthy** — for remix/bookmark content,
   a clear "so what." For pillar content, a real POV (confidence >= 3 per the
   Remix System Prompt in `voice.md`).
5. **Attribution correct** — sourced content is credited per `voice.md`'s
   Attribution Norm; nothing presents someone else's specific claim as
   Matt's own discovery.

Anything that fails is sent back to `queue/drafts/` with the specific fix
noted in an HTML comment at the top of the file. It does not advance to
`graded/` until it passes.

## Flow

`queue/drafts/` → grader sub-agent → PASS → `queue/graded/` → Telegram
approval → `queue/approved/` (or discard) → posted → moved to `history/`.
