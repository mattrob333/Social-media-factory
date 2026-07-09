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
| Idea Watch (optional) | `IDEA_*` | `saas-ideas.md` — only when an idea is genuinely timely (see the digest's "SaaS Idea of the Week" inventory). |
| Building in Public (optional) | `BUILDING_UPDATE` | One line on a real shipping update. Omit block otherwise. |
| Sign-off | `SIGNOFF_LINE` | One dry closing line in voice; varies each issue. |
| Footer | `SUBSCRIBE_URL`, `X_PROFILE_URL`, `LINKEDIN_PROFILE_URL`, `WEBSITE_URL`, `UNSUBSCRIBE_URL`, `PREFERENCES_URL`, `MAILING_ADDRESS` | From `accounts.yaml` / ESP merge tags. If the ESP uses merge tags (e.g. `*|UNSUB|*`), substitute those. |

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
