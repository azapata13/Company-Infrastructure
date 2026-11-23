# Website Domain Migration Runbook

Current site:
`hortamericascanada.com`

New primary domain:
`hort-canada.com`

## Objective

Move the complete Hort Americas Canada WordPress/WooCommerce site to `hort-canada.com` with minimal downtime, preserved ecommerce functionality, SEO continuity, tested integrations and a rollback path.

## Sequence

1. Audit current hosting, DNS, WordPress, WooCommerce, theme, plugins, forms, analytics, integrations and webhooks.
2. Take full filesystem + database backup.
3. Create a staging clone on the new domain/environment.
4. Configure SSL for `hort-canada.com`.
5. Update WordPress Home/Site URLs.
6. Perform controlled search/replace of old absolute URLs.
7. Validate media/assets.
8. Validate products, categories, cart, checkout, taxes, shipping and payment flows.
9. Validate forms and transactional emails.
10. Validate WooCommerce/API integrations and webhooks.
11. Preserve URL paths wherever possible.
12. Prepare one-to-one 301 redirects from `hortamericascanada.com` to `hort-canada.com`.
13. Update canonical URLs, sitemap, robots, analytics and Search Console.
14. Schedule controlled cutover.
15. Freeze/synchronize final changes if needed.
16. Switch the new domain to production.
17. Run end-to-end functional tests.
18. Keep the old domain active for 301 redirects.
19. Monitor 404s, checkout failures, webhooks, payments and indexing.
20. Keep a rollback package until the migration is proven stable.

## Do not

- do not delete the old site/domain immediately
- do not change production URLs without a tested staging copy
- do not lose old URL-to-new URL redirects
- do not rotate API credentials unless required
- do not assume webhooks/payment/shipping integrations will automatically follow the domain change

## GO gates

- GO 1 Audit complete
- GO 2 Backup verified
- GO 3 Staging clone works
- GO 4 Ecommerce tests pass
- GO 5 SEO/redirect plan ready
- GO 6 Integrations/webhooks verified
- GO 7 Cutover approved
- GO 8 Production validation passed
- GO 9 Monitoring stable
