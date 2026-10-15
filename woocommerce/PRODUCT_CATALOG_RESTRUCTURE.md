# WooCommerce Product Catalog Restructure

Status: Backlog requested by Felipe. No production changes authorized or performed.

Last updated: 2026-10-15.

## Objective

Update the current `hortamericascanada.com` WooCommerce catalog and prepare the future Hort Canada storefront around two clear commercial sections:

1. **OPTIMISATION**
2. **PRÉVENTION**

Products will be qualified against these two sections instead of using `Greenhouse` and `Vertical` as the primary storefront structure.

## Product Additions Requested

Add new replacement-part products to the current WooCommerce catalog, including:

- replacement parts
- cables described as "welan" by Felipe; exact spelling, brand, model and technical specifications must be confirmed before publication
- other replacement components to be inventoried

Each product requires, at minimum:

- approved product name
- SKU
- manufacturer/brand
- compatibility/application
- technical specifications
- sales description
- product images
- price and tax treatment
- inventory/availability rule
- shipping weight/dimensions if relevant
- warranty/return information
- assignment to OPTIMISATION, PRÉVENTION or both

Do not publish incomplete products or infer specifications.

## Proposed Storefront Structure

### OPTIMISATION

Products that improve performance, efficiency, output, automation, control or operating quality.

### PRÉVENTION

Products that reduce failure, downtime, damage, maintenance risk, safety risk or operational interruption.

### Product Classification

A product may belong to one or both sections. The exact rule must be approved before bulk classification:

- single primary section plus optional secondary section, or
- both sections as equal WooCommerce categories

Existing `Greenhouse` and `Vertical` terms should not remain the main storefront sections. Before removing or renaming them, decide whether they should become secondary application attributes/filters so useful product context is not lost.

## Safe Implementation Sequence

1. Export the current WooCommerce product, category, tag and URL inventory.
2. Inventory the new replacement parts and confirm exact product data.
3. Map every existing product to OPTIMISATION, PRÉVENTION, both or review-required.
4. Decide whether `Greenhouse` and `Vertical` remain as secondary attributes/filters.
5. Design the new menu, category landing pages and product filters in staging.
6. Create an old-URL to new-URL redirect map.
7. Validate search, filters, cart, checkout, taxes and shipping in staging.
8. Validate WooCommerce emails using the new Workspace dependency plan.
9. Review SEO impacts in Search Console and analytics.
10. Obtain Felipe approval for the exact production change set and rollback plan.
11. Apply the approved changes during a controlled window.
12. Submit/update the sitemap and monitor indexing, redirects and sales flows.

## SEO and External Dependencies

Before changing production categories or URLs:

- record all current category and product URLs
- preserve product slugs where possible
- create 301 redirects for every changed indexed URL
- update menus, internal links, breadcrumbs and structured data
- update XML sitemap
- verify Google Search Console ownership under the new Workspace account
- annotate/check Google Analytics and Tag Manager
- verify Merchant Center/product feeds if used
- test WooCommerce order emails, website forms and SMTP sender/reply-to settings

Do not delete old categories until redirects and rollback information are ready.

## Source-of-Truth Boundary

This catalog restructure does not settle the future authority for product name, description, price or inventory between Odoo and WooCommerce. Until that decision is approved:

- avoid bidirectional synchronization
- record which system supplied each product field
- prevent bulk overwrites
- re-read current WooCommerce state before any production update

## Decisions Required

1. Is the cable name `welan`, `Wieland`, or another exact product/brand name?
2. What are the complete SKUs and specifications for the replacement parts?
3. Can a product belong to both OPTIMISATION and PRÉVENTION?
4. Should `Greenhouse` and `Vertical` become attributes/filters or disappear entirely?
5. Which system owns product descriptions, prices and inventory during the transition?
6. Will the restructure happen on `hortamericascanada.com` first and later move to the Hort Canada site, or only once on the future site?

