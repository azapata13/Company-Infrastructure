# Approval Required Decisions

Status: Open.

Felipe approval is required before implementation choices below become operational or production-impacting.

## Odoo Foundation

1. Odoo hosting/subscription choice.
2. Whether to enable Inventory in the first Odoo foundation build.
3. Whether to enable Purchase in the first Odoo foundation build.
4. Accounting scope for phase 1: invoice visibility only, full accounting setup, or defer.
5. Final user/role matrix for Felipe, Jordan and Francis.
6. Who can confirm sales orders.
7. Who can view invoices, payments and bank transaction data.
8. Who can edit pricing, cost and product authority fields.

## NetSuite Migration

1. Historical depth for sales orders, invoices and payments.
2. Whether inactive customers should migrate.
3. Whether inactive products should migrate.
4. Whether closed/lost opportunities should migrate.
5. Which custom fields are still useful.
6. Pilot dataset scope.
7. Production migration timing and rollback expectations.

## Source of Truth

1. Product price authority.
2. Product description authority.
3. Inventory authority.
4. Ecommerce order ownership.
5. Drive-to-Odoo document linking convention.

## Production Stop Gates

No action proceeds without explicit approval for:

- production Odoo provisioning
- production permissions
- real migration/import
- accounting/banking setup
- payment provider setup
- production Slack/n8n/WooCommerce/Gmail/Drive integrations
- destructive cleanup or deletion

