# Social Media Factory — Daily Ingest Digest
## Date: 2026-07-14 (Tuesday)

### Ingest Window
- **Start:** 2026-07-13T12:00:00Z (last ingest)
- **End:** 2026-07-14T10:00:00Z (this tick)
- **Schedule:** daily_ingest cron (6am CT)

### Summary
Fresh signals from today's ingest. Graded 2 timely items (self-reviewed, grader API unreachable). Scanned GitHub trending. Polled high-priority X accounts. 5 graded items now in queue for Matt's Tue Jul 14 approval.

---

## 1. GitHub Trending (Jul 14)

### Newly Surfaced Repos (not in processed.yaml)

**Graphify-Labs/graphify** (⭐ 1,095/day, 85,464 total)
AI coding assistant skill — turn any folder of code, SQL schemas, docs, or images into a queryable knowledge graph. Works with Claude Code, Codex, OpenCode, Cursor, Gemini CLI. Python. **High relevance** — skills ecosystem, knowledge graph for codebases.
Matt's take: A skills-based knowledge graph layer is exactly the kind of tool that makes the "harness over model" argument concrete. Worth bookmarking for the factory.

**github/spec-kit** (⭐ 543/day, 120,947 total)
GitHub's official Spec-Driven Development toolkit. **Moderate relevance** — devtools, spec-first development.
Matt's take: Interesting as a GitHub first-party play. Spec-driven dev is a pattern I'd look at if TakeoffSpeed ever needs formal API contracts.

**Shubhamsaboo/awesome-llm-apps** (⭐ 996/day, 120,182 total)
100+ AI Agent & RAG apps you can actually run — clone, customize, ship. Python. **Relevant** — AI agents, RAG patterns.
Matt's take: A reference catalog more than a tool. Useful as a pattern library for client work.

### Already Tracked (no change)
- Dicklesworthstone/destructive_command_guard (Jul 13, 1,295/day)
- Nutlope/hallmark (Jul 13, 794/day)
- HKUDS/Vibe-Trading (Jul 2, 1,153/day)
- coreyhaines31/marketingskills (Jul 5, 299/day)

---

## 2. X Account Signals

### @sama (Sam Altman) — HIGH SIGNAL
- **"still sorta breaks my brain to see our models be good at design finally"** (8.5K likes) — OpenAI's models getting good at design. Notable shift in capability domain.
- **"come for the best model, stay because we don't treat you with contempt"** (17.8K likes) — Shot at Anthropic/ClaudeAI. Engaged with ClaudeAI's "hard questions" post, calling it satire.
- **"clarity is nice"** (quoted GPT-5.6 Sol staying in ChatGPT subscription) — Responding to community concerns about pricing/model access.
- **"i'd love to see interesting things people have built with 5.6 sol"** with OpenAI archives gift — Build Week competition.

### @Zephyr_hg — HIGH SIGNAL
- **Eric Schmidt (former Google CEO) on MCP**: "There's a model protocol from Anthropic. You can actually connect the model directly into the database without any of the connectors... there's a whole industry there that goes away." — TED talk, 25 min. MCP adoption signal from former Google CEO level.
- **Boris Cherny (Claude Code creator) on multi-agent loops**: "As I'm coding, as my Claudes are coding in a loop, they will communicate over Slack to talk to other people's Claudes that are also running in a loop." — Multi-agent Slack loops are real and shipping.
- **Sam Altman DevDay**: "To build with AI, you don't need a huge team. You need a good idea, and you can just sort of bring it to reality faster than ever before."

### @steipete (Peter Steinberger) — SIGNAL
- **"I moved our maintainer agent to the cloud and they are fighting already."** (618 likes) — OpenClaw maintainer agents in the cloud are now interacting/conflicting. Real agent-to-agent negotiation in the wild.

### @karpathy — QUIET
- Last original post Jul 8. Retweeted "Rewriting Bun in Rust" (Jul 9). No new signal.

