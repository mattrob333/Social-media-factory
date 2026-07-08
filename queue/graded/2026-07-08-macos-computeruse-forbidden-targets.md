---
platform: x
type: single
detected_at: 2026-07-08T10:30:00Z
theme: news-jack
mode: extend
source: "https://x.com/steipete/status/2074795172295291224"
verified_source: "https://x.com/steipete/status/2074795172295291224"
---

Apple ships a hardcoded "forbidden targets" list for macOS computer-use agents — system UI elements the model is explicitly blocked from clicking.

The interesting part isn't that the flag exists to bypass it. It's that Apple shipped the list at all.

That list is an admission: the model cannot reliably self-govern on system-critical actions yet. Apple designed guardrails because they don't trust the model's judgment on "should I click this?" — even on its own OS.

This is exactly the governance conversation the enterprise doesn't want to have. If you deploy an agent with system-level access, the guardrails aren't optional — they're the product. The question isn't whether to flip the bool. It's whether you know what your agent would do without it.

MODE: extend
DOMAIN: governance/nhi, agent-building
ATTRIBUTION: credit @steipete for surfacing the flag
CONFIDENCE: 5