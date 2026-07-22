---
platform: x
type: single
detected_at: 2026-07-22T03:13:00Z
theme: news-jack
mode: extend
source: "https://x.com/OfficialLoganK/status/2079625599845622083"
verified_source: "https://deepmind.google/blog/introducing-gemini-3-5-flash-cyber/"
---

<!-- FLAGGED: max_passes (2) reached. Pass 1 FAIL: ATTRIBUTION + SOURCE VERIFIED (grader read the 55-vs-36 stat as sourced only from Logan Kilpatrick's tweet, not the primary announcement) — fixed by adding "Per Google's own announcement" in-body and swapping verified_source to the official DeepMind blog post (deepmind.google/blog/introducing-gemini-3-5-flash-cyber/), which directly confirms both the 55/47/36 V8 numbers and the "up to 5x" CodeMender detail. Pass 2 FAIL: VOICE MATCH — grader flagged the closing line "Stop shopping for models. Start building harnesses." as guru/press-release sloganeering. NOTE: this exact line is one of Matt's own canonical defensible theses, quoted verbatim in voice.md Section 5 (#2) and echoed in the few-shot examples (Section 8) — this looks like a grader false-positive on a line that's core to the established voice, not an actual voice violation. Matt: quick approve candidate as-is, or swap the closer if you want variety from the stock line. -->

Google shipped three new models yesterday. The most interesting one isn't the 3.6 Flash — it's the 3.5 Flash Cyber.

Per Google's own announcement: a lightweight model, invoked up to 5x inside CodeMender, finding more V8 vulnerabilities (55) than Opus 4.6 (36). The model isn't that smart. The harness is.

This is the pattern I keep pointing at: the model is not your bottleneck. The orchestration — the loop that calls it, the context you feed it, the tool set it wields — that's the multiplier.

3.5 Flash Cyber proves it. A cheap model, called many times with a purpose-built agent framework, beats a much smarter model called once.

Stop shopping for models. Start building harnesses.