# NetSuite Export Checklist

Status: Draft. Export execution requires access review and Felipe approval.

The goal is to export only what is needed to configure, pilot and validate Odoo. Keep legacy IDs for traceability, but do not make them authoritative in Odoo.

## Global Export Requirements

For every export:

- Export date and time
- NetSuite saved search/report name
- Exporting user
- Filters used
- Row count
- Internal ID
- External ID, if present
- Created date
- Last modified date
- Active/inactive status
- Owner/salesperson, if applicable
- Notes on custom fields that appear unused, duplicated or unclear

Use CSV or XLSX with stable headers. Keep one raw export copy unchanged and perform cleanup in separate working files.

## Customers / Companies

Required fields:

- NetSuite internal ID
- External ID
- Company name
- Parent company, if any
- Customer category/segment
- Status
- Salesperson/owner
- Email
- Phone
- Website
- Billing address line 1
- Billing address line 2
- Billing city
- Billing state/province
- Billing postal code
- Billing country
- Shipping address line 1
- Shipping address line 2
- Shipping city
- Shipping state/province
- Shipping postal code
- Shipping country
- Payment terms
- Taxable status / tax registration fields
- Currency
- Credit limit, if actively used
- Notes
- Date created
- Date last modified
- Active/inactive flag

Cleanup checks:

- duplicate company names
- duplicate email/phone/address combinations
- inactive customers with recent sales
- customers missing billing or shipping information
- unclear categories/segments

## Contacts

Required fields:

- NetSuite internal ID
- Parent customer internal ID
- Contact name
- First name
- Last name
- Job title/role
- Email
- Phone
- Mobile phone
- Address, if contact-specific
- Primary contact flag
- Billing contact flag
- Shipping contact flag
- Notes
- Active/inactive flag
- Date last modified

Cleanup checks:

- contacts not attached to a customer
- duplicate contacts under the same company
- shared emails across multiple people
- missing primary contact for active customers

## Products / Items

Required fields:

- NetSuite internal ID
- SKU/item ID
- Display name
- Sales description
- Purchase description
- Item type
- Product category/class
- Manufacturer/brand
- Unit of measure
- Sales price
- Cost
- Preferred vendor
- Vendor item/reference number
- Tax category
- Inventory tracking flag
- Quantity on hand, if inventory is in scope
- Reorder point, if used
- Lead time, if used
- Active/inactive flag
- Date created
- Date last modified

Cleanup checks:

- duplicate SKUs
- inactive products with recent sales
- products missing price or unit of measure
- inconsistent category names
- products with inventory values but unclear inventory authority

## CRM Opportunities / Pipeline

Required fields:

- NetSuite internal ID
- Opportunity number/name
- Customer internal ID
- Contact internal ID
- Salesperson
- Stage/status
- Expected close date
- Probability
- Expected revenue
- Currency
- Source/lead source
- Created date
- Last activity date
- Next activity/date
- Notes
- Won/lost status
- Lost reason, if present

Cleanup checks:

- stale open opportunities
- closed opportunities still marked active
- opportunities with missing customer
- stage names that do not map cleanly to Odoo

## Quotes / Estimates

Required fields:

- NetSuite internal ID
- Quote/estimate number
- Customer internal ID
- Contact internal ID
- Opportunity internal ID, if linked
- Salesperson
- Status
- Quote date
- Expiration date
- Currency
- Payment terms
- Line item SKU/internal ID
- Line description
- Quantity
- Unit of measure
- Unit price
- Discount
- Tax
- Line total
- Quote total
- Memo/notes
- Related sales order, if converted

Cleanup checks:

- open quotes older than agreed threshold
- quotes missing customer/contact
- lines with inactive or duplicate SKUs
- discounts without clear reason

## Sales Orders

Required fields:

- NetSuite internal ID
- Sales order number
- Customer internal ID
- Contact internal ID
- Source quote/estimate internal ID
- Salesperson
- Status
- Order date
- Fulfillment/shipping status
- Billing status
- Currency
- Payment terms
- Billing/shipping address snapshot
- Line item SKU/internal ID
- Line description
- Quantity
- Unit of measure
- Unit price
- Discount
- Tax
- Line total
- Order total
- Memo/notes

Cleanup checks:

- orders with missing product/customer references
- partially fulfilled orders
- orders with unusual discounts or manual pricing
- cancelled orders that should not migrate as active

## Invoices and Payments

Required fields:

- Invoice internal ID
- Invoice number
- Customer internal ID
- Source sales order internal ID
- Invoice date
- Due date
- Status
- Currency
- Payment terms
- Line item SKU/internal ID
- Quantity
- Unit price
- Tax
- Invoice total
- Amount paid
- Amount due
- Payment internal ID
- Payment date
- Payment amount
- Payment method
- Deposit/account reference, if safe to export
- Memo/notes

Sensitive handling:

- Do not export bank account numbers unless explicitly approved.
- Do not export payment credentials.
- Keep financial exports access-controlled.

Cleanup checks:

- open balances that do not reconcile
- payments without invoice references
- credits/refunds requiring separate handling
- financial history depth decision

## Reporting Data

Required reporting outputs:

- sales by salesperson by month
- sales by customer by month
- sales by product/SKU by month
- year-to-date sales
- prior-year comparison period
- open pipeline by salesperson and stage
- quote conversion report
- activity/reminder report, if available

Validation:

- Reconcile report totals against source NetSuite dashboards.
- Keep screenshots/PDFs of source reports used for validation.
- Record report filters exactly.

