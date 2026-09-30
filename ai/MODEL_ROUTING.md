# AI Model Routing

Goal: minimize token cost and latency without sacrificing required quality.

## Tiers

0. No AI — API, SQL, deterministic code, calculations, permissions.
1. Lightweight — extraction, classification, normalization, simple summaries.
2. Medium — nuanced drafting, moderate reasoning, multi-record summaries.
3. Advanced — complex multi-system reasoning, difficult troubleshooting, architecture, high-impact ambiguity.

User should not normally choose the model manually.

## Cost controls

- cache reusable outputs
- retrieve only relevant context
- reuse fresh reports
- summarize before escalation
- avoid repeatedly sending full history
- log model/tokens/cost/latency
- validate cheap-model output before escalation where possible

Preferred report flow:

`API -> deterministic calculation -> visual/table -> optional AI summary`
