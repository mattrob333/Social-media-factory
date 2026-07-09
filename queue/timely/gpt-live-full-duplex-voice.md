---
platform: x
type: single
detected_at: 2026-07-08T21:00:00Z
theme: news-jack
mode: translate
source: "https://x.com/sama/status/2074909079450050629"
verified_source: "https://openai.com/index/introducing-gpt-live/"
---

OpenAI shipped full-duplex voice today. The demo is impressive — natural interruptions, live translation, "mhmm" at the right moments.

What nobody's talking about: they decoupled the talking model from the thinking model.

GPT-Live handles the conversation. When it needs reasoning or search, it delegates to GPT-5.5 behind the scenes and brings the result back seamlessly. The model you speak to is *not* the model that reasons.

That's the harness-over-model pattern in production at the highest scale. Separate the interface layer from the cognitive layer. Route by capability, not by model identity.

Everyone watching this will say "better voice." The systems people will say "they just productized my agent architecture."

MODE: translate
DOMAIN: ai-thought-leadership
ATTRIBUTION: none (Sam Altman's launch post sparked the take — the insight is Matt's framework)
CONFIDENCE: 4