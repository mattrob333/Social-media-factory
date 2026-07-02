---
platform: x
type: single
detected_at: 2026-07-02T16:50:00Z
theme: news-jack
mode: steelman-then-break
source: "https://x.com/bdsqlsz/status/2071887369817772358"
---

Anthropic got caught steganographically encoding timezone/proxy signals into Claude Code's system prompt to catch distillation and state-linked abuse. Rolled it back after devs found it this week.

Steelman: the threat is real. Model theft and espionage via proxies aren't hypothetical, and providers have to defend against them somehow.

Here's where it breaks: Claude Code has filesystem and shell access. That's not a chatbot, that's a non-human identity with real permissions on your machine. The moment an agent with that level of access is silently encoding signals you can't see or audit, you've failed the one rule that matters for NHIs — you can't have permissions and no visibility into what they're used for at the same time.

Anti-abuse is not optional. Hiding it inside the trust boundary of an agent that touches your repo is. If you can't show an auditor exactly what your agent transmits and why, you don't have governance, you have a black box that ships code.
