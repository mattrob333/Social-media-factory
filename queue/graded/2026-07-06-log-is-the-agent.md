---
platform: x
type: single
detected_at: 2026-07-06T17:00:00Z
theme: news-jack
mode: amplify-apply
source: "https://x.com/yoheinakajim/status/2074149733732614522"
verified_source: "https://arxiv.org/abs/2605.21997"
---

Yohei Nakajima published "The Log Is the Agent" — a runtime where the event log is the system of record and the agent is a reactive projection of that log, not a conversation loop.

This is the architecture most agent builders should default to. Your model is ephemeral. Your log is permanent. If you can replay any run from its event stream, fork the state at any point, and trace every artifact back to the exact model call that produced it, you have something most agent stacks don't: determinism, auditability, and debuggability in one decision.

Stop designing agents around the model call. Design them around the event stream. The model is the actor. The log is the agent.