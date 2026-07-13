---
platform: linkedin
type: post
theme: trending-repos
pillar: "Workflow automation & agent building"
remix_mode: extend
source: "queue/scored/2026-07-01 and 2026-07-02 GitHub trending batch"
detected_at: 2026-07-13T13:00:00Z
---

Six repos hit GitHub trending over the last two weeks that all point at the same shift: nobody's shipping a smarter model. They're shipping the plumbing around it.

[browser-use/video-use](https://github.com/browser-use/video-use) — the team behind the browser-automation agent library shipped coding-agent-driven video editing, +722 stars in a day. Same pattern as browser automation, just pointed at a new app. Agents driving your existing tools, not bespoke integrations.

[diegosouzapw/OmniRoute](https://github.com/diegosouzapw/OmniRoute) — a free, self-hostable gateway routing across 231+ model providers with automatic fallback and 15-95% token compression. Model routing just got commoditized into a config file. Your "model strategy" isn't a strategy anymore, it's a YAML.

[obra/superpowers](https://github.com/obra/superpowers) — an agentic skills framework packaged as a forkable repo, +884 stars in a day, with Claude itself listed as a contributor. This is the same shape as the skill libraries I run internally for client agent builds: reusable playbooks, not one-off prompts.

[usestrix/strix](https://github.com/usestrix/strix) — an open-source AI agent that autonomously pen-tests web apps, +1,200 stars in a day. Here's the question nobody's asking loud enough: would you let this agent run unsupervised against production with no audit trail? Security tooling is where agentic AI has to prove it can be trusted with something that breaks expensively if it's wrong.

[HKUDS/Vibe-Trading](https://github.com/HKUDS/Vibe-Trading) — an open-source personal trading agent from a university lab, +694 stars in a day. The academic version is a toy strategy wrapped in a genuinely reusable execution harness. Worth stealing the plumbing, not the alpha.

[TencentCloud/CubeSandbox](https://github.com/TencentCloud/CubeSandbox) — a secure, concurrent sandbox purpose-built for agents to execute code at scale, from a major cloud vendor. When Tencent Cloud ships dedicated agent sandboxing, that's your confirmation governance stopped being optional at scale.

The model isn't the bottleneck. It hasn't been for a year. The bottleneck is whoever hasn't built the harness — the routing, the skills library, the sandbox, the audit trail — around the model they already have.
