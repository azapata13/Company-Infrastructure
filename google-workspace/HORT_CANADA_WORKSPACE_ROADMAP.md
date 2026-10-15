# Hort Canada Google Workspace Roadmap

Status: Planning and guided setup.

Last verified: 2026-10-15.

## Objective

Create a new Google Workspace for `hort-canada.com` that reproduces the useful configuration of the current `hortamericascanada.com` Workspace:

- same active human users
- same required aliases and generic addresses
- same groups, members, owners and access settings
- same useful organizational settings and security baseline
- Gmail history, labels, contacts and calendars migrated
- Google Drive structure, content and permissions migrated and validated
- old addresses kept reachable during a controlled transition

The source Workspace remains active until the final validation and cutover are approved.

## Scope Exception

The general project sequence places Google Workspace after the Odoo foundation. Felipe has requested that creation and preparation of the `hort-canada.com` Workspace begin now because it is tied to the business-name transition.

This work may proceed in parallel with Odoo only through inventory, purchase, domain verification, target configuration and pilot planning. No real data migration, MX cutover, domain release, user deletion or old-Workspace shutdown occurs without explicit approval.

## Recommended Subscription Starting Point

Start with **Google Workspace Business Starter** on the flexible monthly plan while setup and storage needs are validated.

Current public Canadian list pricing at the verification date:

| Plan | Flexible monthly | Annual commitment, billed monthly | Pooled storage |
|---|---:|---:|---:|
| Business Starter | CAD 11/user/month | CAD 9.20/user/month | 30 GB/user |
| Business Standard | CAD 22/user/month | CAD 18.40/user/month | 2 TB/user |

Why flexible first:

- users can be added or removed without locking the first configuration into a one-year seat count
- the exact storage requirement can be measured before choosing an add-on or upgrade
- the plan can be changed after the migration pilot is understood

Google currently offers pooled additional-storage subscriptions for Business editions. The checkout/Admin console price in Canada is authoritative. Before buying storage, compare:

1. Starter total storage: number of licensed users x 30 GB.
2. Starter plus the smallest suitable pooled-storage add-on.
3. Standard total storage: number of licensed users x 2 TB.

Do not assume the prior storage add-on is still the best or has the same price. Record the exact current source usage first.

### Current Workspace Snapshot Confirmed

Admin console screenshots dated 2026-10-15 confirm:

- Business Starter on the flexible plan
- CAD 11 per user/month
- 5 active licences
- CAD 55 estimated monthly invoice before any unshown taxes/adjustments
- 5 active users: Billy Hiebert, Felipe Zapata, Francis Perras, Gabrielle Verdon and Jordan Goulet
- 4 groups: `admin`, `commande`, `info` and `support`
- approximately 1.30 GB total across the usage values visible in the user list

No separate storage add-on appears in the billing screenshot, but Felipe confirmed that additional storage is required for the new Workspace. With five Starter licences, base pooled capacity is expected to be 150 GB. Add the smallest suitable pooled-storage subscription, expected to be 100 GB if Google currently offers it in the Canadian Admin console. Review and approve its exact Canadian price, billing term and resulting total before purchase.

## Fast Path Overview

1. Inventory the existing Workspace.
2. Confirm ownership and DNS access for `hort-canada.com`.
3. Buy Business Starter using the flexible monthly plan.
4. Create the initial super-admin account.
5. Verify the domain with a TXT record only.
6. Recreate users, aliases, groups and baseline settings.
7. Measure source storage and choose the storage option.
8. Configure security and recovery access.
9. Run one Gmail pilot and one Drive pilot.
10. Validate and document differences.
11. Run the approved main migrations and delta migrations.
12. Change MX only at the approved cutover gate.
13. Keep the source Workspace active for 2-4 weeks.
14. Retire the source only after final approval.

## Phase 0 - Inventory Before Purchase

Use the current `hortamericascanada.com` Admin console as the source of truth. Capture the following without changing anything:

### Organization

- Workspace edition and billing plan
- number of paid licenses
- additional-storage subscription name, size and monthly price
- total storage used and usage by user
- primary domain, secondary domains and domain aliases
- organizational units
- administrator roles and assigned users
- enabled/disabled Workspace services
- 2-Step Verification and security policies
- recovery email and phone configuration

### Users

For every active or required account:

- current primary email
- target `@hort-canada.com` email
- first and last name
- aliases
- organizational unit
- admin roles
- group memberships and role in each group
- Gmail storage used
- Drive storage used
- delegated mailboxes
- calendars owned or shared
- migration priority

Primary internal users currently known to the project are Jordan, Felipe and Francis. The Admin console inventory determines the exact account list.

### Groups

For every group:

