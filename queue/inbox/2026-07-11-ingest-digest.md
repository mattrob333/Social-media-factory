---
generated_at: "2026-07-11T06:00:00Z"
date: 2026-07-11
theme: daily-ingest
---

# Daily Ingest Digest — Saturday, July 11, 2026

**Today is a weekend day (Saturday). Per schedule.yaml active_days [0-4], no posting occurs. Ingest runs to feed Monday's queue.**

**Monday's themes:** trending-repos, bookmark-spotlight
**Tuesday's themes:** bookmark-spotlight, news-jack (as needed)

---

## 1. YouTube Channels — SKIPPED (Persistent 403)

All 17 tracked channels still returning HTTP 403. YouTube requires authenticated access. **16 consecutive ticks with zero YouTube data.** This is a material data gap — every channel from Jack Roberts to Matt Wolfe to Greg Isenberg has been unreachable since initial setup. Consider YouTube Data API v3 key or a cookie-based approach.

---

## 2. GitHub Trending — Saturday, Jul 11

### Already tracked, still trending (star velocity):

| Repo | Stars today | Trend | Key for Matt? |
|------|-------------|-------|---------------|
| mattpocock/skills | 1,712 (NEW) | 🚀 surging | Skills as files, TypeScript expert, 165k stars |
| iOfficeAI/OfficeCLI | 1,224 (steady) | → steady | Boring vertical enterprise wedge |
| addyosmani/agent-skills | 1,116 (steady) | → steady | Skills-as-files pattern |
| obra/superpowers | 1,013 (steady) | → steady | Skills framework |
| DesktopCommanderMCP | 328 (steady) | → steady | MCP for Claude terminal/file control |
| stitch-skills (Google) | 117 (steady) | → steady | Google skills standard |
| TencentDB-Agent-Memory | 123 (steady) | → steady | Agent memory store |

### New repo crossing threshold:

**mattpocock/skills** — 1,712 stars/day, 165,139 total stars (NEW)
Matt Pocock's personal `.claude` skills directory, open-sourced. Shell 77%, JavaScript 23%. 290+ commits, v1.1.0 released Jul 8. Skills for "real engineers" — planning, spec writing, ticket generation, implementation patterns. The repo has been refactored into a /to-spec → /to-tickets → /implement pipeline.
**Matt's take:** Pocock is one of the sharpest TypeScript educators in the industry. His skills repo is effectively a shipping methodology codified into agent prompts. The /to-spec → /to-tickets → /implement chain mirrors how Pedigree manifests should flow. Worth studying as a reference architecture for skills-as-governance-artifacts. Not a direct tool to adopt but instructive for the Hermes skills pattern.

**Daily limit (max 8 repos per github-trending.yaml):** Only 1 genuinely new repo met relevance + min_stars threshold. Remaining 7 are already tracked and continuing.

---

## 3. X Accounts — Saturday, Jul 11 Tick

### HIGH-SIGNAL (remix candidates):

**1. 🚨 Hermes Agent now PREINSTALLED on rabbitOS 2.3**
- Source: @NousResearch (1,206 likes, 202 bookmarks) + @rabbit_hmi (1,278 likes)
- rabbitOS 2.3 ships Hermes Agent, OpenClaw v4, proactive rabbit, creations gallery 1.5, DLAM BYOK
- Hermes Desktop app now auto-discovers Hermes Cloud agents (sign in with Nous Portal)
- **Remix angle: Amplify+Apply** — "Hermes on a mobile device changes the 'agent per employee' equation. The physical form factor matters for field ops — construction sites, inspections, warehouse. Rabbit r1 + Hermes = pocket operator."
- **Remix angle: Extend** — "rabbit + Hermes is interesting. The missing piece for enterprise: Pedigree identity layer so that Hermes-on-rabbit knows who it is, what it can access, and who approved its actions."

**2. GPT-5.6 Sol becomes preferred model in Microsoft 365 Copilot**
- Source: @sama (2,980 likes, 153 bookmarks)
- "GPT-5.6 is now the preferred model in Microsoft 365 Copilot" — major enterprise adoption signal
- Sam also RT'd OpenAI Build Week (starts Jul 13) and Tibo's Codex/ChatGPT Work rate limit reset
- Also noted "Muse Spark 1.1" by Meta benchmark jump via @alexandr_wang (new benchmark)
- **Remix angle: Amplify+Apply** — "Microsoft choosing 5.6 Sol for 365 Copilot is the kind of signal that actually moves enterprise buying decisions. Not a blog post — a deployment preference."

