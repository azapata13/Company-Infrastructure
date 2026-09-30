# First Test Plan

Status: Draft for Odoo foundation validation.

## Repository Checks

Run before commits:

- `git status --short`
- inspect changed files
- verify no real secrets are present
- verify Markdown links and headings manually until automated linting exists

## Odoo Dev/Staging Tests

These tests should run in dev first, then staging after pilot import approval.

### Configuration Tests

1. Confirm installed modules match the approved minimum module list.
2. Confirm CRM stages exist in the approved order.
3. Confirm required company settings are present.
4. Confirm users have expected roles and restricted access.
5. Confirm product categories and units of measure are available.

### Import Tests

1. Import a small customer/contact sample.
2. Import a small product sample.
3. Import a small opportunity sample.
4. Import a small quote/sales sample if approved.
5. Verify legacy NetSuite IDs are retained for traceability.
6. Verify duplicates are detected before import.

### Business Scenario Tests

1. Create customer and contacts.
2. Create opportunity and schedule activity.
3. Move opportunity through CRM stages.
4. Create quotation from opportunity.
5. Convert quotation to sales order.
6. Generate sales-by-salesperson report.
7. Generate current-year vs prior-year comparison with pilot history.
8. Confirm restricted finance/banking access is blocked.

### Safety Tests

1. Attempt duplicate customer import and confirm it is flagged.
2. Attempt duplicate SKU import and confirm it is flagged.
3. Confirm restricted user cannot edit pricing if not approved.
4. Confirm sensitive actions are logged or blocked until logging is available.
5. Confirm no Slack/n8n/WooCommerce production integration is connected in this phase.

## Acceptance Criteria

- Pilot data imports cleanly and can be traced back to NetSuite IDs.
- Core sales workflow works without custom modules.
- Reports answer the initial NetSuite replacement questions.
- Permission gaps are documented.
- Production provisioning and migration remain blocked until Felipe approves.

