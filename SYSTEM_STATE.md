# System State

Last updated: 2026-11-23

| Area | Status | Notes |
|---|---|---|
| GitHub repository | Active | `azapata13/Company-Infrastructure` is the durable technical source of truth |
| Durable Codex context | Active | `AGENTS.md` is the master operating contract |
| Slack architecture | Approved | Slack = operational cockpit, not master data |
| Odoo | Planned / design phase | Future ERP/CRM/sales/inventory/accounting core replacing useful NetSuite functions; legacy operating model now documented for workflow mapping |
| NetSuite | Legacy / migration source | Keep as reference/archive during transition; migrate approved operational + financial state |
| n8n | Planned | Orchestration layer between Slack and business systems |
| Google Workspace | Migration plan updated | Canadian accounts only: `hortamericas.com` -> `hort-canada.com`; no global MX change to `hortamericas.com` |
| Google Drive | Active design input | Documentary memory; Jordan/Gabrielle operational filing model reviewed and must be preserved/improved with Odoo links and re-read-before-write |
| Gmail | Planned | Search/draft/send under permission and approval rules |
| WooCommerce | Planned | Products, orders, stock, prices, coupons and channel actions exposed through controlled workflows |
| WordPress | Planned | Content/page/article updates may be controlled from Slack; structural code/theme changes use GitHub/staging |
| Central logging | Required | Audit trail, correlation IDs, failures, AI costs |
| AI routing | Required | Prefer deterministic/API work first; escalate models only when needed |
| Permissions | Required | Per-human authorization; exact matrix still to finalize |
| Banking/accounting | Planned | Sensitive / role-controlled / approval-gated |
| Secrets | Policy active | Real API keys/tokens/passwords stay outside GitHub |

## Current architecture

`Slack -> n8n/orchestration -> Odoo / WooCommerce / WordPress / Google Workspace`

Technical/code changes:

`Slack/request -> GitHub + Codex -> dev/staging -> test -> approval -> production`

Slack is the user cockpit. Odoo remains the operational/financial system of record. WooCommerce remains the ecommerce channel. WordPress remains the content/site platform. Google Drive/Gmail remain document and communication systems.

## Operational knowledge captured

Jordan's Drive operations package and Gabrielle's documented procedures have been reviewed and captured in `operations/HACC_LEGACY_OPERATING_MODEL.md`.

Design now explicitly includes:
- email/WooCommerce/form multi-entry intake with dedupe;
- customer + project/opportunity creation;
- central dossier and Drive linkage;
- SO/PO many-to-many traceability;
- consolidation/waiting status for grouped freight;
- accounts-payable queue and paid-document evidence;
- logistics/customs/RMA traceability;
- month-end/accounting evidence;
- management reporting beyond basic P&L;
- re-read Drive/Odoo before answering or writing.

## Immediate next milestones

1. Finalize Odoo base design and accounting scope.
2. Define source-of-truth ownership per data category.
3. Finalize roles/permissions and approval matrix.
4. Prepare Workspace migration of Canadian users to `hort-canada.com`.
5. Build Slack read-only capabilities first.
6. Add n8n orchestration and controlled write actions.
7. Add WooCommerce/WordPress/Google integrations progressively.
8. Add centralized observability before broad autonomy.

## Approval rule

Production-impacting, sensitive, destructive, mass-change or irreversible actions require Felipe's approval unless explicitly delegated.
