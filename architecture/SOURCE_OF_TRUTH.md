# Source of Truth Matrix

Status: WORKING ARCHITECTURE — finalize before production bidirectional sync.

| Data/function | Primary system | Status |
|---|---|---|
| Companies/customers | Odoo | Proposed primary |
| Contacts | Odoo | Proposed primary |
| CRM opportunities | Odoo | Proposed primary |
| Quotes | Odoo | Proposed primary |
| Sales orders | Odoo | Proposed primary |
| Inventory | Odoo | Proposed primary |
| Accounting | Odoo | Target |
| Banking data | Odoo/bank connector | Restricted |
| Storefront/ecommerce presentation | WooCommerce | Channel authority |
| Ecommerce order capture | WooCommerce -> Odoo | Integration ownership to finalize |
| Website pages/articles/content | WordPress | Content authority |
| Theme/code/templates/plugins | GitHub repository + deployment pipeline | Technical authority |
| Documents | Google Drive | Document authority |
| Email history | Gmail | Communication authority |
| Commands/collaboration | Slack | Never master business data |
| Workflow state | n8n/state store | Execution authority |
| Audit/ops history | Central observability | Audit authority |
| Infrastructure/code/docs | GitHub | Technical source of truth |

## Core principle

Slack is the cockpit, not the database.

n8n is the orchestration layer, not the source of business truth.

Before any production bidirectional sync, explicitly finalize ownership and conflict rules for:
- product price
- product description
- inventory
- ecommerce order state
- customer master data
- document linking

Never build bidirectional sync until source ownership and conflict rules are explicit.
