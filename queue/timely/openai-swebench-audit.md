---
platform: x
type: single
detected_at: 2026-07-09T15:30:00Z
theme: news-jack
mode: extend
source: "https://x.com/MatthewBerman/status/2074978618917388417"
verified_source: "https://x.com/OpenAI/status/2074972179385720836"
attribution: "OpenAI"
---

OpenAI audited the leading coding benchmark and found 30% of its tasks are broken. Correct solutions fail because of contradictory instructions, hidden requirements, or broken tests.

This is the right conclusion for the wrong reason.

The problem isn't that SWE-Bench is broken — it's that we're still benchmarking models in isolation while shipping agents with no eval on their actual behavior in production. If your agent fails because the benchmark is buggy, that's a data problem. If it quietly wrecks your billing database because nobody tested the orchestration layer, that's a design problem.

Nobody's auditing the second one. That's where the real risk is.
