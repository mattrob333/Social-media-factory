# SaaS Idea Backlog

Auto-populated by the daily ingest loop whenever a bookmark, X account, or
GitHub repo is classified `BUILD_WITH_IT` with confidence >= 4 (see
`bookmarks.yaml`). Also the source for the weekly "SaaS Idea of the Week"
content theme (`content-themes.yaml`).

Each entry stays here until Matt marks it Shipped, Parked, or Killed. This is
a backlog, not a to-do list — most ideas sit in WATCH state for a while before
anything gets built.

## Format

```
### {Idea Name}
- **Source:** {bookmark/account/repo + link}
- **Date surfaced:** {ISO date}
- **The gap:** what's missing that this idea fills
- **The wedge:** smallest version that's sellable
- **Maps to:** Pedigree / TakeoffSpeed / BCOS / new standalone / none
- **Status:** WATCH | BUILDING | SHIPPED | PARKED | KILLED
```

---

## Backlog

### AI Cost & Routing Governance Layer (working name: PedigreeRoute)
- **Source:** GitHub trending — diegosouzapw/OmniRoute, https://github.com/diegosouzapw/OmniRoute
- **Date surfaced:** 2026-07-01
- **The gap:** Enterprises running multi-agent systems have no governed way to route across 200+ model providers for cost/fallback — they either hand-roll it or eat OpenRouter-style markup with zero audit trail on which model touched what data.
- **The wedge:** A managed, audited routing layer bolted onto Pedigree's existing governance/SoD framework — same free-gateway routing OmniRoute proves is viable, but with per-agent policy, data-retention control, and cost attribution baked in. Sell as "AI cost governance," not "another router."
- **Maps to:** Pedigree (governance layer extension)
- **Status:** WATCH

### Governed Agent Multiplexer (working name: Pedigree Herd)
- **Source:** GitHub trending — ogulcancelik/herdr, https://github.com/ogulcancelik/herdr
- **Date surfaced:** 2026-07-02
- **The gap:** Open-source terminal agent multiplexers (herdr) solve *running* multiple agents at once, but have no identity, permission scoping, or audit trail per agent — exactly the gap between "cool dev tool" and "enterprise-safe multi-agent orchestration."
- **The wedge:** A drop-in orchestration layer that wraps multiplexer-style agent coordination (like herdr) with Pedigree's existing SoD/identity/audit primitives — each spawned agent gets a scoped credential and every action is logged, without changing how the developer interacts with the terminal.
- **Maps to:** Pedigree (governance layer extension, orchestration-layer companion to the PedigreeRoute cost-routing idea below)
- **Status:** WATCH

### AI Cost & Routing Governance Layer (working name: PedigreeRoute)
- **Source:** GitHub trending — diegosouzapw/OmniRoute, https://github.com/diegosouzapw/OmniRoute
- **Date surfaced:** 2026-07-01
- **The gap:** Enterprises running multi-agent systems have no governed way to route across 200+ model providers for cost/fallback — they either hand-roll it or eat OpenRouter-style markup with zero audit trail on which model touched what data.
- **The wedge:** A managed, audited routing layer bolted onto Pedigree's existing governance/SoD framework — same free-gateway routing OmniRoute proves is viable, but with per-agent policy, data-retention control, and cost attribution baked in. Sell as "AI cost governance," not "another router."
- **Maps to:** Pedigree (governance layer extension)
- **Status:** WATCH

_Older entries will accumulate below as future ticks surface BUILD_WITH_IT items._