- source and target email address
- display name and description
- owners, managers and members
- posting permissions
- external-member and external-posting permissions
- conversation history setting
- moderation settings
- whether it is a collaborative inbox
- resources shared to the group, including Drive and Calendar

Groups must be recreated in the target Workspace; do not assume memberships or history transfer automatically.

### Drive

- total My Drive data by user
- shared drives and their managers/members
- top-level folder structure
- external shares
- files owned by former or suspended users
- Google Sites, Forms and Apps Script dependencies
- shortcuts and linked files
- business-critical files requiring permission validation

### External Email Dependencies

Inventory every system that sends to, sends from, replies to or authenticates with an address on the current domain. At minimum, verify:

- WooCommerce new-order, cancelled-order, failed-order and customer emails
- WooCommerce sender name, sender address and reply-to address
- WordPress site-administration email
- website contact, quote, support and newsletter forms
- SMTP plugin/service credentials and authorized sender addresses
- form notification recipients and confirmation emails sent to customers
- payment gateway and shipping-service notifications
- supplier/customer portals using a Workspace address for login or recovery
- Google Business Profile, Search Console, Analytics and Tag Manager access
- social media, advertising and other business-service recovery addresses
- email signatures, templates, invoices, quotations and public contact pages

Record each dependency in `google-workspace/HORT_CANADA_INVENTORY.md`. An address change is complete only after an end-to-end test succeeds and the result is recorded.

## Phase 1 - Purchase and Safe Domain Setup

These steps affect billing and domain configuration. Review the final checkout summary before confirming purchase.

1. Open the Canadian Google Workspace signup page.
2. Select Business Starter.
3. Choose the flexible monthly plan for the initial setup.
4. Enter the legal billing information and choose `hort-canada.com` as an existing domain.
5. Create the initial named admin account. Do not use a shared password or a generic shared identity as the only super admin.
6. Review the exact price, taxes, seat count, commitment and trial terms.
7. Obtain Felipe's explicit approval of that checkout summary.
8. Complete the purchase.
9. Add Google's TXT verification record at the DNS provider.
10. Verify the domain in Google Admin.

At this stage, do **not** change MX records. Existing mail must continue to flow to the current Workspace until the migration and cutover are ready.

## Phase 2 - Recreate the Target Workspace

Recommended order:

1. Set organization name to Hort Canada, subject to confirmation of the legal/display name.
2. Set country, language, timezone and regional defaults.
3. Create individual accounts for all approved users.
4. Create a second recovery-capable super admin.
5. Require password change at first sign-in.
6. Enable and validate 2-Step Verification before migration.
7. Recreate user aliases and generic addresses.
8. Recreate organizational units only if the source inventory shows they are useful.
9. Recreate groups, then owners/managers, then members.
10. Match group permissions and conversation settings.
11. Recreate shared drives and assign target managers/members.
12. Match Drive external-sharing settings deliberately.
13. Match Gmail, Calendar and service settings.
14. Record all intentional differences from the source Workspace.

Do not copy obsolete accounts, groups or insecure settings merely to make both environments visually identical.

## Phase 3 - Storage Decision

After users exist but before migration:

1. Record source Gmail and Drive usage for every user.
2. Add 20-30% temporary migration headroom.
3. Calculate the target pooled storage under Starter.
4. Compare the target Admin-console price for additional pooled storage against Business Standard.
5. Confirm whether the previous setup used a 100 GB, 1 TB or legacy storage add-on.
6. Select the smallest suitable add-on; Felipe has confirmed that an add-on is required.
7. Present the exact monthly total and any fixed-term commitment to Felipe.
8. Purchase or upgrade only after approval.

## Phase 4 - Pilot Migrations

### Gmail Pilot

1. Select one low-risk but representative mailbox.
2. Map the source user to the target user.
3. Use Google Admin's Data Migration service for Google Workspace email.
4. Migrate a defined historical range first.
5. Validate message counts, labels, attachments, sent mail and search.
6. Export and retain the migration report.
7. Run a delta migration and validate new mail.

The Google migration service copies data; it does not remove the source data.

### Drive Pilot

Drive requires a separate migration plan. Direct ownership transfer between different Workspace organizations is not supported.

1. Select one representative user folder and one representative shared resource.
2. Choose the migration method after measuring data and file types.
3. Copy into a target shared drive where appropriate so files are organization-owned.
4. Validate Docs/Sheets/Slides fidelity, comments, versions where supported, links, shortcuts and permissions.
5. Validate external collaborators.
6. Record anything not preserved and define remediation before the main migration.

Do not use download/re-upload as the default for native Google files without testing; it can lose history, links, permissions or native behavior.

## Phase 5 - Main Migration and Cutover Gates

### GO 1 - Target Ready

