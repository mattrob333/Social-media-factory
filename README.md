# Social Media Factory

Content briefing repo for the Hermes social media content remix loop.

**What this repo does:** You fill it with YouTube channels, brand voice, and
posting preferences. The loop reads it, scrapes content, remixes it, and posts
to your social accounts via Metricool.

## How to Use

1. **Add channels** → edit [`channels.yaml`](channels.yaml)
2. **Set your voice** → edit [`voice.md`](voice.md)
3. **Configure accounts** → edit [`accounts.yaml`](accounts.yaml)
4. **Set schedule** → edit [`schedule.yaml`](schedule.yaml)
5. **Optional template tweaks** → edit files in [`templates/`](templates/)
6. **Human-approved queue** → drop content in [`queue/`](queue/) and the loop
   posts it first before generating anything

The loop checks this repo at the top of every tick. Anything you push is live
on the next run — no restarts needed.

## Loop Architecture

Three autonomous loops run against this repo:

| Loop | Schedule | Model | What it does |
|------|----------|-------|-------------|
| **1. Daily Ingest** | 6am daily | qwen3.5-flash | Scrapes YouTube + X, scores & buckets content |
| **2. Content Remix** | 8am, 2pm, 8pm | claude-haiku-4.5 | Generates posts from 🔥 items, schedules via Metricool |
| **3. Weekly Newsletter** | Friday 4pm | claude-haiku-4.5 | Compiles week's best into newsletter draft |

### Content flow
```
channels.yaml ──┐
                ├──→ Loop 1: queue/inbox/ → queue/scored/
x-accounts.yaml─┘                              │
                                               ├──→ Loop 2: queue/drafts/ → Metricool
                                               │
                                               └──→ Loop 3: queue/newsletter/
```

## Repo Structure

```
├── README.md
├── channels.yaml       ← 17 YouTube channels
├── x-accounts.yaml     ← 32 X accounts to monitor
├── accounts.yaml       ← Metricool brand ID + X/LinkedIn handles
├── voice.md            ← full brand voice + remix engine
├── schedule.yaml       ← posting cadence + time windows
├── templates/          ← X thread + LinkedIn post formats
├── queue/
│   ├── inbox/          ← raw ingested items
│   ├── scored/         ← scored + bucketed items
│   ├── drafts/         ← generated posts
│   └── newsletter/     ← weekly newsletter drafts
└── history/
    └── processed.yaml  ← prevents duplicate processing

## Quick Links

- [Voice guide](voice.md)
- [Channel list](channels.yaml)
- [Posting schedule](schedule.yaml)
