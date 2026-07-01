# Social Media Factory

Content briefing + generation repo for Matt's full daily content pipeline:
X bookmarks, followed X accounts, YouTube channels, and GitHub trending feed
into scored, graded, human-approved posts across X and LinkedIn, plus a
weekly newsletter and a running SaaS idea backlog.

**What this repo does:** You fill it with sources (bookmarks, X accounts,
YouTube channels, GitHub trending filters), brand voice, and posting
preferences. Hermes cron loops read it, scrape/mine content, remix it in
Matt's voice, grade it against the anti-AI-slop checklist, and queue it for
Telegram approval before anything goes to Metricool.

**Nothing auto-posts. Ever.** Human-in-the-loop via Telegram is permanent
policy (see `voice.md` Section 9 — Auto-post: OFF).

## How to Use

1. **Add sources** → [`channels.yaml`](channels.yaml) (YouTube), [`x-accounts.yaml`](x-accounts.yaml) (X follows), [`bookmarks.yaml`](bookmarks.yaml) (X bookmarks), [`github-trending.yaml`](github-trending.yaml) (repo scan)
2. **Set your voice** → [`voice.md`](voice.md)
3. **Configure accounts** → [`accounts.yaml`](accounts.yaml)
4. **Set schedule** → [`schedule.yaml`](schedule.yaml)
5. **Set content themes/cadence** → [`content-themes.yaml`](content-themes.yaml)
6. **Optional template tweaks** → files in [`templates/`](templates/)
7. **Human-approved queue** → drop content in [`queue/approved/`](queue/approved/) and the loop posts it first before generating anything

The loop checks this repo at the top of every tick. Anything you push is live
on the next run — no restarts needed.

## Loop Architecture

Five autonomous loops run against this repo. All are report/queue-only —
none auto-post.

| Loop | Schedule | Model | What it does |
|------|----------|-------|-------------|
| **1. Bookmark Miner** | 7am Mon-Thu | deepseek-v4-flash (OpenRouter) | Mines X bookmarks, classifies, scores monetization, writes content briefs to `queue/scored/` and ideas to `saas-ideas.md` |
| **2. Daily Ingest** | 6am daily | qwen3.5-flash | Scrapes YouTube + followed X accounts + GitHub trending, scores & buckets into `queue/inbox/` → `queue/scored/` |
| **3. News-Jack (fast lane)** | every 4h, Mon-Thu | claude-haiku-4.5 | Scans followed accounts + news for same-day timely items, drafts within the SLA into `queue/timely/` |
| **4. Content Remix** | 8am, 2pm, 8pm | claude-haiku-4.5 | Turns `queue/scored/` + `queue/timely/` items into drafts, grades them, pushes graded posts to Telegram for approval |
| **5. Weekly Newsletter** | Friday 4pm | claude-haiku-4.5 | Compiles the week's posts + high-scoring unpublished items into a newsletter draft |

### Content flow

```
bookmarks.yaml ─────┐
channels.yaml ───────┤
x-accounts.yaml ─────┼──→ Loop 1+2: queue/inbox/ → queue/scored/
github-trending.yaml─┘                  │
                                        ├──→ Loop 3 (timely only): queue/timely/
                                        │
                                        ▼
                          Loop 4: queue/drafts/ → grader → queue/graded/
                                        │
                                        ▼
                          Telegram approval → queue/approved/ → Metricool
                                        │
                                        ▼
                                   history/ (posted)
                                        │
                                        └──→ Loop 5 (Fri): queue/newsletter/
```

## Content Themes (the recognizable formats)

See [`content-themes.yaml`](content-themes.yaml) for full structure/cadence
of each. Summary:

- **Bookmark Spotlight** (daily) — direct bookmark-miner output: one tool,
  explained, with a practical use case.
- **Top 10 AI Tools This Week** (weekly, Wed) — ranked roundup from the
  week's scored bookmarks/accounts.
- **Most Trending GitHub Repos** (weekly, Mon) — from `github-trending.yaml`.
- **SaaS Idea of the Week** (weekly, Thu) — pulled from `saas-ideas.md`.
- **Timely News-Jack** (same-day, as detected) — fast-lane reaction content,
  target under 4 hours from detection to Matt's Telegram queue.

## Cadence Summary

| Stage | Cadence |
|-------|---------|
| Collect (bookmarks, accounts, YouTube, GitHub) | Bookmark miner 1x/day (7am); ingest 1x/day (6am); news-jack scan every 4h |
| Sort & categorize | Immediately after each collection tick — same loop, no separate pass |
| Write content | 3x/day (8am/2pm/8pm) for scheduled themes; within 4h SLA for news-jack |
| Grade (anti-AI-slop check) | Every draft, before it reaches Telegram — separate sub-agent, never self-graded |
| Human approval | Async via Telegram, whenever Matt reviews |
| Newsletter | 1x/week, Friday 4pm |

## Repo Structure

```
├── README.md
├── channels.yaml         ← 17 YouTube channels
├── x-accounts.yaml        ← 32 X accounts to monitor
├── bookmarks.yaml         ← X bookmark mining config (bookmark-miner skill)
├── github-trending.yaml   ← GitHub trending scan config
├── accounts.yaml          ← Metricool brand ID + X/LinkedIn handles
├── voice.md               ← full brand voice + remix engine
├── schedule.yaml          ← posting cadence + time windows
├── content-themes.yaml    ← recurring content franchises + weekly rotation
├── saas-ideas.md          ← auto-populated SaaS idea backlog
├── sales-plan.md          ← revenue operating system / daily outreach checklist
├── templates/             ← X thread, LinkedIn post, newsletter formats
├── references/
│   └── grader-prompt.md   ← the anti-AI-slop grader sub-agent prompt
├── queue/
│   ├── inbox/             ← raw ingested items
│   ├── scored/            ← scored + bucketed items
│   ├── timely/             ← fast-lane, same-day news-jack items
│   ├── drafts/             ← generated posts, pre-grading
│   ├── graded/              ← passed grading, waiting on Matt
│   ├── approved/            ← cleared to post
│   └── newsletter/           ← weekly newsletter drafts
└── history/
    └── processed.yaml      ← prevents duplicate processing across all sources
```

## Quick Links

- [Voice guide](voice.md)
- [Content themes + weekly rotation](content-themes.yaml)
- [Bookmark mining config](bookmarks.yaml)
- [GitHub trending config](github-trending.yaml)
- [Grader prompt](references/grader-prompt.md)
- [Posting schedule](schedule.yaml)
- [SaaS idea backlog](saas-ideas.md)
- Related skill: `content-strategy/bookmark-miner` (Hermes skill — full loop spec, classification buckets, monetization decisions)
