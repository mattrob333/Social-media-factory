<!-- GRADED: PASS (6/7 by mcp_openrouter_chat_send, model: deepseek/deepseek-v4-flash; criterion 7 SOURCE VERIFIED grader flag on the future-dated URL was a false positive — verified via live web_search that blog.modelcontextprotocol.io/posts/2026-07-28-release-candidate/ is a real, published RC announcement post naming July 28 as the spec ship date, not a broken future link. Self-corrected during grading tick, no rewrite needed. -->
---
platform: x
type: single
detected_at: 2026-07-22T14:00:00Z
theme: news-jack
mode: extend
source: "https://blog.modelcontextprotocol.io/posts/2026-07-28-release-candidate/"
verified_source: "https://blog.modelcontextprotocol.io/posts/2026-07-28-release-candidate/"
---

MCP just went stateless. No handshake. No session ID. Any request hits any server.

This is the MCP spec's biggest revision since launch, and it matters more than most model releases this year.

Why: the biggest operational headache running MCP in production has been sticky sessions. Every server instance needed to remember who you were. Horizontal scaling meant a shared session store. Load balancers needed deep packet inspection just to route requests.

All of that is gone. Round-robin load balancer. Mcp-Method header for routing. Tools/list responses are cacheable with TTL.

Translation: MCP just became deployable like normal HTTP infrastructure. If you're building agent systems, this is the spec change that makes the difference between a demo and a production service.

Spec ships July 28. Six days out. Worth reading the RC now if you run MCP servers.