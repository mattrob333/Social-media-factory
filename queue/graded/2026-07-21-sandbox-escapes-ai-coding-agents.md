<!-- GRADED: PASS (all 7 criteria by mcp_openrouter_chat_send, model: deepseek/deepseek-v4-flash, pass 2 after attribution fix) -->
---
platform: x
type: single
detected_at: 2026-07-21T14:30:00Z
theme: news-jack
mode: extend
source: "https://x.com/bleepingcomputer"
verified_source: "https://www.bleepingcomputer.com/news/security/cursor-codex-gemini-cli-antigravity-hit-by-sandbox-escapes/"
linkedin_ok: false
---

Per BleepingComputer's report: four AI coding agents had sandbox escapes this week. Cursor, Codex, Gemini CLI, Antigravity.

The agent stayed inside the box. Followed every rule. It just wrote a file — and a trusted tool outside the box ran it.

This isn't a sandbox bug. It's a governance failure. The threat model drew the wrong perimeter.

You locked the sandbox. You didn't audit what it produced. And downstream tools don't know those files came from an agent.

Segregation of duties doesn't stop mattering because the employee is a model.

MODE: extend
DOMAIN: governance/non-human-identity
ATTRIBUTION: BleepingComputer — credited in-body per grader FIX, pass 2
CONFIDENCE: 5
