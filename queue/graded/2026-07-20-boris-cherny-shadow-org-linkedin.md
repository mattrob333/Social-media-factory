---
platform: linkedin
type: post
theme: bookmark-spotlight
mode: amplify-apply
source: "https://x.com/Zephyr_hg/status/2076829781803626916 (quoting Boris Cherny)"
---

Boris Cherny, the creator of Claude Code, just described an architecture most teams haven't gotten to yet.

His words: "As I'm coding, as my Claudes are coding in a loop, they will communicate over Slack to talk to other people's Claudes that are also running in a loop."

Read that again. Not one agent doing everything. Multiple specialized agents, each running its own loop, coordinating through a channel built for humans — because that channel already has permissions, logging, and an audit trail nobody had to build from scratch.

This is the pattern I call the Shadow Org: a set of narrow agents that each own one job, report through a shared channel, and never get handed authority nobody explicitly gave them.

Here's why that framing matters more than the tool:

A single mega-agent that plans, codes, reviews, and deploys is a single point of failure with your production credentials. When it drifts, there's no second opinion in the loop — just one model talking itself into a bad decision faster than a human would ever notice.

Specialized agents coordinating like coworkers means every action has an owner, every handoff is visible, and "who approved this" has an actual answer.

Cherny didn't build this because it's elegant. He built it because it's the only version of multi-agent coding that survives contact with a real codebase and a real deploy pipeline.

If your agent roadmap is "one bigger agent," you're optimizing the wrong variable. The org chart for your agents matters as much as the org chart for your people.
