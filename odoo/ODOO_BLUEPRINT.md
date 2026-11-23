# Odoo Blueprint

## Objective

Recreate the useful operational and financial experience of the existing NetSuite setup while making it simpler, easier to automate and easier to query/operate from Slack.

The goal is not merely a customer/product import. Odoo is intended to become the ERP core replacing the useful NetSuite functions.

Initial scale:
- ~100 customers
- ~100 items/products
- relatively short order lifecycle
- limited long-lived open orders / receivables compared with a complex enterprise environment

## Target functions

- CRM/opportunities
- pipeline
- customers/companies
- contacts
- quotations
- sales orders
- products/items
- inventory
- purchasing
- invoicing
- accounting
- payments
- taxes
- activities/reminders
- document links
- sales-rep performance
- YTD/prior-year comparisons
- dashboards/reporting

## Required financial outputs

Odoo must support a clean financial structure capable of producing:
- balance sheet
- profit & loss
- sales
- gross margin
- inventory value
- purchasing
- taxes
- cash/bank position
- receivables/payables where applicable
- management dashboards/charts

## Migration principle

Do not clone NetSuite blindly.

Keep useful fields/workflows/reports; avoid obsolete custom fields, dead workflows, duplicates, irrelevant history and unnecessary custom modules.

NetSuite may remain available as legacy/archive during the transition rather than forcing all historical records into Odoo.

## Cutover principle

The opening position in Odoo must reconcile to the closing NetSuite position at cutover.

Validate at minimum:
- bank/cash balances
- inventory quantity and value
- taxes
- open receivables
- open payables
- assets/liabilities
- equity
- open operational transactions

The first Odoo balance sheet must continue correctly from the final approved NetSuite state.

## Build sequence

1. Create Odoo environment.
2. Configure company structure.
3. Configure users/roles.
4. Configure chart of accounts/taxes/accounting framework.
5. Configure CRM stages.
6. Configure customer/contact model.
7. Configure product/item model.
8. Configure quotation/sales flow.
9. Configure inventory/purchase.
10. Configure invoicing/payments.
11. Create initial dashboards/reports.
12. Import pilot data.
13. Validate real operational + accounting scenarios.
14. Prepare opening balances and cutover package.
15. Import approved production data.
16. Reconcile opening Odoo state to closing NetSuite state.
17. Integrate Slack read-only first.
18. Add controlled automation later.
