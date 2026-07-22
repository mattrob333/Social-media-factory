---
platform: x
type: single
detected_at: 2026-07-22T13:20:00Z
theme: news-jack
mode: amplify-apply
source: "https://x.com/karpathy/status/2079610838143623371"
verified_source: "https://x.com/karpathy/status/2079610838143623371"
---

Karpathy is right about voice ramble sessions with LLMs and he's about to discover something even more useful.

The reason it works isn't the voice modality. It's that you're increasing the token budget for the model to build an accurate world model of what you actually want. Most prompt failures are under-specification — you wrote 2 sentences when you needed 200 bits of context. A 10-minute ramble flushes those bits.

The next level: do the ramble into a voice note, have the model transcribe and structure it into a spec, then feed that spec to a separate agent that only reads structured requirements. You've just built a context pipeline that separates the noisy ideation layer from the precise execution layer.

This is the harness-over-model insight people keep missing. The model isn't the bottleneck. Your context pipeline is.