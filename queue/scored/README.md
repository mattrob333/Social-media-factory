# Scored Content — Prioritized + Bucketed

Loop 1 writes scored and bucketed content here. This is what Loop 2 reads to
decide what to post.

## File format: `YYYY-MM-DD.md`

Each item has:
- Source + URL
- Core claim (one sentence)
- Scores: Relevance, Novelty, POV Potential, Timeliness, Remixability (1-5 each)
- Composite score (Relevance×2 + Novelty + POV×2 + Timeliness + Remixability)
- Bucket: 🔥 POST NOW (≥25) | 📰 NEWSLETTER (18-24) | 💡 IDEA BANK (12-17) | 🗑️ SKIP
- Remix mode: amplify | disagree | extend | translate | steelman
- Matt's angle hint (one sentence)

## Example

```markdown
## 🔥 POST NOW

### @GregIsenberg — "Why Community Is the New Moat"
- **URL:** https://youtube.com/watch?v=abc123
- **Core claim:** Community-driven products have 3x retention of feature-driven
- **Scores:** R:5 N:4 P:5 T:4 M:5 = 33/35
- **Remix mode:** amplify
- **Matt's angle:** "Same pattern in enterprise AI — the firms winning aren't the ones with the best models, they're the ones embedded in the client's building. Forward-deployed is community at the team level."

## 📰 NEWSLETTER

### @karpathy — "LLM Reasoning Diminishing Returns"
- **URL:** https://x.com/karpathy/status/123456
- **Core claim:** Reasoning models hitting diminishing returns on benchmarks
- **Scores:** R:5 N:3 P:4 T:5 M:2 = 22/35
- **Remix mode:** extend

## 💡 IDEA BANK

### @rauchg — "Edge AI Is Coming"
- **URL:** https://x.com/rauchg/status/789012
- **Core claim:** Edge inference will replace cloud for latency-sensitive apps
- **Scores:** R:3 N:4 P:3 T:3 M:2 = 16/35
- **Remix mode:** translate
```
