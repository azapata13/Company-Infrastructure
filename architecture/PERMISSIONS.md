# Permissions and Approvals

Initial users:
- Jordan
- Felipe
- Francis

Exact per-user matrix is still to be finalized before broad production writes.

## Categories

### Read
Reports, customers, products, order status, dashboards.

### Operational write
CRM activities, quotations, notes, follow-ups, drafts, low-risk content updates.

### Sensitive write
Pricing, refunds, accounting changes, deletion, publishing important content, mass product changes, production configuration.

### Highly sensitive
Bank balances/transactions, payments, banking details, permissions, secrets, cutovers, destructive migrations.

## Slack rule

The bot must enforce the requesting human's permissions. Backend service credentials must never become a permission bypass.

Sensitive reads and writes must be logged.

## Approval defaults

Generally automatic:
- read-only queries
- deterministic reports
- low-risk drafts
- safe status lookups

Normally approval-gated:
- material price changes
- mass updates
- refunds
- customer-facing mass sends
- accounting adjustments
- deletion
- production publishing/configuration
- WordPress theme/code deployment
- permission changes
- banking/payment actions
- migration cutovers

Production-impacting or irreversible actions require Felipe's approval unless explicitly delegated.
