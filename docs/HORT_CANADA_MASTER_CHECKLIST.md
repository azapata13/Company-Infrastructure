# Hort Canada Master Transition Checklist

Status: Active backlog. This is the master list for the business-name transition.

Last updated: 2026-10-15.

The detailed Odoo, Google Workspace and WooCommerce plans remain authoritative for their technical steps. This checklist keeps the complete business transition visible, including personal profiles, social media and old subscriptions.

## The 16 Tasks

1. **Confirm the Hort Canada identity**
   Confirm the display name, legal-name implications, logo, colours, short description, contact details and approved wording before public changes.

2. **Create the `hort-canada.com` Google Workspace**
   Purchase Business Starter flexible for five users plus the smallest approved additional-storage subscription.

3. **Recreate Workspace users, groups and security**
   Recreate Billy, Felipe, Francis, Gabrielle and Jordan; recreate `admin`, `commande`, `info` and `support`; configure super admins, recovery and 2-Step Verification.

4. **Migrate Gmail, Drive, contacts and calendars**
   Run pilots, validate permissions/content, run the main copy and delta migration, and keep the source Workspace active during stabilization.

5. **Cut over the domain and email safely**
   Prepare and approve MX, SPF, DKIM, DMARC, forwarding/aliases and inbound/outbound tests before changing production DNS.

6. **Transfer access to Google business properties**
   Add the new accounts to Search Console, Analytics, Tag Manager, Business Profile, Ads, Merchant Center, YouTube and reCAPTCHA where used. Do not remove old owners until new access is validated.

7. **Update the public website identity**
   Update the business name, logo, contact information, privacy/legal pages, header/footer and public links at the approved launch time.

8. **Update website forms and email delivery**
   Change `info`/contact/quote form recipients, sender, reply-to, WordPress administration email and SMTP configuration, then test every form end to end.

9. **Update WooCommerce operational email**
   Change order, failed/cancelled order, customer confirmation and other operational addresses, then validate with controlled test orders.

10. **Add the replacement-part products**
    Add approved replacement parts and cable products. Confirm the exact spelling/brand/specifications of the products currently described as "welan" before publication.

11. **Restructure the WooCommerce catalog**
    Replace Greenhouse/Vertical as the primary navigation with **OPTIMISATION** and **PRÉVENTION**, and classify each product in one or both sections according to an approved rule.

12. **Protect SEO and ecommerce tracking**
    Map old/new URLs, create 301 redirects, update menus/internal links/sitemap/schema, and validate Search Console, Analytics, Tag Manager and product feeds.

13. **Update Felipe's personal LinkedIn**
    Update employer/business name, headline, experience, description, website, contact information and relevant featured links at the coordinated launch time.

14. **Create or update Hort Canada social profiles**
    Create the Facebook and Instagram profiles, reserve consistent handles, configure ownership/admin recovery, add approved branding/bios/links and record credentials securely. Review whether a company LinkedIn page also needs creation or renaming.

15. **Audit, export and cancel the old Shopify account**
    Before cancellation, export products, customers, orders and reports; preserve theme/content; identify domains, DNS, email, apps, payment, subscription and integration dependencies; record cancellation consequences and recovery options. Cancellation requires Felipe's explicit approval.

16. **Complete launch cleanup and stabilization**
    Update signatures, templates, quotations, invoices, supplier/customer portals, payment/shipping notifications, directory listings and recovery emails; communicate the name change; test all critical flows; monitor for 2-4 weeks; then request approval before cancelling the old Workspace or removing old identities.

## Approval Gates

Felipe approval is required before:

- purchases or paid subscriptions
- production DNS/email changes
- real data migrations
- public website/catalog restructuring
- external permission/owner removal
- social-profile publication under the new brand
- Shopify cancellation
- source Workspace cancellation
- deletion or irreversible changes

## Completion Rule

A task is not complete merely because its setting was changed. It is complete only when the result is tested, its owner is known, rollback/recovery is understood and the evidence is recorded.
