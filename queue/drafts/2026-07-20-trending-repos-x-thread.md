---
platform: x
type: thread
theme: trending-repos
mode: none (curation)
source: "queue/inbox/2026-07-20-ingest-digest.md (github-trending section)"
---

Four repos trending today that actually matter for how you build with AI. Not the usual demo-ware — these are infrastructure plays.

---

1. Graphify (github.com/Graphify-Labs/graphify) — turns any folder of code, SQL schemas, scripts, or docs into a queryable knowledge graph. Works across Claude Code, Codex, OpenCode, Cursor, Gemini CLI. 85k stars.

This is "harness over model" made literal — the model doesn't get smarter, the context around it does. Client work lives and dies on whether the agent understands the codebase before it touches it. This is the one I'm pulling into the stack this week.

---

2. code-review-graph (github.com/tirth8205/code-review-graph) — MCP-native code intelligence, local-first. No cloud round-trip to understand your own codebase.

If your review pipeline still ships your diffs to someone else's server, this is the alternative.

---

3. wigolo (github.com/KnockOutEZ/wigolo) — local-first web access for AI agents over MCP. No API keys, no cloud, $0/query.

The agent browses the web the same way it reads your filesystem: locally, with nothing to meter.

---

4. jcode (github.com/1jehuang/jcode) — a coding agent harness, not another model wrapper. It's explicit about the framing: the harness is the product, the model is a component. I'd bet on that framing outlasting most of the model-of-the-week launches.

<!-- FLAGGED: FAIL after 2 grading passes. Criterion 1 (NO AI-ISMS) — grader objects to "the agent understands the codebase before it touches it" (post 2) and "the agent browses the web the same way it reads your filesystem" (post 3) as AI-personification phrasing. Pass 1 fixed post-count (was 6, now 5); pass 2 still flagged this. Per schedule.yaml max_passes=2, holding here rather than a 3rd rewrite. Matt: consider swapping those two lines for flatter tool-description phrasing before approving, or approve as-is if you don't read them as AI-ism. -->

