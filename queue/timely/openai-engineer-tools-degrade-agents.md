<!-- FLAGGED: pass 2 FAIL on criterion 7 (SOURCE VERIFIED) — grader objects that source and verified_source point at the same X post (@Zephyr_hg's tweet quoting/paraphrasing an unnamed "OpenAI engineer"), which it reads as a circular verification chain rather than a primary source. Per schedule.yaml grading.max_passes=2 and the SOURCE VERIFIED special-case rule, this is NOT a rewrite-fixable failure — no rewording of the post body changes whether the underlying quote is traceable to a named OpenAI engineer's own statement. Pass 1 fixed criterion 2 (CONCRETE) cleanly; pass 2 surfaced this instead. Matt: the specific claim needing a primary source is "OpenAI engineer: 'as you add more tooling and instructions to a model, the performance generally deteriorates.'" — if you can find the original talk/podcast/tweet where an OpenAI engineer said this directly (rather than via @Zephyr_hg's relay), add that URL as verified_source and this clears; otherwise this may need reclassifying as reacting-to-discourse (self-verifying, since @Zephyr_hg's post itself is what's being reacted to) rather than reacting-to-a-claimed-fact. Holding here per the "don't burn the second grading pass on an unverifiable premise" rule. -->
---
platform: x
type: single
detected_at: 2026-07-21T06:54:00Z
theme: news-jack
mode: amplify-apply
source: "https://x.com/Zephyr_hg/status/2079493332565389562"
verified_source: "https://x.com/Zephyr_hg/status/2079493332565389562"
---

OpenAI engineer: "as you add more tooling and instructions to a model, the performance generally deteriorates."

This is the most honest thing anyone building agents has said this year.

The instinct is always "add another tool, another instruction, another guardrail." What actually happens is you dilute the context, confuse the signal, and the model starts second-guessing itself.

The solution isn't fewer tools. It's a scoped harness: an AGENT.md that defines which tools this task actually needs, a skill library instead of a 40-tool kitchen sink, sub-agents that hand off instead of one model juggling everything.

Most agents aren't too dumb. They're drowning in their own scaffolding.

ATTRIBUTION: @Zephyr_hg for surfacing this — quote-tweet
MODE: amplify-apply
DOMAIN: workflow automation & agent building
CONFIDENCE: 5