---
platform: x
type: single
detected_at: 2026-07-06T21:09:00Z
theme: news-jack
mode: extend
source: "https://x.com/yacineMTB/status/2074070149737406841"
verified_source: "https://x.com/yacineMTB/status/2074070149737406841"
---

@yacineMTB ported Erin Catto's Box3D physics engine to CUDA with Fable — 30x faster, $200 in API costs, "would have taken me ~1 year manually."

Worth reading past the headline. His most important line: "I didn't know when it was wrong, but I was skeptical and told it to verify using profiling tools."

That's the real skill. Not knowing the answer — knowing how to surface the gap. The cost of the API calls was trivial. The cost of trusting the wrong output without a verification loop would have been invisible and catastrophic.

This is the harness-over-model thesis playing out in real time. The tool gets credit for the speed. The human gets credit for the skepticism. Both needed.
