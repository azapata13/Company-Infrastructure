# Hort Canada Workspace Inventory

Status: Partially completed from Admin console screenshots captured 2026-10-15. Remaining fields require read-only inspection before purchase.

Do not place passwords, recovery codes, payment-card data or secret tokens in this file.

## Billing and Storage

| Item | Current value |
|---|---|
| Workspace edition | Google Workspace Business Starter |
| Billing plan: flexible or annual | Flexible |
| Price per user/month | CAD 11 |
| Number of paid licenses | 5 |
| Estimated monthly invoice | CAD 55 before any unshown taxes/adjustments |
| Additional storage subscription | Required by Felipe; select the smallest suitable pooled-storage add-on, expected 100 GB if currently offered |
| Additional storage monthly price | Verify exact Canadian price and commitment in target Admin checkout before purchase |
| Total pooled storage available | Expected 150 GB from 5 x 30 GB, plus the approved add-on; verify on Storage page |
| Total storage used | User-list values total approximately 1.30 GB; exact total and Gmail/Drive split to verify |

## Users

| Source email | Target email | Name | Usage displayed | Last connection | Aliases/admin role | Keep? |
|---|---|---|---:|---|---|---|
| `billy@hortamericascanada.com` | `billy@hort-canada.com` | Billy Hiebert | 0.24 GB | About 1 week | Verify | Yes, requested exact recreation |
| `felipe@hortamericascanada.com` | `felipe@hort-canada.com` | Felipe Zapata | 0.55 GB | About 1 day | Verify | Yes, requested exact recreation |
| `francis@hortamericascanada.com` | `francis@hort-canada.com` | Francis Perras | 0.19 GB | About 21 hours | Verify | Yes, requested exact recreation |
| `gabrielle@hortamericascanada.com` | `gabrielle@hort-canada.com` | Gabrielle Verdon | 0.02 GB | Never connected | Verify | Yes unless Felipe decides otherwise |
| `jordan@hortamericascanada.com` | `jordan@hort-canada.com` | Jordan Goulet | 0.30 GB | About 1 week | Verify | Yes, requested exact recreation |

## Groups

| Source address | Target address | Purpose | Owners/managers | Members | External access/history | Keep? |
|---|---|---|---|---:|---|---|
| `admin@hortamericascanada.com` | `admin@hort-canada.com` | Verify | Verify | 1 | Custom settings; inspect | Yes |
| `commande@hortamericascanada.com` | `commande@hort-canada.com` | Online orders; confirm WooCommerce linkage | Verify | 3 | Custom settings; inspect | Yes |
| `info@hortamericascanada.com` | `info@hort-canada.com` | General/site contact; confirm form linkage | Verify | 4 | Custom settings; inspect | Yes |
| `support@hortamericascanada.com` | `support@hort-canada.com` | Support | Verify | 4 | Custom settings; inspect | Yes |

## Organizational Settings

| Item | Current value | Recreate? |
|---|---|---|
| Organizational units | Root `Hort Americas Canada`; child `Workspace Guests` visible | Inspect membership and recreate only if used |
| Super admins | | |
| 2-Step Verification policy | | |
| Gmail routing/forwarding | | |
| Drive external sharing | | |
| Calendar external sharing | | |
| Enabled/disabled services | | |

## Drive and Shared Resources

| Resource | Owner/manager | Approx. size | Members/external access | Business critical? | Pilot candidate? |
|---|---|---:|---|---|---|
| | | | | | |

## Domain and DNS Access

| Item | Value/owner | Confirmed? |
|---|---|---|
| `hort-canada.com` registrar | | |
| DNS provider | | |
| Person with DNS access | | |
| Current TXT records reviewed | | |
| Current MX records reviewed | | |
| Current SPF/DKIM/DMARC reviewed | | |

## External Email Dependencies

| System | Function/event | Current address | Target address | Sends from/to/reply-to/login | Owner | Test method | Status |
|---|---|---|---|---|---|---|---|
| WooCommerce | New order notification | | | | | Place test order | Not started |
| WooCommerce | Customer order email | | | | | Place test order | Not started |
| WooCommerce | Failed/cancelled order | | | | | Use test/sandbox flow | Not started |
| WordPress | Site administration email | | | | | Trigger admin notice | Not started |
| Website form | Contact/info form | | | | | Submit form and reply | Not started |
| Website form | Quote/request form | | | | | Submit form and reply | Not started |
| SMTP service/plugin | Sender authentication | | | | | Send authenticated test | Not started |
| Payment/shipping service | Operational notifications | | | | | Trigger safe test event | Not started |
| Other | | | | | | | Not started |

## Decisions Before Checkout

- [x] Exact number of current licensed users recorded: 5
- [x] Current Business Starter flexible plan confirmed
- [x] Additional storage required for the target Workspace
- [ ] Smallest available storage add-on size, Canadian price and commitment reviewed
- [ ] Canadian checkout total and taxes reviewed
- [ ] Initial named super admin chosen
- [ ] Recovery-capable second super admin chosen
- [ ] Domain registrar and DNS access confirmed
- [ ] Source storage usage recorded
- [ ] No MX change during initial verification understood
- [ ] WooCommerce and website-form addresses inventoried
- [ ] SMTP sender/reply-to/login dependencies inventoried

## Evidence Reviewed

- Admin home/billing screenshot, 2026-10-15 09:45:22
- Users screenshot, 2026-10-15 09:45:29
- Groups screenshot, 2026-10-15 09:45:49

The screenshots do not expose aliases, admin-role assignments, group membership names, group permission details, exact total storage, shared drives or DNS configuration. These remain intentionally unconfirmed.
