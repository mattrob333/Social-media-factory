---
platform: x
type: single
detected_at: 2026-07-02T21:15:00Z
theme: news-jack
mode: amplify-apply
source: "https://x.com/hwchase17/status/2072708930057429501"
verified_source: "https://www.langchain.com/blog/introducing-langsmith-engine"
---

@hwchase17's LangSmith Engine watches your agent's production traces, clusters failures into named issues, and drafts a PR with the fix. It does not merge it. You do.

That's the right shape for a non-human identity with write access to your codebase. Diagnose autonomously, patch on request, ship never. The moment you let the thing that broke production also decide what "fixed" means without a human signing off, you've deleted segregation of duties for an agent that has commit rights.

Every NHI you deploy should work this way: full autonomy on the diff, zero autonomy on the merge button.
