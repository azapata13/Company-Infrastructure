# NetSuite -> Odoo Mapping

Flow:

`NetSuite audit -> cleanup -> mapping -> pilot -> validation -> production import`

## Customers
Candidate fields:
- company
- contacts
- email
- phone
- billing/shipping addresses
- salesperson
- payment terms
- categories/segments
- notes
- active/inactive
- useful legacy IDs

## Products/items
Candidate fields:
- SKU
- name
- description
- manufacturer/brand
- cost
- sale price
- category
- unit of measure
- stock if used
- active/inactive
- supplier reference

## Sales
Decide migration scope:
- quotations
- sales orders
- invoices
- payments
- selected history

## CRM
Decide migration scope:
- opportunities
- stage
- expected value
- salesperson
- notes
- activities

## Reporting
Need:
- sales by salesperson
- sales by customer
- sales by product
- YTD
- prior-year comparison
- pipeline

## Open migration questions
- how much history?
- which inactive customers?
- which inactive products?
- closed opportunities?
- financial history depth?
