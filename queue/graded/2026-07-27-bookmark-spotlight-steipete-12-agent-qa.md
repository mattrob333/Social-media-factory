---
platform: x
type: single
theme: bookmark-spotlight
source: "@steipete — 12-subagent parallel QA for OpenClaw"
source_url: "https://x.com/steipete/status/2081207671911592141"
generated_at: 2026-07-27T06:00:00Z
status: DRAFT — needs grading before approval
---

**Hook:** Peter Steinberger just described the exact multi-agent pattern I've been calling the Shadow Org — running in production, at OpenClaw scale.

**What it is:** He ran "codex all day" doing massive parallel QA for OpenClaw's next release. Not one agent. 12 subagents — each splitting up functionality, spinning up dev gateways with different ports, stress testing, creating PRs autonomously.

**What it does:** The prompt is the architecture: "Do a full end-to-end QA test. Use 12 subagents to split up functionality. Find 200 bugs. Fix the root cause each time, no band-aids. Refactors are okay, unless they touch the plugin SDK boundary. Write a test report."

**Practical use case:** Instead of one agent running a single test suite, you get a swarm: each subagent owns a slice of functionality, they run in parallel, they fix what they find, and the orchestrator tracks the whole thing. The prompt is the plan, the agents execute it.

**Matt's take:** This is the most honest deployment of multi-agent systems I've seen published. Not a demo. Not a framework. 12 agents, one goal, real PRs, real fixes. The "agents fighting each other" post was the setup. This is the punchline.

The model doesn't matter. The orchestration pattern does.