# Timely / News-Jack Queue

Fast lane for same-day reactive content. Anything here bypasses the normal
weekly theme rotation because it's time-sensitive — a breaking announcement,
a tool launch, a piece of discourse from a followed account that Matt should
react to today, not next week.

## Why this queue exists separately from `queue/scored/`

`queue/scored/` items go through the normal cadence (bookmark-spotlight, top
ten tools, trending repos, saas idea of the week) and can wait days. Items in
`queue/timely/` are perishable — news-jacking a 2-day-old announcement reads
as stale and undercuts the "operator who's actually in it" positioning.

## SLA

Detected -> drafted -> sent to Matt's Telegram for approval within the same
ingest cycle, target under 4 hours. See `content-themes.yaml` (`news-jack`
theme) for structure and remix-mode selection (Amplify+Apply / Disagree+Why /
Extend — from `voice.md` Section 6).

## Flow

```
x-accounts.yaml (followed accounts) ─┐
                                      ├──→ detect breaking/timely item
web (news search)  ──────────────────┘
                                      │
                                      ▼
                          queue/timely/{slug}.md  (drafted, in voice)
                                      │
                                      ▼
                          grader sub-agent (see references/grader-prompt.md)
                                      │
                                      ▼
                          Telegram approval → queue/approved/ or discard
```

## File format

Same frontmatter as `queue/approved/` — platform, type, optional scheduled
time — plus a `detected_at` field so staleness is auditable.

```markdown
---
platform: x
type: single
detected_at: 2026-07-01T14:32:00Z
theme: news-jack
mode: amplify-apply   # or disagree-why / extend
source: "https://x.com/..."
---

Post content here.
```
