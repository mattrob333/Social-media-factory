# Tier 4 Intelligence — Newsletter Structure Brief

For cross-checking with other AI tools before locking a final HTML template.
Two parts: (1) what data actually flows into the repo today, (2) a proposed
newsletter structure built from standard B2B AI-newsletter patterns
(The Neuron, Ben's Bites, TLDR AI, Superhuman AI) crossed with what this
pipeline can actually produce — no aviation framing, no invented sections.

---

## Part 1 — What's currently being scraped/gathered

| Feed | Config file | What it captures | Cadence | Status |
|---|---|---|---|---|
| X bookmarks | `bookmarks.yaml` | Tweets Matt bookmarks manually | Daily (bookmark-miner, 7am Mon–Thu) | Live |
| Followed X accounts | `x-accounts.yaml` | Posts from ~15 tracked AI/agent accounts (Karpathy, dax, Zephyr, hwchase17, etc.) | Daily ingest, 6am | Live |
| YouTube channels | `channels.yaml` | Uploads from 17 tracked channels (Jack Roberts, Greg Isenberg, Ras Mic, IndyDevDan, etc.) | Daily ingest, 6am | **Broken — 403 on all 17 channels, 15+ consecutive failed ticks. No YouTube data currently reaching the newsletter.** |
| GitHub trending | `github-trending.yaml` | Trending repos matched to relevance filters, max 8/day | Daily ingest, 6am | Live |
| SaaS idea backlog | `saas-ideas.md` | Ideas auto-surfaced from bookmarks/accounts/repos scored `BUILD_WITH_IT` conf ≥4 | Continuous | Live |
| Model rankings | `model-rankings.yaml` *(added this session)* | LMArena, Artificial Analysis, OpenRouter, Vals AI, SWE-bench — top models by category | Proposed weekly | Not yet wired to a loop |
| Disruption/jobs watch | `disruption-watch.yaml` *(added this session)* | Layoffs.fyi, TrueUp, Challenger Gray, Anthropic Economic Index — AI-attributed headcount/role changes | Proposed weekly/monthly | Not yet wired to a loop |
| Posted content history | `history/` | Every post Matt's already published, with engagement if available from Metricool | Continuous | Live |
| Scored/graded queue | `queue/scored/`, `queue/graded/`, `queue/approved/` | Everything from the feeds above, scored, drafted, graded, human-approved | Continuous | Live |
| Content pillars/voice | `content-themes.yaml`, `voice.md` | Not a data feed — the filter everything above gets run through | — | Live |

**Net: the real inputs are X (bookmarks + follows) and GitHub trending, daily.
YouTube is currently dead. Model rankings and disruption data are proposed,
not yet collecting.**

---

## Part 2 — Proposed newsletter structure

Standard B2B AI-newsletter anatomy (Ben's Bites / TLDR AI / The Neuron) is
consistently: **one headline story → a scannable news roundup → one
tool/resource spotlight → one practical takeaway → light close.** The
structure below maps that pattern onto this repo's actual feeds, so every
section has a real, repeatable data source — nothing manufactured.

### 1. Top Story
One story from the week's X/GitHub scrape expanded into a short original
POV (200–300 words). This is the anchor every AI newsletter leads with.
**Source:** best-scoring item in `queue/scored/` or `queue/approved/` that
week.

### 2. This Week in AI (news roundup)
4–6 bullet items, one line each: headline + one-line why-it-matters + linked
source. The scannable core every reader expects.
**Source:** `queue/scored/`, HIGH-SIGNAL items from daily ingest, X
bookmarks/follows.

### 3. Trending on GitHub
3–4 repos, name + star velocity + one line on what it does + one line on why
it's relevant to a B2B/automation reader.
**Source:** `github-trending.yaml` output.

### 4. Tool / Model Spotlight
One tool, model, or launch covered in more depth than the roundup allows —
what it does, who it's for, what it costs if known.
**Source:** highest-signal single item from the week's scrape; folds in the
model-rankings data when there's real movement to report (no rankings table
unless something actually changed — a static leaderboard isn't news).

### 5. Prompt / Framework of the Week
One concrete, copy-pasteable prompt, workflow, or framework readers can use
immediately. This is the "value contract" section — every AI newsletter
that retains subscribers has one, and it's the one section that should never
be skipped.
**Source:** Personasmith persona generator (already built,
`references/personasmith-metaprompt.md`) OR a workflow pulled from bookmarked
`METHOD_FRAMEWORK` items in `queue/scored/`. Alternate between the two so it
doesn't feel repetitive.

### 6. SaaS Idea Watch (optional)
One idea from the backlog, only when genuinely timely that week.
**Source:** `saas-ideas.md`.

### 7. Jobs & Disruption (optional, once the feed is live)
1–2 sourced, receipts-only items on where AI is actually changing roles or
headcount — not speculation.
**Source:** `disruption-watch.yaml` (needs a loop before this can run).

### 8. Sign-off
One or two lines, link to reply/forward, unsubscribe/preferences footer.

---

### What's cut from earlier drafts, and why

- **The Flight Deck (model-picks-by-mission board)** — cut per this
  conversation. Folded into Tool/Model Spotlight instead, used only when
  there's real movement, not as a recurring ranked table nobody asked for.
- **Aviation/pilot framing** ("flies a jet ~18 days a month") — cut per this
  conversation. Removed from sign-off and bio references.
- **Generative Media Watch, Featured Workflow, Signal Sources** — these
  aren't wrong, but they're not core; they're candidates for the optional
  rotation slot alongside SaaS Idea Watch and Disruption Watch, run 2–3 per
  issue based on inventory strength rather than every issue running all of
  them.

### Still open, needs a decision before the loop can produce it reliably

- YouTube scraping is broken (403 on all 17 channels) — no video-sourced
  content is currently possible until this is fixed.
- `model-rankings.yaml` and `disruption-watch.yaml` are config files only;
  no cron loop reads them yet. They're aspirational sections until wired up.

---

## Summary of the conversation so far (for cross-checking with other tools)

**Round 1 — my proposal:** HTML email template with The Take of the Week,
On the Radar, One You Can Use, Building in Public (per the pre-existing
`voice.md` §7 newsletter spec), styled navy/amber per a reference image,
aviation-inflected sign-off.

**Round 2 — your ask:** add more B2B-executive value — top LLMs by category
(coding, writing, business), image/video-gen watch, a featured workflow
section, prompt of the day (tie in the Personasmith meta-prompt), a
disruption/jobs-impact section, a signal-sources follow list, and AI-generated
imagery throughout.

**What I added:** The Flight Deck (model rankings by category),
Generative Media Watch, Featured Workflow, Persona Prompt of the Week
(wired the existing Personasmith spec in), Disruption Watch, Signal Sources,
plus two new data-feed configs (`model-rankings.yaml`,
`disruption-watch.yaml`) and an imagery generation recipe.

**Round 3 — this message:** drop the aviation/pilot language entirely
(reader doesn't need it), drop the Flight Deck as a dedicated section, and
instead structure the newsletter around standard AI-newsletter anatomy using
only what the feeds can actually support — which is the structure above.
