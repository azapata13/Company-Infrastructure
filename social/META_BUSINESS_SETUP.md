# Hort Canada Meta Business Setup

Status: Approved planning requirement. No Meta accounts or permissions have been changed.

Last updated: 2026-10-16.

## Trigger

Perform this setup as part of the new Hort Canada ecosystem after:

- the official `@hort-canada.com` email address is active
- the Hort Canada logo and basic brand identity are approved
- the exact Facebook Page and Instagram handles are confirmed

The exact official email address used for account contact and recovery must be recorded before setup.

## Setup Sequence

1. Create the official Instagram Hort Canada account using the approved official Hort Canada email address.
2. Create or confirm the official Hort Canada Facebook Page.
3. Create or select the company-owned Meta Business portfolio in Meta Business Suite.
4. Add the Hort Canada Facebook Page to the business portfolio.
5. Connect the Hort Canada Instagram account to the Facebook Page and business portfolio.
6. Enable 2-factor authentication requirements for people with access.
7. Add each person through their own Meta account.
8. Assign the approved permissions below.
9. Verify that each person can perform only their intended tasks.
10. Record the Page, Instagram handle, business portfolio ID, owners and recovery contacts without storing passwords in Git.

## Access Matrix

| Person | Access |
|---|---|
| Felipe | Admin / full control |
| Jordan | Admin / full control |
| Francis | Publication / content access |
| Billy | Publication / content access |

Felipe and Jordan provide two independent full-control administrators for recovery. Francis and Billy receive content permissions only unless Felipe later approves a change.

## Security Rules

- Do not share Facebook, Instagram or Meta passwords.
- Do not use one shared personal Meta account.
- Each person uses their own Meta account and receives role-based access.
- Require 2-factor authentication for full-control administrators and preferably for everyone.
- Store recovery information in the approved password manager or vault, not in this repository.
- Re-read current Page, Instagram and business-portfolio ownership before changing access.
- Verify access after assignment and log the final role matrix.
- Removing owners or changing full-control access requires Felipe's explicit approval.

## Validation

- Felipe can manage settings, people and assets.
- Jordan can manage settings, people and assets.
- Francis can create/publish content but cannot change ownership or administrators.
- Billy can create/publish content but cannot change ownership or administrators.
- Facebook Page and Instagram publishing work from Meta Business Suite.
- The official Hort Canada email receives account and recovery notifications.
- No credential has been shared through email, chat or Git.

