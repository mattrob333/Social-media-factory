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

## Repo Structure

```
├── README.md           ← you are here
├── channels.yaml       ← YouTube channels & X accounts to scrape
├── accounts.yaml       ← where to post (X, LinkedIn, Metricool config)
├── voice.md            ← brand voice, tone rules, don't-say-this
├── schedule.yaml       ← posting cadence, timezone, platform preferences
├── templates/          ← post format templates
│   ├── x-thread.md     ← X thread format
│   └── linkedin-post.md← LinkedIn post format
├── queue/              ← human-approved content (posted first)
├── history/            ← auto-generated — what was posted + when
└── .gitignore
```

## Loop Integration

The cron job does this on every tick:
1. `git pull` — get your latest changes
2. Read `channels.yaml` → scrape new content
3. Read `voice.md` → apply brand constraints
4. Read `schedule.yaml` → decide what/when to post
5. Check `queue/` first for human-approved content
6. Generate + post via Metricool
7. Write to `history/` → `git commit` + `git push`

## Quick Links

- [Voice guide](voice.md)
- [Channel list](channels.yaml)
- [Posting schedule](schedule.yaml)
