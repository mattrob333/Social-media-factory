# Tier 4 Intelligence — Email Template Population Guide

For the Hermes newsletter loop. The template is
[`newsletter-email.html`](newsletter-email.html). Populate it, save the
result to `queue/newsletter/issue-{N}-{YYYY-MM-DD}.html`, and queue for
Telegram approval. **Never auto-send.**

## How the template works

- All `{{TOKENS}}` are plain-text placeholders — replace every one. No
  token may survive into the draft.
- Repeatable blocks are wrapped in `<!-- BEGIN:NAME -->` /
  `<!-- END:NAME -->` comments. Duplicate the whole block per item and
  keep the inline styles exactly as-is.
- Optional blocks (`OPTIONAL_SAAS_IDEA`, `OPTIONAL_BUILDING`) are deleted
  whole — including the surrounding `<tr>` — when there's nothing real to
  report. Never manufacture filler.
- Keep all styles inline; do not add classes, webfonts, flexbox, or CSS
  variables. This must render in Gmail and Outlook.

## Issue anatomy: core vs rotating

Run **every issue** (core): Masthead + hero image, The Take + pull quote,
On the Radar, One You Can Use, Persona Prompt of the Week, sign-off, footer.

**Rotate 2–3 of these per issue** so no issue bloats past ~2,000 words:
The Flight Deck (model picks — run at least every other issue, and always
when rankings visibly moved), Trending on GitHub, Generative Media Watch,
Featured Workflow, Disruption Watch, Idea Watch, Signal Sources,
Building in Public. Pick by inventory strength that week, not by habit.

## Section → data source map