**3. The Sol vs Fabe split in community is real**
- Source: @mattshumer_ vs @MatthewBerman (thread)
- Matt Shumer: strongly prefers Fable ("so much better for out-of-distribution stuff," "5.6 Ultra mode deleted files")
- Matthew Berman: "I greatly prefer sol. Crazy how different our experiences are!"
- Theo: "I would like to thank OpenAI for putting out a model exactly good enough to force Anthropic to keep bundling Fable in the Claude Code plan"
- **Remix angle: Disagree+Why** (with nuance) — "Sol vs Fable isn't a debate. It's the market working. Sol for throughput/price, Fable for hard problems. Pick the right tool — this is literally the 'harness over model' thesis playing out in front of everyone."

**4. Boris Cherny (Claude Code creator): "I haven't coded in 6 months"**
- Source: @Zephyr_hg
- "He builds all day but hasn't written a line of code in six months. He has a Claude that prompts other Claudes."
- Zephyr's continuing series of AI solo-millionaire clips (now including Jacob Bank 40 agents, Sam Altman "one person company" keynote, Dario Amodei "blind spot" interview)
- **Remix angle: Amplify+Apply** — "The creator of Claude Code doesn't write code anymore. He builds setups. This is the endgame: the highest leverage operator isn't the best coder — it's the person who designs the agent system."

**5. dax (thdxr): "Only 2 companies do model hosting well" + 4.6M weekly actives**
- Source: @thdxr (39K impressions)
- "companies get GPUs → realize model hosting is hard → rent the GPUs instead → now only 2 companies do model hosting well"
- Revealed OpenCode has **4.6 million weekly active users** (staggering number)
- **Remix angle: Extend** — "4.6M weekly actives on OpenCode. The AI coding market isn't emerging — it's emerged. The winners are the platforms, not the models."

**6. steipete (Peter Steinberger): Chollet "agentic coding completely different world"**
- Source: @steipete RT @fchollet
- François Chollet: "It's mind-blowing how fast agentic coding has progressed in the past 6 months. It's a completely different world now."
- steipete also RT'd pvncher's "5.6 Sol needs different prompting than 5.5" guide
- OpenClaw working on GPT-5.6 support (preliminary, needs code after OpenAI announcement)
- **Remix angle: Extend** — "Chollet saying 'completely different world' about agentic coding in 6 months. The people who are still optimizing their 2024 workflows are losing. This speed is the opportunity."

**7. Logan Kilpatrick: "privilege to feel the texture of progress"**
- Source: @OfficialLoganK (986 likes, 33 bookmarks)
- "what a privilege it is to feel the texture of progress as we keep pushing"
- Also engaged with questions about Google AI Studio domain acquisition
- **Remix angle:** Low standalone POV but worth watching for Google's next moves.

**8. Rasmic: Cloud agents for E2E testing via phone**
- Source: @Rasmic (49 likes, 27 bookmarks)
- "Use cloud agents to generate a test plan and then using computer use test the entire app end to end"
- Also posted about using cloud agents from his phone
- **Remix angle:** Interesting workflow methodology — not a standalone post but pattern to capture for content.

### MEDIUM-SIGNAL:

**9. Teknium: Hermes Master Class Module 10 on Security**
- Source: @Teknium
- tonbistudio released Module 10 (security) of Hermes Agent Masterclass series
- Community-built Hermes skill for lyric videos with GPT-5.6 + GPT-Image-2
- DGX Spark playbook skill created

**10. ai_for_success: Muse Spark 1.1 benchmark comeback**
- Source: @ai_for_success quoting @alexandr_wang
- "Meta really made a huge comeback this week with Meta Muse Spark 1.1"
- Also sharing his workflow: "design with Fable 5, code with Grok 4.5 or GPT-5.6 Sol"

**11. jxnlco: "great time to know what you want out of the world"**
- Source: @jxnlco (96 likes)
- Philosophical post, not AI-specific, but from a strong source

**12. Harrison Chase: OpenSWE + agent PR review prompt pattern**
- Source: @hwchase17 (retweets)
- Brace Sproul's prompt hack: "tell the agent your coworker who you don't trust/think is that smart put up the PR, and it'll tend to find improvements" — clever social engineering hack for agent code review
- OpenSWE from Slack workflow being used by Ankush Gola

