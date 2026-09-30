# Source of Truth Matrix

Status: DRAFT.

| Data/function | Proposed primary system | Status |
|---|---|---|
| Companies/customers | Odoo | To confirm |
| Contacts | Odoo | To confirm |
| CRM opportunities | Odoo | To confirm |
| Quotes | Odoo | To confirm |
| Sales orders | Odoo | To confirm |
| Inventory | Odoo | To confirm |
| Accounting | Odoo | Later / validate |
| Banking data | Odoo/bank connector | Restricted |
| Storefront | WooCommerce | Likely |
| Ecommerce order business record | WooCommerce -> Odoo | TBD |
| Documents | Google Drive | Likely |
| Email history | Gmail | Yes |
| Commands/collaboration | Slack | Not master data |
| Workflow state | n8n/state store | Yes |
| Audit/ops history | Central observability | Yes |

Never build bidirectional sync until source ownership and conflict rules are explicit.
