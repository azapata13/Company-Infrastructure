# Hort Canada Workspace Inventory

Status: To complete from the current `hortamericascanada.com` Admin console before purchase.

Do not place passwords, recovery codes, payment-card data or secret tokens in this file.

## Billing and Storage

| Item | Current value |
|---|---|
| Workspace edition | |
| Billing plan: flexible or annual | |
| Price per user/month | |
| Number of paid licenses | |
| Additional storage subscription | |
| Additional storage monthly price | |
| Total pooled storage available | |
| Total storage used | |

## Users

| Source email | Target email | Name | Aliases | Admin role | Gmail used | Drive used | Keep? |
|---|---|---|---|---|---:|---:|---|
| | | | | | | | |

## Groups

| Source address | Target address | Purpose | Owners/managers | Members | External access | History | Keep? |
|---|---|---|---|---|---|---|---|
| | | | | | | | |

## Organizational Settings

| Item | Current value | Recreate? |
|---|---|---|
| Organizational units | | |
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

- [ ] Exact number of initial licensed users confirmed
- [ ] Business Starter flexible plan confirmed
- [ ] Canadian checkout total and taxes reviewed
- [ ] Initial named super admin chosen
- [ ] Recovery-capable second super admin chosen
- [ ] Domain registrar and DNS access confirmed
- [ ] Source storage usage recorded
- [ ] No MX change during initial verification understood
- [ ] WooCommerce and website-form addresses inventoried
- [ ] SMTP sender/reply-to/login dependencies inventoried
