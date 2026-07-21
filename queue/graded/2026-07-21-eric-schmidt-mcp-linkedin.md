<!-- GRADED: PASS (all 7 criteria by mcp_openrouter_chat_send, model: deepseek/deepseek-v4-flash) -->
---
platform: linkedin
type: post
theme: bookmark-spotlight
mode: amplify-apply
source: "queue/scored/2026-07-14-x-eric-schmidt-mcp-ted.md"
---

Eric Schmidt, former Google CEO, said something on a TED stage that most middleware vendors should be worried about: "There's a model protocol from Anthropic. You can actually connect the model directly into the database without any of the connectors... there's a whole industry there that goes away."

He's talking about MCP — Model Context Protocol.

Here's what that "whole industry" actually was: custom connectors, ETL glue, API wrapper layers, the entire category of tools that existed only to translate between a database and whatever app needed to talk to it. That's a real business today. Companies get funded on exactly that plumbing.

MCP collapses it. An agent with an MCP server for your database doesn't need a bespoke connector — it queries the schema directly, with the same protocol it uses to talk to your filesystem or your CRM.

I run this in client work now. What used to be a two-week integration sprint — building and testing a connector for one system — is an MCP server you stand up in an afternoon. The savings isn't the model being smarter. It's the protocol removing a category of work that had no business existing once agents could speak one standard language to any data source.

If your product's moat was "we built the connector so you don't have to," read the room. The connector layer is becoming a commodity, and Schmidt just said it on a stage in front of everyone building the next generation of enterprise software.