### LOW-SIGNAL (no new standalone takes):

- @natiakourdadze — "Cancelled Claude sub, vibe coded with GPT 5.6 for $10,500" (as a joke post)
- @karpathy — No new top-level posts
- @dotta — No new posts
- @codyschneider — No new posts
- @danshipper — No new posts
- @rauchg — No new posts

---

## 4. Monday's Content Theme Inventory

### Trending Repos (Monday)
The **mattpocock/skills** repo is this tick's only new stand-out. Write a short paragraph for Monday's trending-repos post. The narrative hook: "The seventh skills repo to trend this month — skills-as-files is the new README."

### Bookmark Spotlight (Monday + Tuesday)
Bookmark-miner scheduled at 7am Mon-Thu. No bookmark mining on weekends. Check queue/scored/ after Monday's tick.

### News-Jack Fast Lane
Top candidates from this ingest cycle for Monday:

1. **Hermes on rabbitOS** — the most significant single signal. A mobile hardware + Hermes + OpenClaw bundle is the kind of product announcement that changes the agent deployment conversation.
2. **Sol vs Fable split** — community discourse is a real, accessible post. The "harness over model" framing maps perfectly.
3. **Boris Cherny "hasn't coded in 6 months"** — sticky quote, strong narrative, maps to Matt's operator-pilot voice.
4. **GPT-5.6 in M365 Copilot** — enterprise signal, but less contrarian / less new take available.

---

## 5. State Notes

- **YouTube auth:** Still broken (403). 16 consecutive ticks with zero YouTube data. This is a widening data gap — 17 channels untouched. Recommend YouTube Data API v3 key setup.
- **@yoheinakajim:** Still "account-not-found." Flag for removal from x-accounts.yaml was made Aug 8 — two more ticks have passed. Config update needed.
- **@sama last_processed:** Updated to 2075670358339080424 (RT: OpenAI Build Week + M365 Copilot announcement + rate limit reset RTs)
- **@steipete last_processed:** Updated to 2075854636339401107 (Chollet RT, Bun/Zig RT, pvncher prompt guide RT, OpenClaw 5.6 support reply)
- **@Teknium last_processed:** Updated to 2075895354235789500 (Masterclass Module 10, DGX Spark skill, community lyric video skill)
- **@NousResearch last_processed:** Updated to 2075698031844818990 (rabbitOS deal + Hermes Desktop cloud discovery)
- **@thdxr last_processed:** Updated to 2075822136535458289 (model hosting take, 4.6M actives, pricing discussion)
- **@karpathy last_processed:** Unchanged (no new top-level posts since Jul 10)
- **@Zephyr_hg last_processed:** Updated to 2075852089402769420 (Boris Cherny quote, Sam Altman keynote, Dario Amodei, Jacob Bank series)
- **@Rasmic last_processed:** Updated to 2075799360927871306 (cloud agent E2E testing, phone agent use)
- **@MatthewBerman last_processed:** Updated to 2075789897391349977 (prefers Sol over Fable, replying to Shumer/Theo)
- **@ai_for_success last_processed:** Updated to 2075885205668397446 (Muse Spark 1.1, Grok 4.5 workflow, AirKV app)
- **@OfficialLoganK last_processed:** Updated to 2075764463614247286 (texture of progress, Google AI Studio domain)
- **@jxnlco last_processed:** Updated to 2075819379238097158 (philosophical posts, antirez RT)
- **@hwchase17 last_processed:** Updated to 2075790637543391524 (OpenSWE, PR review prompt hack, Soft-Cache paper)
- **@natiakourdadze last_processed:** Updated to 2075836242541883808 (joke post about cancelling Claude)

### GitHub trending repos added:
- **mattpocock/skills** — NEW (1,712 stars/day, 165k total)

### Graded items still waiting on Matt (queue/graded/):
- 8+ graded items from Jul 8-9 (claude-cowork-mobile-web, brainbase-ai-agent-cloud, gpt-56-sol-governance-b2b, gpt-live-voice, top-tools-linkedin, anthropic-sues-abnormal, macos-computeruse-forbidden-targets, gpt-5-6-sol-launch-thursday)
- All need Telegram approval before they can move to queue/approved/

### Stuck drafts still in queue/drafts/ (from Jul 7-9):
- 5 drafts flagged as stuck after 2 failing grading passes
- All need human review — cannot auto-fix per grading rules
