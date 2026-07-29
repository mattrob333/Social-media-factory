---
platform: x
type: single
detected_at: 2026-07-28T22:00:00Z
theme: news-jack
mode: extend
source: "https://x.com/OfficialLoganK/status/2082138993546899711"
verified_source: "https://blog.google/innovation-and-ai/technology/developers-tools/expanding-managed-agents-gemini-api-3-6-flash-hooks/"
---

Google just shipped environment hooks for Gemini Managed Agents: run your own script before or after every tool call the agent makes inside the sandbox.

This is the check-before-action pattern aviation figured out decades ago. A pre-tool hook that can deny an action and feed the reason back into the model's context? That's not a feature. That's the minimum viable governance layer every agent platform needs.

The details matter:
- Regex matchers to target specific tools
- Support for custom scripts AND HTTP callouts to external endpoints
- A "deny" response that passes the reason back to the model — not a silent block

This is what I mean when I say the model isn't the bottleneck. The harness is. Google just shipped a governance harness into their managed agent runtime. If your agent platform doesn't have pre-execution hooks you can control, you're running without a checklist.

The irony: we spent 20 years building identity governance for humans. Now an agent platform ships it before most enterprises have it for their own AI deployments.

MODE: extend
DOMAIN: agent building, governance/NHI
ATTRIBUTION: Google DeepMind (Philipp Schmid, Mariano Cocirio) — blog post
CONFIDENCE: 4