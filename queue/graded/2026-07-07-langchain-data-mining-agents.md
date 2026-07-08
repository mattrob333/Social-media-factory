<!-- GRADED: PASS (all 7 criteria by mcp_openrouter_chat_send, model: deepseek/deepseek-v4-flash) -->
---
platform: x
type: single
detected_at: 2026-07-07T23:55:00Z
theme: news-jack
mode: amplify-apply
source: "https://x.com/hwchase17/status/2074642346130776323"
verified_source: "https://www.langchain.com/blog/improving-agents-is-a-data-mining-problem"
---

Vivek Trivedy and the LangChain Labs team just published something I've been saying for months: improving agents is a data mining problem, not a model problem.

Their team mined agent traces, found failure patterns (plan-flailing, no self-verification, zero testing), and gained 13.7 points on Terminal Bench 2.0 by tweaking only the harness — same model the whole time.

The key line: "Evals are training data for agents."

Every failure in production becomes a target you build an eval for. Every eval you pass becomes a signal to fine-tune a smaller, cheaper model. The model is a source of intelligence; the harness is what shapes it, tests it, and makes it deployable.

Stop shopping for models. Start mining your traces.

MODE: amplify-apply
DOMAIN: agent building / AI thought leadership
ATTRIBUTION: credit Vivek Trivedy / LangChain Labs for the research and blog
CONFIDENCE: 5