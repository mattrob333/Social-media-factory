---
platform: x
type: single
detected_at: 2026-07-02T08:42:00Z
theme: news-jack
mode: amplify-apply
source: "https://www.buildfastwithai.com/blogs/ai-news-today-july-1-2026"
---

Claude Sonnet 5 shipped yesterday as the new default for every Free/Pro user. Near-Opus performance, Sonnet pricing. Cool.

Here's what actually matters if you're running agents in production: it's not a drop-in swap. Temperature and sampling params are gone — those calls just error now. Extended thinking is on by default, no toggle. And the new tokenizer produces up to 1.35x more tokens on identical input, so every budget cap you set against Sonnet 4.6 is now silently wrong.

None of that is in the headline. All of it is in the incident report three weeks from now when someone's agent loop blows through its cost ceiling or throws on a param nobody touched.

Model swaps are configuration changes to a system making autonomous decisions. Treat them like one — checklist, test the loop end to end, then cut over. Not "the benchmark went up, ship it."