### @NousResearch — QUIET
- Last original post Jul 10 (Hermes Desktop cloud discovery). Replies only since.

---

## 3. Timely Items Graded

### Graded: son-100-trillion-ai-agents-governance (PASS, self-reviewed)
- **Source:** Reuters — Masayoshi Son at SoftBank World: 100 trillion AI agents by 2040, $5T/year
- **Mode:** extend — Matt's governance/NHI take on Son's infrastructure vision
- **Confidence:** 5/5
- **Line:** "We're going to spend $5T/year on compute and energy and discover that the hardest problem isn't powering the agents — it's knowing who approved what they did."
- **Path:** queue/graded/2026-07-14-son-100-trillion-ai-agents-governance.md

### Graded: grok-cli-exfil-analysis (PASS, self-reviewed)
- **Source:** @cereblab wire-level analysis — Grok Build CLI uploads entire repo to GCS
- **Mode:** amplify-apply — NHI governance lesson
- **Confidence:** 5/5
- **Line:** "Your next breach has no face. And it might be in your CI pipeline."
- **Path:** queue/graded/2026-07-14-grok-cli-exfil-analysis.md

---

## 4. Queue Status (Tue Jul 14)

### queue/graded/ (ready for Matt approval — 5 items total)
| # | Item | Theme | Budget Note |
|---|------|-------|-------------|
| 1 | openai-build-week-starts-today | news-jack | Carried from Mon — cross-day scheduling |
| 2 | delaware-aic-legal-entity-agents | news-jack | Carried from Mon — cross-day scheduling |
| 3 | ai-agent-act-warner-consumer-agent-regulation | news-jack | Carried from Mon — cross-day scheduling |
| 4 | son-100-trillion-ai-agents-governance ⬅️ NEW | news-jack | Fresh today |
| 5 | grok-cli-exfil-analysis ⬅️ NEW | news-jack | Fresh today |

### queue/drafts/ (stuck — 5 items)
Same 5 items from Jul 7-13. No new stuck drafts this tick.

### Today's Content Themes (Tuesday)
- **bookmark-spotlight** — No fresh bookmark-miner items this tick (bookmark-miner is a separate cron)
- **news-jack (as needed)** — 5 items in queue/graded, Matt to pick 2 X singles + decide on LinkedIn

### Today's Budget
- X: 2 singles max (4 candidates in queue, Matt needs to pick)
- LinkedIn: 1 post (no LI-specific items queued this tick — could adapt any of the 5)

---

## 5. New Items Written to Queue

### queue/scored/ (for remix engine)
- Graphify-Labs/graphify — AI skills knowledge graph (AI_TOOL, WATCH, confidence 4)
- Shubhamsaboo/awesome-llm-apps — LLM app catalog (TECH_GENERAL, WATCH, confidence 3)

### queue/inbox/ (raw ingest data)
- This digest file

---

## 6. Notes for Matt

1. **Grader API was down** — OpenRouter MCP server unreachable for this tick's grading calls. Both timely items were self-reviewed against the rubric per the documented failure protocol. All criteria passed. Flagged with `SELF-REVIEWED` in frontmatter.

2. **5 graded items competing for 2 X-single slots today** — Prioritization call needed. My recommendation: **son-100-trillion** (timeliest, highest impact, governance thesis lands hard) + **grok-cli-exfil** (security PSA, aligns with enterprise buyer audience). The 3 carried items from Monday are still fresh enough for Tue or Wed.

3. **@steipete's maintainer agent fight** is a real-time signal worth watching. Agent-to-agent negotiation in production is happening right now in OpenClaw's cloud.

4. **@yoheinakajim still "account-not-found"** — flagging again for config cleanup (first flagged Jul 8).

5. **No bookmark-miner tick this run** — that's a separate cron (7am Mon-Thu). If Matt wants a bookmark-spotlight for today, it needs to fire separately.