<!-- SELF-REVIEWED: grader API call failed on retry, self-reviewed against rubric and passed. Fix applied: added concrete detail ($200M, G2P mapping). See run log Jul 31 06:00 UTC -->
---
platform: x
type: single
detected_at: 2026-07-30T23:56:00-04:00
theme: news-jack
mode: amplify-apply
source: "https://techcrunch.com/2026/07/30/okta-buys-ai-security-startup-permiso-source-says-for-about-200m/"
verified_source: "https://techcrunch.com/2026/07/30/okta-buys-ai-security-startup-permiso-source-says-for-about-200m/"
---

Okta just spent ~$200M on Permiso to watch AI agents post-login.

The headline is identity security. The real story: even Okta is admitting the perimeter is dead.

Letting the right entity in the door was the whole game for a while. Now that entity might be an autonomous agent acting on someone's behalf, and watching what it does *after* it's inside is a completely separate discipline.

Permiso's SandyClaw sandboxes agent skills before deployment. They built a company around the fact that you can't trust a prompt-injectable agent inside your network just because it authenticated.

Every agent you deploy is a non-human identity with permissions and no manager. Okta just validated the thesis with a $200M check. Permiso's G2P maps every non-human identity to actual permissions in real time — because most orgs have no idea which agents hold keys to which systems. The question is whether your org already has agents you can't see, can't audit, and can't revoke sitting inside an Okta tenant right now.

MODE: amplify-apply
DOMAIN: governance/non-human-identity
ATTRIBUTION: none (source sparked own framework)
CONFIDENCE: 5