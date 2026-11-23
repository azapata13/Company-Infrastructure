# Changelog

## 2026-11-23

### Added
- reviewed Jordan's Drive operations package and Gabrielle's documented operating procedures
- added `operations/HACC_LEGACY_OPERATING_MODEL.md` as the durable legacy-to-target workflow reference
- documented multi-entry intake (email/WooCommerce/forms), deduplication, central dossier, SO/PO many-to-many traceability, consolidation status, Drive evidence, A/P queue, logistics/RMA and management-reporting requirements
- documented the accounting-design conflict around foreign-currency revaluation for later validation

### Updated
- confirmed `azapata13/Company-Infrastructure` as the durable technical source of truth
- expanded Slack from read/report cockpit to controlled operational cockpit
- documented WooCommerce actions available through controlled workflows
- documented WordPress content automation boundary
- required GitHub/Codex + staging/test/approval for structural theme/code changes
- expanded Odoo target to full operational + financial ERP replacement of useful NetSuite functions
- added balance-sheet/P&L/inventory/tax/opening-balance reconciliation requirements for NetSuite -> Odoo cutover
- updated Workspace migration destination to `hort-canada.com`
- changed Workspace plan to migrate Canadian accounts only
- explicitly preserved US `hortamericas.com` Workspace and global MX records
- clarified one migration engine with separate source/destination admin authorization
- reinforced secrets-outside-Git policy
- expanded source-of-truth, approvals, n8n orchestration and observability architecture

## 2026-09-30

### Added
- master Codex context and operating contract
- Slack-first architecture
- Odoo/NetSuite blueprint
- duplicate/conflict/idempotency rules
- permissions/security baseline
- centralized observability requirements
- cost-aware AI routing
- Google Workspace migration runbook
- GitHub/Codex workflow rules
- preserved open architecture questions
