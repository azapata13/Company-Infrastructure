# Integration Roadmap

## Phase 1 — Foundation
- repository/context
- architecture
- Odoo base
- accounting framework
- permissions
- source-of-truth rules
- secrets strategy

## Phase 2 — Workspace transition
- create `hort-canada.com` users
- source/destination migration authorization
- Canadian-user pilot
- main migration
- delta migration
- forwarding/routing transition for old Canadian addresses
- no global MX change to `hortamericas.com`

## Phase 3 — Odoo / NetSuite migration
- NetSuite export
- cleanup
- mapping
- pilot import
- accounting opening-balance preparation
- production import
- balance-sheet reconciliation

## Phase 4 — Slack
- identity mapping
- read-only Odoo queries
- reports
- approvals
- controlled commands

## Phase 5 — n8n
- orchestration
- webhooks
- schedules
- retries
- idempotency
- correlation IDs
- approval workflows

## Phase 6 — Google
- Drive retrieval/linking
- Gmail retrieval
- drafting
- controlled sends

## Phase 7 — WooCommerce + WordPress
WooCommerce:
- customers
- orders
- products
- inventory
- price changes
- coupons
- order status
- webhook deduplication

WordPress:
- articles/pages/content/media via controlled APIs
- draft/publish workflow
- code/theme/template/plugin changes through GitHub + staging + approval, not direct production edits from Slack

## Phase 8 — Observability
- central logs
- alerts
- AI-cost reporting
- Slack audit queries
- correlation IDs across systems

## Phase 9 — Advanced AI
- automatic model routing
- cross-system analysis
- anomaly detection
- additional autonomy only after controls are proven
