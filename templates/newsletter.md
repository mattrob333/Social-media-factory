# Newsletter template

Used by the weekly newsletter loop (Friday) to assemble the draft. See
`voice.md` Section 7 for the full assembly prompt and section rules.

## Hard rules (see voice.md Section 9 + content-themes.yaml)

- No specific aircraft type ("CRJ," tail numbers, fleet references) anywhere
  in the newsletter. Use "flies a jet ~18 days a month."
- Every repo, tool, video, or account named in On the Radar, Open-Source
  Swap, Trending Repos, or any similar section must be an actual clickable
  link (`<a href="...">`), not bare text.

---

```markdown
---
issue: {N}
week_of: {ISO date, Monday of the week}
status: draft
---

# {Working name — The Forward Deploy / The Harness / Tier 4 Dispatch / Flight Plan / Pre-Flight}

## The Take of the Week

{200-400 words. Matt's single best original POV from the week, expanded.
Declarative, concrete, one clear argument. No broetry.}

## On the Radar

1. **{Item}** — {one-line summary}. {Matt's one-line take}. via [{source name}]({link})
2. ...
3-5 items total.

## One You Can Use

{A single prompt, automation, or framework readers can apply this week.
Include the actual prompt/steps — this section is the value contract,
never skip it.}

## Building in Public (optional)

{One line on what shipped / what's breaking. Omit section entirely if
nothing real to report — don't manufacture a filler update.}
```

## Source material

- All posts Matt published or approved this week (`history/`) with
  engagement numbers if available from Metricool.
- The week's `queue/scored/` items that scored high but weren't posted —
  this is where "On the Radar" comes from.
- `saas-ideas.md` if a new idea surfaced worth a mention.

## Rule

Flag anything Matt should double check before sending — the newsletter goes
to his list, it is never auto-sent.
