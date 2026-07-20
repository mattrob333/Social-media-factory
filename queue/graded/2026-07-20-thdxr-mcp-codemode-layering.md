---
platform: x
type: single
detected_at: 2026-07-20T06:00:00Z
theme: news-jack
mode: amplify-apply
source: "https://x.com/thdxr/status/2079014870511432042"
verified_source: "https://x.com/thdxr/status/2079014870511432042"
---

dax is right about the MCP codemode layering problem.

If every MCP server implements its own "code mode" and your agent already natively supports code mode, you're stacking abstractions that cancel each other out. The agent translates intent → code mode, the server translates code mode → intent. Net gain: zero. Latency cost: nonzero.

The pattern that works: raw MCP endpoints that do one thing well. Let the agent's harness handle the orchestration. Don't make the tool guess what the agent wants.

This is the harness-over-model argument showing up at the protocol layer. The agent isn't the bottleneck. The shape of the interface is.

MODE: amplify-apply
DOMAIN: workflow automation / agent building
ATTRIBUTION: Credit @thdxr
CONFIDENCE: 4