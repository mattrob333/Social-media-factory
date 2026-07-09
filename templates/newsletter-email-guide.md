# Tier 4 Intelligence — Weekly Briefing Population Guide

Canonical template: [`newsletter-email.html`](newsletter-email.html) — the
approved design (Jul 9, 2026). **Do not restyle it.** Populate a copy, save
to `queue/newsletter/issue-{N}-{YYYY-MM-DD}.html`, queue for Telegram
approval. **Never auto-send.**

## Mechanics

- Replace every `{{TOKEN}}`. Zero tokens may survive (grep before queuing).
- Repeatable blocks: `<!-- BEGIN:NAME --> ... <!-- END:NAME -->` — duplicate
  per item, inline styles untouched.
- Rotational sections 06–07 and the optional badge/download blocks are
  deleted whole when not running. Never manufacture filler to fill a slot.
- All images = hosted URLs on the issue's ht-ml.app site. Brand images to
  upload once per site: `assets/newsletter-masthead-logo.png` (white
  wordmark for the dark masthead) and `assets/newsletter-footer-icon.png`.
- Every named repo, tool, account, or story must be a real clickable link.

## Sections → data sources

| # | Section | Tokens | Source |
|---|---|---|---|
| — | Preheader | `PREHEADER_TEXT` | 60–90 char hook from the Top Story |
| — | Masthead | `ISSUE_NUMBER`, `ISSUE_DATE`, `MASTHEAD_LOGO_URL` | Increment from `queue/newsletter/`; static logo URL |
| — | Hero image | `HERO_IMAGE_URL`, `HERO_IMAGE_ALT` | AI-generated 680×280 per issue (recipe below) |
| — | Intro strip | `INTRO_FRAMING_SENTENCE` | One fresh sentence framing the week. The "The signal, not the noise." lead-in is static. |
| 1 | **Top Story** | `TOP_STORY_HEADLINE`, `TOP_STORY_BODY` (2–3 sentences), `TOP_STORY_URL` | Best-scoring item of the week from `queue/scored/` / `queue/approved/`. The one item that survives if the issue were cut to a paragraph. |
| 2 | **This Week in AI** | `ROUNDUP_*` ×4–6 | HIGH-SIGNAL items from `queue/inbox/` ingest digests + X bookmarks/follows. One line each: bold lead + why it matters + link. Cut anything that fails a "so what?" test. |
| 3 | **Trending on GitHub** | `REPO_*` ×3–5 | GitHub trending tables in `queue/inbox/` digests. Stars + description straight from the scrape. |
| 4 | **Tool / Model Spotlight** | `SPOTLIGHT_NAME`, `SPOTLIGHT_BODY`, `SPOTLIGHT_URL`, optional `MOVED_BADGE` block | The single highest-signal tool/model of the week, in depth: what it is, why now, the one thing to try. Fold in `model-rankings.yaml` data only when something actually moved; delete the "▲ moved this week" badge on quiet weeks. |
| 5 | **Prompt / Framework of the Week** | `PROMPT_SOURCE_TAG`, `PROMPT_TITLE`, `PROMPT_TEXT`, `PROMPT_WHEN_TO_USE`, optional `PERSONA_DOWNLOAD` block | The value contract — **never skip**. Alternate: (a) Personasmith persona via `references/personasmith-metaprompt.md` — save the `.txt` to `queue/newsletter/personas/{slug}.txt`, keep the download button, tag "via Personasmith"; (b) a workflow/prompt from bookmarked `METHOD_FRAMEWORK` items — delete the download block, tag the source. Prompt text goes verbatim in the mono block, short enough to copy from an email. |
| 6 | SaaS Idea Watch *(rotational)* | `IDEA_ONE_LINER`, `IDEA_BODY` | `saas-ideas.md`, only when genuinely timely that week. |
| 7 | Jobs & Disruption *(rotational)* | `DISRUPTION_*` ×1–2 | `disruption-watch.yaml` feed (once live). Receipts only: named company + number + linkable source. No speculation. |
| 8 | Sign-off | `SIGNOFF_LINE` | 1–2 human lines: what to watch next week. Signature "— The Tier 4 Intelligence Desk" is static. |
| — | Footer | `FOOTER_ICON_URL`, `ARCHIVE_URL`, `SHARE_URL`, `UNSUBSCRIBE_URL` | Static / ESP merge tags. |

## Hero image recipe (per issue)

Generate with the GPT image model, upload to the issue's ht-ml.app site,
reference the hosted URL. House style:

> "Editorial illustration for a business AI newsletter, 680×280.
> {TOP_STORY_CONCEPT}. Near-black (#0C0E11) background, green (#79C154)
> accents, white geometric shapes, clean flat modern style, no text,
> no logos."

Real alt text always — many readers block images.

## Voice rules (hard)

- Per `voice.md`: declarative, concrete, anti-hype. No broetry, no
  engagement bait, no "this changes everything."
- No aviation/pilot framing anywhere in the newsletter (per Jul 9 direction
  — this supersedes older newsletter specs that included it).
- Credit sources generously; every claim links out.
- Rankings/spotlight claims are dated and sourced — never presented as
  timeless.

## Pre-send checklist (flag results in the Telegram approval message)

1. `grep -c '{{'` on the file returns 0.
2. All links https and resolving; hero + logos load from hosted URLs.
3. Section 5 contains an actually usable prompt; persona `.txt` uploaded if used.
4. Rotational sections either fully populated or fully removed.
5. Flag anything Matt should double-check before sending.
