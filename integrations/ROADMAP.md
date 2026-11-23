# Integration Roadmap

## Phase 1 — Foundation
- repository/context
- architecture
- Odoo base design
- accounting framework
- permissions
- source-of-truth rules
- secrets strategy
- dev/staging/prod strategy

## Phase 2 — Google Workspace + Drive transition
- create `hort-canada.com` users
- source/destination migration authorization
- Canadian-user Gmail pilot
- main Gmail migration
- delta Gmail migration
- forwarding/routing transition for old Canadian addresses
- no global MX change to `hortamericas.com`
- inventory the existing Hort Canada Drive tree
- classify Administration / Projects-Clients / Manufacturers / Commercial Invoices / shared knowledge
- map old Drive IDs/paths to the new Drive
- detect duplicate client/vendor folders before migration
- define the new canonical Drive structure
- pilot Drive migration with representative client/partner/manufacturer/admin cases
- migrate approved Drive content into the new Hort Canada Drive
- validate counts, permissions and Odoo links
- run Drive delta migration before cutover
- preserve the old Drive as legacy/read-only reference until acceptance

Detailed runbook: `google-workspace/DRIVE_RESTRUCTURING_MIGRATION.md`

## Phase 3 — Website + domain migration
Migrate the current Hort Americas Canada website from `hortamericascanada.com` to `hort-canada.com`.

### Preparation
- full website/database backup
- inventory current WordPress/WooCommerce plugins, theme, integrations and webhooks
- create staging copy
- configure `hort-canada.com` DNS/hosting
- provision SSL
- preserve current site until cutover is validated

### Staging migration
- clone WordPress + WooCommerce to staging/new domain
- update WordPress Site URL/Home URL
- search/replace internal absolute URLs
- validate media and downloadable assets
- validate WooCommerce products, categories, checkout, taxes, shipping and payment flows
- validate forms and transactional emails
- validate API keys, webhooks and third-party integrations
- validate admin/login access
- validate bilingual content and navigation

### SEO / analytics continuity
- preserve URL structure whenever possible
- create 301 redirects from old URLs to matching new URLs
- update canonical URLs
- update sitemap/robots configuration
- update analytics/tag manager
- add/verify new domain in Search Console
- submit new sitemap
- monitor 404s and crawl/indexing issues after cutover

### Cutover
- freeze production content/orders for a short controlled window if required
- take final database/files delta backup
- synchronize last changes
- point `hort-canada.com` to production
- run end-to-end purchase/order tests
- validate SSL, redirects, forms, checkout, webhooks and email
- keep `hortamericascanada.com` active as a redirect source
- do not immediately retire the old domain

### Post-cutover
- monitor orders/errors/404s
- verify payment/shipping integrations
- verify WooCommerce webhooks
- verify analytics/search indexing
- keep old-domain 301 redirects long term
- document rollback procedure and final state

## Phase 4 — Odoo / NetSuite migration
- build and validate Odoo base
- NetSuite export
- cleanup
- mapping
- pilot import
- accounting opening-balance preparation
- production import
- balance-sheet reconciliation

## Phase 5 — Slack read-only
- identity mapping
- read-only Odoo queries
- reports
- dashboards
- no broad write actions yet

## Phase 6 — n8n orchestration
- orchestration
- webhooks
- schedules
- retries
- idempotency
- correlation IDs
- approval workflows

## Phase 7 — Controlled Slack writes
- quotations/invoice drafts
- selected Odoo actions
- approval gates
- audit trail
- conflict checks

## Phase 8 — Google integrations
- Drive retrieval/linking
- Gmail retrieval
- drafting
- controlled sends

## Phase 9 — WooCommerce + WordPress integrations
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

## Phase 10 — Observability
- central logs
- alerts
- AI-cost reporting
- Slack audit queries
- correlation IDs across systems

## Phase 11 — Advanced AI
- automatic model routing
- cross-system analysis
- anomaly detection
- additional autonomy only after controls are proven
