---
platform: x
type: thread
theme: trending-repos
generated_at: 2026-07-27T06:00:00Z
status: DRAFT — needs grading before approval
---

The week OpenAI had makes you think about model diversity.

Here's what's actually trending on GitHub while ChatGPT recovers.

A few that caught my eye:

1/5

**citrolabs/ego-lite** (900★/d)
github.com/citrolabs/ego-lite

The fastest browser for AI agents. Share your logged-in browser state with Codex or Claude Code without them disturbing you. Zero cost, zero config.

If you're running agents in production, browser state sharing is the single biggest quality-of-life improvement you're not using. Ego-lite makes it trivial.

Clone this if: you run AI coding agents and want them to see what you see.

2/5

**alibaba/open-code-review** (832★/d)
github.com/alibaba/open-code-review

Battle-tested at Alibaba's scale. Hybrid architecture: deterministic pipelines (NPE, thread-safety, XSS, SQL injection rulesets) + LLM Agent for semantic review. Precise line-level comments. OpenAI & Anthropic compatible.

The hybrid pattern is the key insight — rules catch what rules catch, models catch what models catch, and you don't confuse the two.

Clone this if: you're building agent skills for code review and want to see the architecture right.

3/5

**pbakaus/impeccable** (413★/d)
github.com/pbakaus/impeccable

A design language that makes your AI harness better at design. 51,000★ already.

The name is earned. Most "AI design tools" are wrappers around a prompt. This is a design system purpose-built for how models think about layout. The "harness over model" thesis applied to UI.

Clone this if: you're building AI-powered interfaces and want the model to stop guessing about spacing.

4/5

**virgiliojr94/book-to-skill** (417★/d)
github.com/virgiliojr94/book-to-skill

Turn any technical book PDF into a Claude Code skill. Ready to study, reference, and use while you work.

This is the knowledge-to-skill pipeline I've been waiting for. Instead of pasting a textbook into context, you get a skill the agent can load on demand. The "skills as infrastructure" thesis validated by a single CLI command.

Clone this if: you want your Claude Code agents to have working knowledge of every book you own.

5/5

**block/buzz** (1,710★/d)
github.com/block/buzz

Hive mind communication platform from Block/Square. Rust-based, open-source, 14,000★ in days.

The hype is about decentralized comms. What I see is the swarm communication pattern — agents broadcasting to each other through a shared channel. The same pattern Boris Cherny described (Claudes talking to each other over Slack), but purpose-built for agent-to-agent.

Clone this if: you're thinking about how your agents will coordinate without a single orchestrator.

—

That's the week's trending batch. The common thread: the ecosystem is building *around* models, not replacing them. Harnesses, skills, browsers, review tools — all the leverage is in the infrastructure layer.

That's where the moat is, not in picking the next model.