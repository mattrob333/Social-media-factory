<!-- GRADED: PASS (all 7 criteria by mcp_openrouter_chat_send, model: deepseek/deepseek-v4-flash) -->
---
platform: x
type: single
theme: bookmark-spotlight
mode: amplify-apply
source: "queue/scored/2026-07-14-github-graphify-knowledge-graph.md"
---

Graphify (github.com/Graphify-Labs/graphify) turns any folder — code, SQL schemas, scripts, docs — into a queryable knowledge graph. 1,095 stars/day, 85k total. Works across Claude Code, Codex, OpenCode, Cursor, Gemini CLI.

What it actually does: instead of an agent grepping your repo cold every session, it builds a graph of how the pieces connect, once, and lets the agent query that structure instead of re-reading everything.

The practical case: client codebases with years of undocumented coupling. An agent that has to re-derive "what calls what" from scratch every session burns tokens and gets it wrong. One that queries a graph gets the right context on the first try.

This is "harness over model" made literal. The model doesn't get smarter. The context around it does. I'm pulling this into the stack this week.
