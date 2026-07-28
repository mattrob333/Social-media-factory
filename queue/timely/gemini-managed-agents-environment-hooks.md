---
platform: x
type: single
detected_at: 2026-07-28T17:32:00Z
theme: news-jack
mode: amplify-apply
source: "https://x.com/OfficialLoganK/status/2082138993546899711"
verified_source: "https://blog.google/innovation-and-ai/technology/developers-tools/expanding-managed-agents-gemini-api-3-6-flash-hooks/"
---

Google just shipped environment hooks for Gemini Managed Agents.

Pre-tool-execution gates. Post-tool-execution linting. Budget caps. Scheduled cron-like triggers. All inside the sandbox.

This is exactly what agent governance looks like when a platform takes it seriously.

For the last year I've been saying: every agent is a non-human identity with permissions and no manager. The model isn't the risk — the permissions are. You don't need more safety prompts. You need a gate that says "no" before the dangerous tool call happens and an audit trail after every one.

Google just turned that into a JSON config file.

hooks.json + a sandbox = more real agent safety than 500 lines of system prompt. The platform players are starting to get it. The orgs that copy this pattern into their own agent stacks — least privilege, pre-flight checks, post-hoc audit — are the ones that won't have a breach they can't explain.