# Odoo Blueprint

## Objective

Recreate the useful operational experience of the existing NetSuite setup while making it simpler, easier to automate and easier to query from Slack.

Initial scale:
- ~100 customers
- ~100 items/products

## Target functions

- CRM/opportunities
- pipeline
- customers/companies
- contacts
- quotations
- sales orders
- products/items
- inventory where required
- purchasing where required
- invoicing
- accounting later with validation
- payments
- activities/reminders
- document links
- sales-rep performance
- YTD/prior-year comparisons
- dashboards/reporting

## Principle

Do not clone NetSuite blindly.

Keep useful fields/workflows/reports; avoid obsolete custom fields, dead workflows, duplicates, irrelevant history and unnecessary custom modules.

## Build sequence

1. Create Odoo environment.
2. Configure company structure.
3. Configure users/roles.
4. Configure CRM stages.
5. Configure customer/contact model.
6. Configure product/item model.
7. Configure quotation/sales flow.
8. Configure inventory/purchase if required.
9. Define invoicing/accounting boundary.
10. Create initial dashboards/reports.
11. Import pilot data.
12. Validate with real scenarios.
13. Import approved full data.
14. Integrate Slack read-only first.
15. Add controlled automation later.
