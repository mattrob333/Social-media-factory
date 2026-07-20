---
platform: x
type: single
detected_at: 2026-07-20T10:35:00Z
theme: news-jack
mode: extend
source: "https://x.com/Teknium/status/2079151450622722489 https://x.com/hwchase17/status/2078576948922708200"
verified_source: "https://api-docs.deepseek.com/updates"
---

DeepSeek kills deepseek-chat and deepseek-reasoner on Thursday at 15:59 UTC. No grace period. One-line fix.

Everyone knows that part.

The trap: deepseek-reasoner maps to V4-Flash by default, not V4-Pro. If your chain-of-thought workloads depended on the reasoner alias, a find-and-replace to flash silently degrades your outputs.

Second trap: V4-Flash defaults to thinking mode ON. Old deepseek-chat was thinking OFF. Swap the name without checking the parameter and your latency, token counts, and bills all shift.

This is the same pattern I see in every migration I've consulted on: teams treat a model rename as a trivial find-and-replace. They never read the migration notes. They never re-run their eval set. They find out something changed when the call center lights up.

The fix isn't complicated — audit your codebase, decide V4-Flash vs V4-Pro per call, add thinking=disabled if you need speed, re-run your evals. But that's a checklist, not a one-liner, and most teams will skip the checklist.

The harness beats the model every time. In this case, the harness is knowing which endpoint maps to which tier — and auditing before the deadline, not after the error.

MODE: extend
DOMAIN: workflow automation & agent building
ATTRIBUTION: none
CONFIDENCE: 4