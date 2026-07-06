# Ingest Digest — Sunday, July 5, 2026
# Queued for Monday (trending-repos + bookmark-spotlight day)
# Tags: daily-ingest, github-trending, x-monitor

---

## 🟢 GitHub Trending (Daily — July 5)
### Relevant to Matt's Stack

### 1. **openai/codex-plugin-cc** (1,519 stars/day)
Use Codex from Claude Code to review code or delegate tasks.
→ Matt's stack: Directly applicable — cross-agent orchestration between Codex and Claude Code.
→ **USE_IT** — worth bookmarking for the agent-calling-agent patterns Pedigree needs.

### 2. **alibaba/page-agent** (801 stars/day)
JavaScript in-page GUI agent — control web interfaces with natural language.
→ Relevance: Browser automation patterns overlap with GMB automation workflows.
→ **BUILD_WITH_IT** — potential component for auto-posting/web-interaction bots.

### 3. **steipete/CodexBar** (201 stars/day)
Show usage stats for OpenAI Codex and Claude Code without login.
→ Matt's take: Nice utility, not directly actionable. Clean implementation pattern.

### 4. **OthmanAdi/planning-with-files** (61 stars/day)
Persistent file-based planning for AI coding agents. Crash-proof markdown plans.
→ Matt's stack: Directly relevant to the Pedigree Org Import Workbench.
→ **WATCH** — file-based agent planning is the right pattern.

### 5. **CoplayDev/unity-mcp** (415 stars/day)
Bridge between AI assistants and Unity Editor.
→ Niche (gamedev) but interesting MCP pattern for tool bridging.

### 6. **gastownhall/gastown** (48 stars/day)
Multi-agent workspace manager
→ Agent infrastructure — tangentially relevant.

---

## 🔵 X/Twitter Monitor (July 4-5)
### Notable Posts for Content Angles

### High-Signal Posts:

**@omarsar0 (Elvis)**
- "Fable 5 is an absolute beast at threejs. Best LLM at generating 3D simulations/worlds."
- "Great overview of always-on agents: 130+ page survey — systems whose future behavior depends on durable state built up across earlier interactions."
→ **Content Angle**: Always-on agents survey → Bookmark spotlight or Amplify+Apply.

**@danshipper (Dan Shipper)**
- "fable on ultracode 'make no mistakes'" + joke about Fable spinning up 100 agents to change a button color
→ **Content Angle**: Humor angle — the overkill of super-powered coding agents.

**@thdxr (dax)**
- "guys stop trying to argue with the 'code doesn't matter' posts and just ask them if they're so ahead of the game why aren't they richer"
→ **Content Angle**: Controversial hot take — "if code doesn't matter, where's the money?" Remix as Disagree+Why.

**@Zephyr_hg**
- Boris Cherny (creator of Claude Code): "I have a Claude that prompts other Claudes. So I don't even talk to Claude."
- Sam Altman: "To build with AI, you don't need a huge team. You need a good idea."
- Eric Schmidt: "OpenAI/Gemini creating a million AI software programmers"
→ **Content Angle**: Zephyr is doing great curation. The Boris Cherny quote is gold for a Bookmark Spotlight or News-jack.

**@hawchase17 (Harrison Chase)**
- "anyone looked into or using Open Knowledge Format (https://okf.to) for their wikis?" — 356 bookmarks
→ **Content Angle**: Knowledge management for agents — relevant to Pedigree documentation patterns.

**@ai_for_success (Ashutosh)**
- OpenScience dropped — open-source Claude Science with zero model lock-in, runs any model
→ **Content Angle**: Open-source version of Claude Science is a strong SaaS Idea candidate.

**@karpathy**
- Fable 5 threejs praise: "when the bear catches the salmon" — gorgeous 3D world generation

**@NousResearch**
- Retweeted Hermes Agent community activity — expanded plugin interface discussion

**@Teknium**
- New Hermes Agent users onboarding — "Welcome to the Hermes Agent crew"

---

## 🟡 YouTube Channels
**STATUS: All returned 403 Forbidden.** YouTube requires authenticated scraping (browser sign-in or API key). No new video data collected this tick.

**Recommendation**: Add YouTube Data API v3 key to ~/.env as `YOUTUBE_API_KEY` and switch to API-based channel queries for future ticks.

---

## 📋 Monday's Content Pipeline (Tomorrow)
Based on `content-themes.yaml` Monday schedule: **trending-repos** + **bookmark-spotlight**

### For Trending Repos thread:
1. **openai/codex-plugin-cc** — cross-agent Codex↔Claude Code orchestration (strong pick)
2. **alibaba/page-agent** — in-page GUI agent, overlaps GMB automation
3. **steipete/CodexBar** — usage stats dashboard (lightweight, relatable)
4. **OthmanAdi/planning-with-files** — persistent planning for agents (high Pedigree relevance)
5. **asgeirtj/system_prompts_leaks** — trending system prompt collection (cultural reference)
6. **JuliusBrussee/caveman** — "why use many token" — viral token-efficiency humor

### For Bookmark Spotlight:
- **Boris Cherny quote**: "I have a Claude that prompts other Claudes" — perfect Amplify+Apply
- **Always-on agents survey** by Elvis (omarsar0) — deep research summary
- **OpenScience** (Ashutosh) — open-source Claude Science

---

## ⚠️ Issues & Action Items
1. **YouTube 403**: Need API key or browser auth. All 17 channel checks returned empty.
2. **@yoheinakajim**: Handle not found — account may have changed handles. Marked as stale.
3. **Bookmark miner**: Not run this tick (bookmarks have their own cron at 7am Mon-Thu per schedule.yaml).
4. **news-jack SLA**: Nothing time-critical detected today (Sunday — news-jack is Mon-Thu per schedule).
