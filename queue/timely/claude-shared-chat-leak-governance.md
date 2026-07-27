---
platform: x
type: single
detected_at: 2026-07-27T18:30:00Z
theme: news-jack
mode: amplify-apply
source: "https://404media.co/tons-of-peoples-claude-chats-and-creations-are-exposed-on-google"
verified_source: "https://404media.co/tons-of-peoples-claude-chats-and-creations-are-exposed-on-google"
attribution: "Joseph Cox / 404 Media"
---

Claude conversations containing wallet keys, medical records, and therapy sessions are showing up in Google search.

The immediate hot take: "Claude is insecure." That's the wrong target.

The real story: users hit "create public share link" without understanding what they authorized. The model did exactly what it was told. The governance failure happened before the share button was clicked.

Every shared AI conversation is a non-human identity with public read permissions and no owner. Most orgs have policies for sharing internal documents externally. Almost none have policies for sharing AI conversations. Same risk surface, new format.

If you're deploying agents: write the data-governance rule for AI outputs before your first share link hits Google. The model can't know what's sensitive. That's your job.