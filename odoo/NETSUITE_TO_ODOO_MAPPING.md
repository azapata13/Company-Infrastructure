# NetSuite -> Odoo Mapping

Flow:

`NetSuite audit -> cleanup -> mapping -> pilot -> validation -> opening-balance reconciliation -> production cutover`

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
- stock quantity
- inventory value inputs
- active/inactive
- supplier reference

## Sales / operational state
Decide migration scope:
- open quotations
- open sales orders
- invoices
- payments
- selected history
- customer credits if applicable

Because the normal order lifecycle is short, prioritize current/open operational truth over importing unnecessary closed history.

## Purchasing / inventory
Map:
- vendors
- purchase orders that remain operationally relevant
- stock on hand
- stock valuation basis
- receiving state if anything is open at cutover

## Accounting / opening position
Cutover must reconcile:
- chart of accounts
- bank/cash balances
- accounts receivable
- accounts payable
- taxes payable/receivable
- inventory asset
- fixed assets/liabilities if applicable
- equity / retained earnings
- other material balance-sheet accounts

Do not activate production accounting in Odoo until the opening balance sheet reconciles to the approved NetSuite closing position.

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
- balance sheet
- profit & loss
- sales by salesperson
- sales by customer
- sales by product
- gross margin
- inventory value
- purchasing
- tax position
- YTD
- prior-year comparison
- pipeline

## Legacy ID policy

Preserve useful NetSuite IDs in Odoo migration/reference fields so records remain traceable during transition and support reconciliation.

## Open migration questions
- how much closed history?
- which inactive customers?
- which inactive products?
- closed opportunities?
- exact accounting history depth?
- exact cutover date?
