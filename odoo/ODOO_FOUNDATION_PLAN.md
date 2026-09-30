# Odoo Foundation Plan

Status: Draft for Felipe approval before provisioning or production work.

This plan defines the first non-destructive Odoo foundation work package. It intentionally stops before purchasing, provisioning, importing production data, wiring production integrations, or changing any live system.

## Scope

Build the Odoo base so it can replace the useful NetSuite workflows at the current company scale:

- CRM and pipeline
- companies and contacts
- products/items
- quotations and sales orders
- invoicing readiness
- basic reporting for sales, pipeline and year-over-year comparison
- permissions and approval boundaries
- migration readiness from NetSuite

Do not implement full Slack, n8n, WooCommerce, Gmail or Drive integrations in this phase.

## Implementation Sequence

1. Confirm Odoo hosting/subscription choice.
2. Create dev Odoo environment only after approval.
3. Configure base company settings.
4. Create users and groups for Jordan, Felipe and Francis.
5. Enable minimum native modules.
6. Configure CRM stages and expected probability rules.
7. Configure companies, contacts and address conventions.
8. Configure products/items, units of measure, categories and price fields.
9. Configure quotation and sales order flow.
10. Define invoicing/accounting boundary without enabling irreversible finance workflows.
11. Create reporting views for pipeline, sales by salesperson, sales by customer, sales by product and year-over-year comparisons.
12. Prepare import templates for pilot data.
13. Import a small approved pilot dataset into dev/staging only.
14. Validate real business scenarios.
15. Document gaps and approval decisions before production migration.

## Minimum Odoo Modules

Start with native Odoo features:

| Module | Purpose | Initial stance |
|---|---|---|
| CRM | Opportunities, stages, pipeline, activities | Required |
| Contacts | Companies, people, addresses | Required |
| Sales | Quotations and sales orders | Required |
| Invoicing | Invoice-readiness and later accounting handoff | Required, controlled |
| Inventory | Products, quantities if inventory is actively used | Confirm before deep setup |
| Purchase | Supplier references and purchase flow if useful | Confirm before enabling |
| Documents | Link records to Drive references later | Defer native use unless needed |
| Accounting | Financial workflows, payments, bank data | Later, approval-gated |

Avoid custom modules until native configuration is proven insufficient.

## Base Configuration Checklist

### Company

- Legal company name and expected new business name status
- Country, province/state, currency and tax locale
- Fiscal year settings
- Company email/domain conventions
- Default payment terms
- Sales teams, if needed

### CRM

- Pipeline stages: New, Qualified, Quote Needed, Quote Sent, Negotiation, Won, Lost
- Required lost reasons
- Activity types: call, email, follow-up, quote review, document request
- Salesperson assignment rules
- Expected revenue and probability conventions
- Required fields before moving to Quote Sent

### Customers and Contacts

- Company as parent record
- Contacts as child records with roles where useful
- Billing and shipping addresses separated
- Legacy NetSuite internal ID retained in a non-authoritative reference field
- Duplicate detection by company name, email, phone and address
- Active/inactive policy

### Products

- SKU as primary product lookup key
- Name and sales description
- Product category
- Unit of measure
- Sales price and cost fields
- Vendor/supplier reference where useful
- Legacy NetSuite internal ID retained
- Active/inactive policy
- Inventory tracking decision deferred until authority is confirmed

### Sales

- Quotation numbering convention
- Quote validity defaults
- Required customer/contact fields before quote
- Salesperson ownership
- Conversion from opportunity to quotation to sales order
- Handling of legacy quotes/orders imported from NetSuite

### Reporting

- Pipeline by salesperson and stage
- Sales this month
- Sales year-to-date
- Current year vs prior year
- Sales by customer
- Sales by product/SKU
- Open quotations
- Activity follow-ups due

## Initial Role Matrix

Draft only. Final permissions require Felipe approval.

| Capability | Felipe | Jordan | Francis |
|---|---:|---:|---:|
| Read customers/contacts | Yes | Yes | Yes |
| Read products | Yes | Yes | Yes |
| Read CRM/pipeline | Yes | Yes | Yes |
| Create/edit CRM activities | Yes | Yes | Yes |
| Create/edit opportunities | Yes | Yes | Yes |
| Create quotations | Yes | Yes | Yes |
| Confirm sales orders | Approve | Confirm | Confirm |
| Edit product pricing | Approve | Approval-gated | Approval-gated |
| Edit product cost | Approve | Restricted | Restricted |
| Read invoices/payments | Yes | Confirm | Confirm |
| Post accounting entries | Approval-gated | No | No |
| Read bank transactions | Approval-gated | TBD | TBD |
| Change permissions | Approval-gated | No | No |
| Configure production Odoo | Approval-gated | No | No |

Principle: Slack or automation must enforce the requesting human's permissions and must not use backend service credentials as a bypass.

## Dev, Staging and Production

Use separate environments and separate credentials.

| Environment | Purpose | Data | Who can change |
|---|---|---|---|
| Dev | Configuration experiments, import template testing | Synthetic or small anonymized samples | Implementation team |
| Staging | Pilot import and business validation | Approved pilot data only | Controlled admins |
| Production | Live operations | Approved migrated production data | Felipe-approved admins |

No production migration or cutover happens until staging scenarios pass and Felipe approves.

## First Business Scenarios

Validate these in dev/staging before any production import:

1. Create a new company with billing and shipping contacts.
2. Create an opportunity for that company and assign a salesperson.
3. Move the opportunity through stages and schedule a follow-up.
4. Create a quotation from the opportunity.
5. Convert quotation to sales order.
6. Report pipeline by salesperson.
7. Report sales this month and compare against prior year using imported sample history.
8. Detect a duplicate customer candidate before import.
9. Detect a duplicate product/SKU candidate before import.
10. Confirm that a restricted user cannot view or change financial data beyond their role.

## Stop Conditions

Stop and request approval before:

- buying or provisioning Odoo
- creating production users
- changing production permissions
- importing real production data
- connecting production Slack, n8n, WooCommerce, Gmail, Drive or banking systems
- enabling bank feeds, payments or accounting automation
- deleting or overwriting any live NetSuite/Odoo data
- sending customer-facing emails or messages

