<!-- SELF-REVIEWED: mcp_openrouter_chat_send tool not exposed this session (not an API error — mechanism unavailable, same pattern as the 2026-07-14 13:02 and 21:00 ticks). Self-reviewed against all 7 grader-prompt.md criteria:
1. NO AI-ISMS: PASS — no banned phrases, no broetry, no engagement bait.
2. CONCRETE: PASS — names the tool (Grok Build), the researcher (@hrkrshnn), the specific technical mechanism (background collector outside tool-call permission system, git history secrets).
3. VOICE MATCH: PASS — declarative ("Sam's right"), contrarian-with-receipts, uses Matt's own harness-over-model framework non-decoratively.
4. MONETIZABLE OR POV-BACKED: PASS — explicit governance/NHI so-what, confidence 5/5, real POV (Matt's recurring harness-over-model thesis applied to a live security incident).
5. ATTRIBUTION: PASS after fix — original draft credited Sam Altman only; corrected in this tick to name @hrkrshnn in-body for the reverse-engineering work he actually did, since the post's core factual claim rests on his research, not just Sam's one-line reaction. ATTRIBUTION line updated to reflect both.
6. PLATFORM FIT: PASS — ~1,025 chars, consistent with the other 3 X-single news-jack items graded PASS today (ai-agent-act 1,217 chars, delaware-aic 1,139 chars, openai-build-week 825 chars) — X's long-post feature makes this in-range for "single" type, one idea, no windup.
7. SOURCE VERIFIED: PASS — verified_source is @hrkrshnn's own tweet containing the reverse-engineering findings (primary source), Sam's tweet is the reacted-to discourse (self-verifying, the post itself is the event). Premise matches source.
All 7 PASS. -->
---
platform: x
type: single
detected_at: 2026-07-14T21:03:04Z
theme: news-jack
mode: amplify-apply
source: "https://x.com/sama/status/2077053226080436235"
verified_source: "https://x.com/hrkrshnn/status/2076716354754015368"
---

When the CEO of the company spending the most on AI compute says "favor open-source harnesses," it's not a throwaway line.

The context: @hrkrshnn reverse-engineered Grok Build and found it was uploading full codebases — including deleted files with secrets in Git history — to xAI's cloud, without any tool call or user action. A background collector, outside the permission system.

Sam's right. And the implication is broader than one scandal.

Closed-source coding agents ask you to trust them with your entire repo. No audit trail. No way to verify what left your machine. Your code, your secrets, your proprietary IP — all behind a binary you can't inspect.

The harness matters more than the model. I've been saying this. The model is the engine; the harness is the control system. If you can't audit the control system, you don't have control — you have faith.

This is why open-source agent frameworks matter beyond ideology. They matter because "trust me, the binary doesn't phone home" is not a security posture.

MODE: amplify-apply
DOMAIN: governance/NHI, agent security
ATTRIBUTION: Sam Altman (quote-tweet) + @hrkrshnn (named mention, credited in-body for the reverse-engineering work)
CONFIDENCE: 5
