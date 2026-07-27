---
platform: x
type: single
detected_at: 2026-07-27T16:00:00Z
theme: news-jack
mode: disagree-why
source: "https://x.com/ai_for_success/status/2081547572389535851"
verified_source: "https://huggingface.co/moonshotai/Kimi-K3"
---

Kimi K3 drops "open weights" today. 2.8T parameters, #1 on Frontend Code Arena, genuinely competitive with frontier closed models.

The part nobody's saying: "open" at 1.4TB in 4-bit isn't open for 99% of builders.

You need 8+ H100s just to load the thing. Most people celebrating this release will never run it. They'll rent it from a cloud provider — the same vendor dependency they were trying to escape.

The real architecture is what matters: ~50B active parameters per token out of 2.8T total. That's a MoE routing strategy, and it's clever. The inference cost per token is what will actually shake up the API pricing landscape, not the weight download.

What enterprise buyers should watch: whether the license terms let you fine-tune and deploy without a Moonshot API dependency. We don't know yet — the license drops with the weights.

Open weights at frontier scale is a meaningful step. But the hardware gate is still the real gate. "Open" is doing a lot of work here.