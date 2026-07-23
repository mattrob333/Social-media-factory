#!/bin/bash
# Social Media Factory Daily Ingest Loop — Thu Jul 23, 2026
echo "=== SMF Daily Ingest: Thu 2026-07-23 ==="
echo ""
echo "== SCHEDULE =="
echo "thursday: saas-idea-of-the-week, bookmark-spotlight"
echo "timely: 2 items (openai-hf-breach)"
echo ""

echo "Pending graded items (19 total, latest 6):"
ls -1t /c/Users/mrobe/projects/Social-media-factory/queue/graded/ | head -6

echo ""
echo "Stuck drafts (14 total):"
ls -1 /c/Users/mrobe/projects/Social-media-factory/queue/drafts/

echo ""
echo "Timely items pending:"
ls -1 /c/Users/mrobe/projects/Social-media-factory/queue/timely/