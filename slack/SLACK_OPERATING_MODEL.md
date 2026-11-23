# Slack Operating Model

Slack is the main operational cockpit for Hort Canada.

Slack is not the authoritative business database. It is the command, approval and collaboration layer over the business systems.

## Target systems controlled from Slack

- Odoo
- WooCommerce
- WordPress content
- Gmail / Google Workspace
- Google Drive
- n8n workflows
- observability / audit queries
- future supported communications/telephony integrations

## Example requests

Read/query:
- Show monthly sales.
- Compare this year with last year.
- Show Francis's pipeline.
- Find latest customer document.
- What automations failed today?
- Show recent bank transactions. (authorized users only)
- Show today's WooCommerce orders.
- Show current price and stock for product X.

Controlled actions:
- Draft or send a customer email under policy.
- Create a quotation or invoice draft.
- Change a WooCommerce product price.
- Update stock.
- Create a coupon.
- Change an order status.
- Create or edit a WordPress article/page and keep it as draft or publish with approval.

## WordPress boundary

Content/data changes can be automated:
- articles
- page copy
- images/media
- product descriptions
- draft/publish status

Structural or code-level changes must NOT be edited directly in production from a simple Slack command:
- theme code
- PHP
- CSS affecting site structure
- templates
- checkout behavior
- plugins
- major layout/design changes

These changes follow:

`Slack/request -> GitHub + Codex -> dev/staging -> tests -> approval -> production`

## Report delivery preference

1. direct API/database retrieval
2. deterministic calculation
3. generated table/chart
4. optional AI summary
5. actual backend screenshot only if exact UI is requested/useful

## Write workflow

Before Slack triggers a write:
- identify requester
- check permission
- check approval requirement
- check history/idempotency
- re-read target
- detect conflicts
- execute
- verify
- log
- report result

Slack must never bypass backend permissions.

## Approval pattern

Low-risk reads can execute automatically.

Sensitive examples that normally require confirmation:
- material price changes
- mass product changes
- refunds
- accounting adjustments
- deletion
- customer-facing mass email
- publishing important site content
- production configuration
- code/theme deployment
- permission changes


## Customer/project context refresh

Before answering a customer/project/operations question or executing a related action, Slack workflows should refresh:
- current Odoo object state;
- relevant Drive folder/documents;
- recent audit/activity state;
- related Gmail/WooCommerce state when material.

Do not answer from stale cached project context when newer Drive/Odoo activity may exist.

## Exception / decision queue

Ambiguous automation should be surfaced in one central queue rather than creating duplicate records or guessing.

Examples:
- new customer vs existing customer;
- new project vs attach to existing project;
- duplicate WooCommerce/email intake;
- Odoo vs Drive discrepancy;
- blocked supplier invoice;
- ambiguous SO/PO linkage;
- consolidation deadline reached.

Slack should present the minimum decision needed, record the human decision, then resume the workflow.
