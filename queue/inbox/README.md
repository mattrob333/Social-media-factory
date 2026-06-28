# Content Inbox — Raw Ingested Items

Loop 1 (Daily Ingest) writes raw content here every morning. Each file is one
day's worth of scraped content from YouTube channels and X accounts.

## File format: `YYYY-MM-DD.md`

Each item has:
- Source (channel/account name + URL)
- Type (youtube / x-post)
- Raw content (transcript or tweet text)
- Timestamp of original content

Items are NOT scored yet — that happens in the next step and output goes to
`../scored/`.

## Example

```markdown
## YouTube — @GregIsenberg
**Video:** "Why Community Is the New Moat" (2026-06-28)
**URL:** https://youtube.com/watch?v=abc123
**Published:** 2026-06-27

[transcript text...]

## X — @karpathy
**Post:** https://x.com/karpathy/status/123456
**Published:** 2026-06-28 14:30 UTC

[tweet text...]
```
