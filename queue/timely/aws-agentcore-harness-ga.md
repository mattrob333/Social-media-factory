---
platform: x
type: single
detected_at: 2026-07-20T18:00:00Z
theme: news-jack
mode: amplify-apply
source: "https://aws.amazon.com/bedrock/agentcore/"
verified_source: "https://aws.amazon.com/bedrock/agentcore/"
attribution: "AWS Bedrock AgentCore"
---

AWS just GA'd exactly what I mean when I say "harness over model."

AgentCore is a declarative harness: you specify the model, tools, and instructions. The runtime handles orchestration, memory, error recovery, auth, and audit.

This is not a new framework. It's AWS productizing the pattern that separates demos from production: the model is the smallest variable; the harness is everything else.

Every team I see building agents spends 70% of their time on the same infrastructure problems AgentCore just standardized. Security, tool-call routing, state management, retry logic. And most of them rebuild it from scratch every time.

The largest cloud provider just shipped the bet that infrastructure matters more than the model. That's a signal worth paying attention to.

MODE: amplify-apply
DOMAIN: agent-building
ATTRIBUTION: none (source sparked own framework — "harness over model" is Matt's thesis, AWS validated it)
CONFIDENCE: 4