| Section | Tokens | Source in this repo |
|---|---|---|
| Preheader | `PREHEADER_TEXT` | One 60–90 char hook derived from the Take headline |
| Masthead | `ISSUE_NUMBER`, `ISSUE_DATE` | Increment from `queue/newsletter/`; send date |
| **The Take** | `TAKE_HEADLINE`, `TAKE_PARAGRAPH_*` | Matt's best original POV of the period: highest-performing post in `history/` or strongest approved item in `queue/approved/`. Expand to 200–400 words per voice.md §7. Split into `<p>` tags. |
| Pull quote | `PULL_QUOTE` | The single sharpest sentence *from the Take above* — verbatim, one sentence. |
| **On the Radar** | `RADAR_*` (3–5 items) | High-signal items from `queue/inbox/*-ingest-digest.md` (HIGH-SIGNAL section) and high scores in `queue/scored/` that weren't posted. `RADAR_TAKE` = Matt's one-liner in voice. `RADAR_SOURCE_URL` must be a real link; credit every source by name. |
| **Trending on GitHub** | `REPO_*` (3–4 items) | GitHub trending tables in `queue/inbox/` digests. `REPO_WHY_IT_MATTERS` = the "Key for Matt?" / "Matt's take" angle. Real repo URLs required. |
| **One You Can Use** | `USE_TITLE`, `USE_SETUP_CONTEXT`, `USE_PROMPT_OR_STEPS` | The value contract — **never skip**. A prompt, automation, or framework from the week's content readers can apply immediately. Put the literal prompt/steps in the monospace block; use `<br>` for line breaks inside it. |
| Hero image | `HERO_IMAGE_URL`, `HERO_IMAGE_ALT` | AI-generated per issue (see "Imagery" below). Host on the issue's ht-ml.app site (like issue 2's hero.png); never hotlink third-party images. |
| **The Flight Deck** (model picks) | `RANKINGS_DATE`, `MODEL_CATEGORY` blocks (`CATEGORY_*`, `MODEL_*` rows), `RANKINGS_SOURCES_LINKED` | Weekly rankings scrape defined in `model-rankings.yaml` → written to `queue/inbox/YYYY-MM-DD-model-rankings.md`. Four categories: Coding, Writing & Comms, Business Analysis, Agents & Automation. Top 3 per category with a one-liner each; `CATEGORY_OPERATOR_NOTE` is Matt's practical read (cost, when to use which). Always link the sources and date the snapshot — never present rankings as timeless. |
| Generative Media Watch (rotating) | `MEDIA_*` | Image/video/voice-gen launches from ingest digests + `model-rankings.yaml` media arenas. `MEDIA_BUSINESS_ANGLE` translates the demo into a B2B use case. `MEDIA_IMAGE_URL` may be an AI-generated illustration OR an official launch still — if the latter, credit it. |
| Featured Workflow (rotating) | `WORKFLOW_*`, `WORKFLOW_STEP` blocks | Matt's bookmarks: `queue/scored/` items with bucket `METHOD_FRAMEWORK` or `AI_TOOL` that describe a multi-step build. Name each tool per step, give time saved, credit the source with a link. |
| **Persona Prompt of the Week** | `PERSONA_NAME`, `PERSONA_ESSENCE`, `PERSONA_JUDGMENT_LINE`, `PERSONA_DOWNLOAD_URL`, `PERSONA_GOVERNANCE_TEASER` | Generate with `references/personasmith-metaprompt.md` (v3, as-is). Save persona verbatim to `queue/newsletter/personas/{slug}.txt`; never reuse a prior slug. The governance teaser names the gap plainly, once — never pitches Pedigree by name. |
| Disruption Watch (rotating) | `DISRUPTION_*` (2–3 items) | Sources in `disruption-watch.yaml` → collected into ingest digests. Receipts only: named company + number + link (e.g. the Microsoft layoffs-redefinition item in `queue/graded/`). `DISRUPTION_OPERATOR_MOVE` = one concrete action for an exec in that function. Never publish a claim without a linkable source. |
| Signal Sources (rotating) | `SOURCE_*` (3 items) | Rotate from `x-accounts.yaml` + `channels.yaml`. Track used handles in `queue/newsletter/signal-sources-used.yaml`; don't repeat within 8 issues. `SOURCE_WHY_FOLLOW` = one specific line, not "great AI content." |
| Idea Watch (optional) | `IDEA_*` | `saas-ideas.md` — only when an idea is genuinely timely (see the digest's "SaaS Idea of the Week" inventory). |
| Building in Public (optional) | `BUILDING_UPDATE` | One line on a real shipping update. Omit block otherwise. |
| Sign-off | `SIGNOFF_LINE` | One dry closing line in voice; varies each issue. |
| Footer | `SUBSCRIBE_URL`, `X_PROFILE_URL`, `LINKEDIN_PROFILE_URL`, `WEBSITE_URL`, `UNSUBSCRIBE_URL`, `PREFERENCES_URL`, `MAILING_ADDRESS` | From `accounts.yaml` / ESP merge tags. If the ESP uses merge tags (e.g. `*|UNSUB|*`), substitute those. |

## Imagery (AI-generated, per issue)

Generate with the GPT image model (gpt-image-1 or current successor), then
upload to the issue's ht-ml.app site and reference the hosted URL — email
clients need stable hosted images, and many block data URIs.

- **Hero (600×300):** one per issue, themed to The Take. House style prompt:
  "Editorial illustration for a business AI newsletter. {TAKE_CONCEPT}.
  Deep navy (#16233f) background, amber (#f0b429) accents, clean geometric
  shapes, subtle aviation motif (instrument lines, horizon, runway lights —
  never a specific aircraft type), no text, no logos, flat modern style."
- **Section images (552px wide):** only Generative Media Watch gets one by
  default. Keep total images ≤3 per issue — deliverability and load time.
- Every `<img>` needs real alt text describing the image (many readers
  block images entirely).
- Never depict an identifiable aircraft type — same hard rule as text.

## Voice rules that apply here (hard)

- Voice = operator-pilot per `voice.md`. Declarative, concrete, no broetry,
  no engagement bait, no hashtag soup.
- **Never name a specific aircraft type.** "Flies a jet ~18 days a month."
  (Already baked into the sign-off — don't change it.)
- Every repo, tool, video, or account named anywhere must be a clickable
  `<a href>`, not bare text.
- Credit sources generously in On the Radar (name + link).
- Pitch ratio <1 in 10: Pedigree/TakeoffSpeed appear as evidence, not ads.

## Pre-send checklist (append flags to the Telegram approval message)

1. Zero `{{TOKENS}}` remaining (grep the file).
2. All links resolve and are https.
3. No aircraft-type references.
4. One You Can Use contains an actual usable prompt/steps.
5. Flag anything Matt should double-check before sending.
