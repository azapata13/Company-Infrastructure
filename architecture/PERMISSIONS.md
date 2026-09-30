# Permissions and Approvals

Initial users:
- Jordan
- Felipe
- Francis

Exact matrix is still TBD.

## Categories

### Read
Reports, customers, products, order status, dashboards.

### Operational write
CRM activities, quotations, notes, follow-ups, drafts.

### Sensitive write
Pricing, refunds, accounting changes, deletion, production configuration.

### Highly sensitive
Bank balances/transactions, payments, banking details, permissions, secrets.

## Slack rule

The bot must enforce the requesting human's permissions. Backend service credentials must never become a permission bypass.

Sensitive reads and writes must be logged.
