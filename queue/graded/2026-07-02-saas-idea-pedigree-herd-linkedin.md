---
platform: linkedin
type: post
theme: saas-idea-of-the-week
sources:
  - queue/scored/2026-07-02-github-ogulcancelik-herdr.md
  - saas-ideas.md#Governed Agent Multiplexer (working name: Pedigree Herd)
---

Running five agents in five terminal tabs isn't a workflow. It's a cry for help.

That's the problem herdr (https://github.com/ogulcancelik/herdr) just open-sourced a fix for — a terminal-based "agent multiplexer" that gives you one control surface to run and coordinate multiple coding/AI agents at once. It picked up 609 stars in a day, which tells you how many people are currently running that five-tabs setup and hating it.

Here's what herdr doesn't solve, and what nobody building "agent multiplexer" tools solves by default: identity, permission scoping, and an audit trail per agent. You get a better cockpit for running five agents. You don't get an answer to "which agent touched what, and who let it."

That gap is the product. Call it Pedigree Herd: the same multiplexer pattern herdr proves people want, wrapped in the governance primitives I already run inside Pedigree — a scoped credential per spawned agent, least-privilege by default, and every action logged to something you'd hand a regulator without flinching. The developer's terminal workflow doesn't change. What changes is that when agent #4 does something it shouldn't have, you know which agent, under whose authority, and why — instead of finding out from a client.

I'm not shipping this today. It's on the backlog, WATCH status, next to a routing-layer version of the same idea (PedigreeRoute, built on the OmniRoute pattern). But the wedge is obvious enough that I'm giving it away here instead of sitting on it: multiplexing agents is solved. Governing them while they're multiplexed is not, and that's the business.

Segregation of duties doesn't stop mattering because the "employee" is five terminal tabs of agents instead of one.
