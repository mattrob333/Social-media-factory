<!-- GRADED: PASS (all 7 criteria by mcp_openrouter_chat_send, model: deepseek/deepseek-v4-flash) — rewritten on pass 2 to name Lilian Weng's actual 3 harness patterns (workflow automation, file system as persistent memory, sub-agents) after pass-1 FAIL on CONCRETE for citing "4 patterns" without naming them -->
---
platform: x
type: single
detected_at: 2026-07-07T13:50:20Z
theme: news-jack
mode: amplify-apply
source: "https://x.com/lilianweng/status/2074372369213428144"
verified_source: "https://lilianweng.github.io/posts/2026-07-04-harness/"
attribution: "Lilian Weng (@lilianweng)"
---

OpenAI's former VP of Research just published the most concrete post yet on harness engineering.

Three patterns, named plainly: workflow automation, file system as persistent memory, and sub-agents for backend jobs. That's Claude Code and Codex's actual architecture, not theory.

The key line: "Even when many harness improvements get internalized into the core model, the need to specify goals and context will not disappear."

Translation: better models don't kill the need for a good harness. They just move the bar. The wrapper — how the agent perceives context, stores state, and delegates — is a permanent layer, not a stopgap until GPT-N.

Read the full post. Then go build the file-system memory pattern into your agent instead of waiting on the next model drop.
