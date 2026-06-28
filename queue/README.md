# Human-Approved Content Queue

Drop content files in this directory and the loop will post them first before
generating anything new. Use this when you have a specific post you want to
go out.

## How It Works

1. Write your post in a `.md` file
2. Commit and push
3. The loop picks it up on the next tick
4. After posting, it moves the file to `../history/`

## File Format

Each file needs frontmatter specifying platform and post type:

```markdown
---
platform: x         # x or linkedin
type: thread        # thread, single (X) or post, article (LinkedIn)
scheduled: 2026-06-28T14:00:00Z  # optional — ISO timestamp
---

Your post content here.
```

## Example: Queue an X thread

```markdown
---
platform: x
type: thread
---

Post 1: The hook

Post 2: The insight

Post 3: The close + CTA
```
