<!-- GRADED: PASS (all 7 criteria, mcp_openrouter_chat_send, model: deepseek/deepseek-v4-flash, 2026-07-29) -->
---
platform: x
type: thread
detected_at: 2026-07-29T18:00:00Z
theme: top-ten-tools
mode: bookmark-spotlight
sources:
  - "https://github.com/affaan-m/ECC"
  - "https://hermes-agent.nousresearch.com/docs/user-guide/features/wake-word"
verified_source: "https://github.com/affaan-m/ECC ; https://hermes-agent.nousresearch.com/docs/user-guide/features/wake-word"
---

Went looking for the best AI tooling from the last week. Found 2 worth your time — not 10. Padding a list to hit a round number is how you get slop.

---

ECC (affaan-m/ECC) just hit 2.0.0 — a full agent harness operating system, not another prompt library. 261 skills, one session-adapter layer that runs the same rules across Claude Code, Codex, OpenCode, and Cursor, plus a worktree-lifecycle service that predicts merge conflicts between parallel agent runs before they happen. This is the harness-over-model thesis shipping as software: the win isn't a smarter model, it's not losing an afternoon to two agents stepping on the same file. github.com/affaan-m/ECC

---

Hermes Agent — the runtime I run this entire business on — shipped "Hey Hermes" wake-word activation: on-device hotword detection, no cloud round-trip, works across CLI, TUI, and desktop. I'm not amplifying a cold pitch — I run my content pipeline on this daily, and hands-free session start is the difference between "check the agent" being a a real habit versus one more tab you forget. hermes-agent.nousresearch.com/docs/user-guide/features/wake-word

---

Out of two: I'm running Hermes today, wake word included. ECC is watch-list — evaluating the worktree-lifecycle piece for client agent deployments this week, not shipped yet. The honest version of a tools list tells you which is which.
