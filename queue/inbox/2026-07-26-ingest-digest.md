# Daily Ingest Digest — Sun Jul 26, 2026

**Week 5 / Day 1.** Today's theme: **Weekend ingest** (Sunday — no new social posts per schedule.yaml active_days). Last ingest: Sat Jul 25.

**Weekly calendar:** Sunday has no scheduled content themes. This tick is a maintenance scan — check for breaking news updates, GitHub trending, and X account signals. Tomorrow (Monday) is **trending-repos + bookmark-spotlight** posting day.

---

## 1. BREAKING NEWS — NEWS-JACK CANDIDATES

### 🚨 ChatGPT Outage — Still in Monitoring (Jul 25-26)
**Source:** OpenAI Status (https://status.openai.com/incidents/01KYDN6YPS6ARY1EC9089N089G)
**Signal:** HIGH — ongoing, not yet resolved

**Status update:** The outage that began ~1:00 PM PT on Jul 25 is still in **Monitoring** status as of Jul 26 (~12+ hours since start). OpenAI implemented mitigations and error rates have decreased, but **degraded performance persists** for some ChatGPT conversations. The incident timeline:
- **06:09 PM PT (Jul 25):** Investigating — intermittent errors preventing conversation loading
- **07:16 PM PT:** Identified source, error rates decreasing
- **07:57 PM PT:** Mitigation implemented, monitoring recovery

**Matt's angle (still valid):**
- The "don't build on a single model" thesis gets stronger by the hour. 12+ hours of degraded ChatGPT is a real enterprise trust issue.
- The irony of OpenAI having two major incidents in one week (HF breach + ChatGPT outage) is now a pattern worth commenting on. **Double-incident week** is a framing that extends yesterday's take.

**Recommendation:** If Matt wants to post Monday (trending-repos day), consider leading with a one-line opener that references "the week OpenAI had" before pivoting to the repos. Or this can be a standalone X single for Monday morning.

### OpenAI HF Breach Follow-Up — No New Developments
**Signal:** STABLE — no new statements from OpenAI since Jul 25 statement. Awaiting technical report "in coming weeks."

### @ai_for_success: "Anthropic went from most loved to most hated"
**Source:** @ai_for_success (https://x.com/ai_for_success/status/2081332399304999317)
**Signal:** MEDIUM — social sentiment observation, not hard news

Ashutosh posted: "It's wild how Anthropic went from the most loved AI lab to the most hated in such a short time." This reflects the shifting sentiment around Anthropic since the CISO departure and recent policy debates.

**Matt's angle:** **Extend** — "The most loved to most hated arc isn't about Anthropic changing. It's about the industry waking up to the fact that every AI company is a governance company now. The honeymoon phase is over for everyone once you're big enough to matter." Could pair with Pedigree's NHI thesis.

### @natiakourdadze: Lead Gen Playbook Thread
**Source:** @natiakourdadze (https://x.com/natiakourdadze/status/2081306850687934857)
**Signal:** MEDIUM — actionable but not directly in Matt's core content pillars

Posted a detailed lead gen playbook: Trustpilot reviews → LinkedIn outreach → email follow-up. Practical, getting traction.

**Matt's angle:** **Translate** — "That Trustpilot method works. The step people skip is the actual value prop when they reach out." Could tie to TakeoffSpeed's customer acquisition framework.

### ChatGPT Voice + Computer Control Demo Circulating
**Source:** Multiple accounts
**Signal:** LOW-MEDIUM — feature demo, not breaking

Users sharing demos of ChatGPT Voice with computer control and new integrations (Health, Presence).

---

## 2. X Account Signals (Sun Jul 26 scan)

### Priority accounts with new activity:

| Account | Signal | What's New |
|---------|--------|-----------|
| @ai_for_success | **MEDIUM** | Anthropic sentiment observation — "most loved to most hated" |
| @natiakourdadze | **MEDIUM** | Lead gen playbook thread, very active |
| @yacineMTB | **LOW** | Playful technical posts, replies |

### Accounts with no new activity since last check:
- @karpathy — no new posts in window
- @sama — no new posts in window
- @OpenAI — HF breach statement from Jul 25, no new updates
- @steipete — autoreview 66-round record still latest (Jul 25)
- @Zephyr_hg — Anthropic 12-hour agents still latest (Jul 25)
- @thdxr — teasing publish (Jul 25), no new posts
- @Teknium — "write your own tweets" still latest (Jul 25)
- @Rasmic — last seen Jul 22
- @hwchase17 — last seen Jul 22
- @MatthewBerman — last seen Jul 22
- @jxnlco — last seen Jul 22
- @NousResearch — last seen Jul 23
- @rauchg — last seen Jul 23
- @AnthropicAI — no new posts in window
- @yoheinakajim — **STILL account-not-found (26 days) — recommend removal from config**
- @nutlope — no new posts since Jul 17 (9 days stale)
- @boringmarkete — no new posts since Jul 17 (9 days stale)

### X bookmarks:
**Still blocked** — X API credits exhausted since Jul 2. Needs xAI credit top-up to resume.

---

## 3. GitHub Trending (Jul 26, daily scan)

### Top repos today (filtered by relevance to AI/agents/automation/devtools):

| Repo | Stars Today | Why It Matters |
|------|-------------|---------------|
| **block/buzz** | 2,491★/d | Hive mind communication platform (Rust) — Block/Square open source. Still surging from Jul 25 (was 3,270★/d, now 12,506★ total). Decentralized comms angle. |
| **mattpocock/skills** | 1,740★/d | Skills for Real Engineers — agent skills from .agents directory. **Directly relevant to Hermes ecosystem.** Now 188,860★ total. Still one of the fastest-growing repos. |
| **permissionlesstech/bitchat** | 1,720★/d | Bluetooth mesh chat (Swift). IRC vibes. Novel but not directly relevant. |
| **citrolabs/ego-lite** | 986★/d | Fastest browser for AI agents — share browser state with Codex/Claude Code. **Directly relevant** — increasing velocity (was 880★/d yesterday, now 986★/d). |
| **obra/superpowers** | 479★/d | Agentic skills framework & development methodology. **Directly relevant** — Hermes ecosystem. |
| **alibaba/open-code-review** | 431★/d | **NEW** — Battle-tested code review tool: deterministic pipelines + LLM Agent, line-level comments, built-in rulesets (NPE, thread-safety, XSS, SQL injection). **Directly relevant** — code review is a core agent skill area. |
| **CoreBunch/Instatic** | 426★/d | Open-source Webflow/Framer alternative. Agentic CMS. Still trending. |
| **palmier-io/palmier-pro** | 412★/d | macOS video editor built for AI (Swift). Interesting but niche. |
| **Lordog/dive-into-llms** | 408★/d | LLM learning path. Still trending, educational. |
| **affaan-m/ECC** | 377★/d | Agent harness performance optimization system. Skills, instincts, memory, security for Claude Code/Codex/Cursor. **Directly relevant** — harness ecosystem. |
| **OtterMind/Chat2DB** | 360★/d | AI-driven database tool. Still trending. |
| **Pumpkin-MC/Pumpkin** | 358★/d | Minecraft server in Rust (noise filtered). |
| **shiyu-coder/Kronos** | 319★/d | Financial markets foundation model. |
| **Automattic/harper** | 503★/d | Privacy-first grammar checker. Rust-powered. Offline-first. |
| **ComposioHQ/awesome-claude-skills** | 577★/d | Curated Claude skills list. Still trending. |
| **anthropics/claude-cookbooks** | 132★/d | Official Claude notebooks/recipes. |
| **andrewyng/aisuite** | 77★/d | Unified GenAI interface. |

### Python trending (additional finds):

| Repo | Stars Today | Why It Matters |
|------|-------------|---------------|
| **virgiliojr94/book-to-skill** | 358★/d | **NEW** — Turn any technical book PDF into a Claude Code skill. 9,914★ total. **Directly relevant** — agent skill creation pipeline. |
| **xbtlin/ai-berkshire** | 158★/d | Value investing research framework for Claude Code/Codex — multi-agent adversarial analysis. Novel use case. |
| **OpenDCAI/DataFlow** | 118★/d | Easy data preparation with LLMs. |

### Key takeaways for content (Monday trending-repos):
1. **alibaba/open-code-review** — NEW this tick. Battle-tested at Alibaba scale, hybrid deterministic + LLM agent architecture. This is exactly the kind of enterprise agent skill Matt writes about. Worth a repo slot in Monday's trending-repos thread.
2. **mattpocock/skills** — Still the #2 repo by velocity. The "skills from .agents directory" paradigm continues to validate OpenClaw's direction.
3. **citrolabs/ego-lite** — Increasing velocity (986★/d, up from 880★/d). Agent browser automation is a hot space. Directly relevant to Matt's stack.
4. **virgiliojr94/book-to-skill** — NEW, 358★/d on day one. Converting books to Claude Code skills is exactly the kind of "harness over model" content Matt would amplify. Strong bookmark-spotlight candidate.

---

## 4. Newsletter — Issue #4 Status

**Status:** 🟡 **COMPILED** (not yet deployed)

File: `queue/network/issue-4-2026-07-24.html`
YAML: `queue/network/issue-4-2026-07-24.yaml`

**Still needs:** Hero image, final link insertions, platform deployment.

**Note:** The ChatGPT outage (Jul 25-26) is NOT in Issue #4. If Matt wants to include it, it would need a last-minute add or a dedicated news-jack post.

---

## 5. Content Inventory — Week 4/5 Status

| Day | Post | Status |
|-----|------|--------|
| Mon Jul 21 | X Thread — Ryan Carson $30k/mo AI dev credits | ✅ Published |
| Tue Jul 22 | LinkedIn Post — Forward-deployed | ✅ Published |
| Wed Jul 23 | X Single — Zephyr "anyone can build" (disagree+why) | ✅ Published |
| Thu Jul 24 | X Single — omarsar0 LLM coordination (harness over model) | ✅ Published |
| Fri Jul 25 | Newsletter Issue #4 | 🟡 Compiled (needs review + deploy) |
| **Sat Jul 26** | **No scheduled posts** | **Weekend — ingest only** |
| **Sun Jul 27** | **No scheduled posts** | **Weekend — ingest only** |
| **Mon Jul 28** | **X Thread — Trending Repos (Week 5)** | **🔴 NEEDS DRAFTING** |
| **Mon Jul 28** | **Bookmark Spotlight (as available)** | **⚠️ Depends on queue** |
| Tue Jul 29 | LinkedIn Post — TBD | Unscheduled |
| Wed Jul 30 | Top 10 AI Tools This Week | Scheduled |
| Thu Jul 31 | SaaS Idea of the Week | Scheduled |

**_NOTE:_ Above calendar is pre-populated from content-themes.yaml. Monday's trending-repos thread needs fresh drafting from this tick's GitHub trending data.**

---

## 6. Ongoing Blockers & Issues

### 🔴 Critical
- **YouTube scraping: STILL BLOCKED** — persistent 403 errors on all 17 channels. Needs OAuth implementation. Blocked for weeks. This is the primary source of remix content that's entirely offline.
- **X bookmarks: STILL BLOCKED** — X API credits exhausted since Jul 2. Needs xAI credit top-up.

### 🟡 Warning
- **@yoheinakajim account-not-found** — 26 days without resolution. **Recommend removal from x-accounts.yaml.**
- **@nutlope** — 9 days stale (last seen Jul 17)
- **@boringmarkete** — 9 days stale (last seen Jul 17)
- **HF breach duplicate backlog** — 7 graded items on same event. Let them lapse; the event is now a week old.
- **14 stuck drafts** — unchanged from last tick. All in queue/drafts/ awaiting Matt's review.
- **Newsletter Issue #4** — Still not deployed (compiled since Jul 24). Running a week behind on publication.

### ✅ Good
- GitHub trending pipeline working
- X account scanning working (via xAI/SuperGrok)
- Content pipeline flowing (graded → drafts → approved for past weeks)
- OpenAI status monitoring accessible for news-jack detection
- Content themes for Week 5 ready (calendar pre-populated)

---

## 7. Key Metrics

| Metric | Value |
|--------|-------|
| Today's date | Sun Jul 26, 2026 |
| Active posting day? | No (weekend) |
| Newsletter Issue #4 status | 🟡 Compiled (needs review + deploy) |
| ChatGPT outage status | 🔴 Monitoring (degraded, 12+ hrs) |
| Fresh news-jack candidates | 1 updated (ChatGPT outage still monitoring), 2 low-medium |
| Graded items in backlog | 30+ |
| Stuck drafts | 14 (unchanged) |
| YouTube scraping | ❌ Blocked (403 errors, needs OAuth) |
| X bookmarks | ❌ Blocked (X API credits exhausted since Jul 2) |
| X account scanning | ✅ Working (via xAI/SuperGrok) |
| GitHub trending | ✅ Working |
| Accounts gone stale | 3 (@yoheinakajim 26d, @nutlope 9d, @boringmarkete 9d) |
| Week 4 publishing | 4/4 posts published ✅ |
| Week 5 prep needed | Mon Jul 28 trending-repos thread needs drafting THIS TICK for Monday morning |