- subscription and storage approved
- users, aliases and groups recreated
- super-admin recovery tested
- domain verified by TXT
- no MX change yet

### GO 2 - Pilots Passed

- Gmail pilot validated
- Drive pilot validated
- gaps and remediation accepted
- reports retained

### GO 3 - Main Copy Passed

- approved Gmail history copied
- approved Drive content copied
- calendars/contacts handled according to approved scope
- group and sharing checks passed

### GO 4 - Delta Ready

- temporary forwarding or dual-delivery approach documented
- delta migration tested
- user communication ready
- rollback procedure ready
- WooCommerce and website-form address changes prepared but not activated
- external dependency register has an owner and test plan for every item

### GO 5 - MX Cutover Approved

- Felipe approves the exact DNS records and timing
- target routing, SPF, DKIM and DMARC are ready
- inbound/outbound tests are prepared
- source remains accessible
- WooCommerce, website forms and SMTP changes are scheduled in the same cutover window

### GO 6 - Stabilization Complete

- inbound/outbound mail validated
- generic addresses and groups validated
- WooCommerce order notifications validated with a test order
- every website form validated with a test submission and reply
- SMTP sender, reply-to and customer confirmations validated
- external services and recovery addresses updated and tested
- Drive access validated by each user
- final delta completed
- old Workspace retained for 2-4 weeks
- shutdown/deletion requires separate final approval

## Approval Boundaries

Explicit approval is required before:

- confirming the Workspace purchase or paid storage add-on
- committing to an annual billing term
- adding or changing production DNS records
- starting a real Gmail or Drive migration
- enabling forwarding or dual delivery
- changing MX, SPF, DKIM or DMARC
- releasing or moving any domain
- deleting, suspending or renaming source users
- removing source groups or Drive access
- cancelling or shutting down the source Workspace

## External-System Cutover Rule

Do not change WooCommerce, WordPress forms, SMTP credentials or other live integrations merely because the new mailboxes exist. Prepare their target values in advance, activate them during the approved cutover window, then test both the internal notification and the customer-facing message.

Keep old-domain aliases or forwarding active during stabilization where technically possible. This provides a recovery path for services or contacts that still use the old address.

## Reminder Schedule

Codex must surface the following checklist at each gate. Do not wait until the source Workspace is being cancelled.

### Reminder A - Immediately After Target Domain Verification

- inventory Search Console properties and verified owners
- add the approved `@hort-canada.com` account as owner without removing the old owner
- inventory Google Analytics properties and account-level roles
- inventory Google Tag Manager accounts/containers and administrator roles
- inventory Google Business Profile owners/managers
- inventory Google Ads, Merchant Center, YouTube and reCAPTCHA access if used
- verify recovery emails and service logins that use the old domain

These are permission changes. Present the exact accounts and roles to Felipe before applying them.

### Reminder B - Before Gmail/MX Cutover Approval

- prepare WooCommerce order and customer email address changes
- prepare WordPress administration email changes
- prepare website form recipients, sender and reply-to changes
- prepare SMTP authentication/sender changes
- prepare payment, shipping and supplier notification changes
- update draft signatures, templates, quotations, invoices and public contact information
- confirm old-domain forwarding/alias coverage

Prepare values and tests first; do not activate them before the approved cutover window.

### Reminder C - During and Immediately After Cutover

- place a controlled WooCommerce test order
- submit every website form and verify internal receipt plus customer confirmation
- test authenticated SMTP sending, reply-to and delivery
- test `admin`, `commande`, `info` and `support` groups
- test inbound and outbound mail for each user
- verify SPF, DKIM and DMARC results
- verify Search Console, Analytics, Tag Manager and Business Profile access using the new account

### Reminder D - Before Source Workspace Cancellation

- confirm the new account is an owner/admin, not merely a viewer, in every Google property
- confirm no critical service login or recovery address depends only on the old domain
- confirm Gmail delta migration and Drive validation are complete
- confirm WooCommerce, forms, SMTP and generic addresses have passed tests
- export final migration and access reports
- obtain separate Felipe approval before removing old owners, users, groups or subscriptions

## Immediate Next Action

Before opening checkout, complete `google-workspace/HORT_CANADA_INVENTORY.md` for users, aliases, groups and storage. Then open the Business Starter checkout and stop at the final payment screen so Felipe can approve the exact Canadian total and terms.

## Official References

- Canadian Workspace pricing: https://workspace.google.com/intl/en_ca/
- Add users: https://support.google.com/a/answer/33310
- Buy additional pooled storage: https://support.google.com/a/answer/12284220
- Migrate Google Workspace email: https://support.google.com/a/answer/14014035
- Drive ownership limitations: https://support.google.com/drive/answer/2494892
