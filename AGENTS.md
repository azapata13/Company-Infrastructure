# AGENTS.md — Master Context and Operating Contract

This is the master context for Codex and future agents. Keep it current.

## Project objective

Build a simpler replacement for the useful parts of the current NetSuite environment, centered on Odoo, while making Slack the day-to-day operational cockpit.

Users should be able to query and eventually operate Odoo, Gmail, Drive, WooCommerce and automation workflows from Slack without needing to open every backend application.

The architecture must remain safe when humans and bots work concurrently.

## Hort Canada business transition

The business transition includes more than the ERP and Workspace migrations. Preserve the complete 16-task master checklist in:

`docs/HORT_CANADA_MASTER_CHECKLIST.md`

It includes website/email changes, WooCommerce products and catalog structure, Felipe's personal LinkedIn, Facebook and Instagram creation, Google property access, SEO, old Shopify cancellation and final brand cleanup. Do not let these smaller business tasks disappear behind the technical migration work.

## Team and current scale

Primary internal users:
- Jordan
- Felipe
- Francis

Approximate initial data:
- ~100 customers
- ~100 items/products

Do not over-engineer for large-enterprise scale. Prioritize correctness, maintainability and auditability.

## System roles

### Slack
Primary operational cockpit.

Desired examples:
- "Show me sales this month."
- "Compare this year vs last year."
- "Show Francis's pipeline."
- "Find the latest document for customer X."
- "Draft a reply to this customer."
- "Did someone already update this product?"
- "What failed today?"
- "Show recent banking transactions." — only if the requesting user is authorized.

Slack is NOT the authoritative business database.

### Odoo
Future core system for the useful NetSuite functions.

Target areas:
- CRM/opportunities
- pipeline
- customers/companies
- contacts
- quotations
- sales orders
- products/items
- inventory where useful
- purchasing if useful
- invoicing
- accounting later, after validation
- payments
- activities/reminders
- document links
- sales-rep performance
- year-over-year sales comparisons
- dashboards/reporting

Use native Odoo functionality before custom modules.

### NetSuite
Legacy/current reference and migration source.

Useful functionality observed in the current NetSuite dashboard:
- opportunities/pipeline
- quotes
- sales orders
- customers
- items
- payments
- reports/analytics
- documents
- reminders
- sales-rep performance
- current-year vs previous-year comparisons

Migration philosophy:

`audit -> cleanup -> mapping -> pilot import -> validation -> full import`

Do not blindly copy obsolete custom fields, dead workflows, duplicates or irrelevant historical data.

### n8n
Automation/orchestration layer.

Do not begin by automating everything. First stabilize Odoo and source-of-truth rules.

n8n workflows must support:
- idempotency
- retries
- correlation IDs
- duplicate-event detection
- clear error handling
- centralized logging
- approval gates where needed

### Google Drive
Document system.

Before a bot modifies a file:
- read current state/version
- detect recent human/bot changes
- detect concurrent work
- avoid overwriting newer work
- use conflict/approval handling when needed

### Gmail / Google Workspace
Communication system.

Future agents may:
- retrieve/search threads
- summarize communications
- draft responses
- send only under defined permissions/approval rules

Before sending/replying:
- re-read thread state
- detect whether someone/bot already replied
- prevent duplicate sends

### WooCommerce
Ecommerce channel.

Current catalog backlog:
- add replacement-part products to `hortamericascanada.com`
- include cable products currently described as "welan"; confirm exact spelling/specifications before publishing
- replace Greenhouse/Vertical as the primary storefront structure with two sections: OPTIMISATION and PRÉVENTION
- qualify products for one or both new sections
- preserve SEO through staged mapping and redirects before removing old categories

Detailed roadmap:
`woocommerce/PRODUCT_CATALOG_RESTRUCTURE.md`

Integration must account for:
- products
- customers
- orders
- possible inventory sync
- possible price sync
- duplicate webhook delivery

A repeated webhook must not create repeated business side effects.

### Banking/accounting
Odoo may eventually surface accounting/banking information.

Sensitive rules:
- permission-controlled by human identity
- the bot's backend credentials must never bypass user permissions
- sensitive reads/writes must be logged
- payments/bank-detail changes/accounting adjustments require stronger controls and approval

## Agreed implementation sequence

1. Create GitHub repository. DONE.
2. Store architecture/context in repo. THIS PACKAGE.
3. Create Odoo environment.
4. Structure Odoo to match the useful NetSuite workflow.
5. Define users/roles/permissions.
6. Define CRM stages, customer/contact model, products, sales flow and reporting.
7. Audit/export NetSuite.
8. Clean and map NetSuite -> Odoo.
9. Import small pilot dataset.
10. Validate using real business scenarios.
11. Import approved production data.
12. Integrate Slack read-only first.
13. Add n8n orchestration.
14. Integrate Drive and Gmail.
15. Integrate WooCommerce.
16. Complete centralized observability.
17. Add controlled write actions/approval flows.
18. Expand AI-assisted workflows gradually.

Do not casually reorder this sequence. If a better order is proposed, document why and request approval.

## Source of truth

Before production integrations, explicitly define which system owns each data type.

Proposed direction — NOT final:
- Odoo: companies, contacts, CRM, quotes, sales orders, inventory, finance
- WooCommerce: storefront/channel events, possibly product presentation
- Drive: documents
- Gmail: communication history
- Slack: commands/collaboration, never master business data
- n8n/state store: execution state
- central log platform: operational/audit history

Open decisions:
- product price authority
- product description authority
- inventory authority
- ecommerce order ownership
- Drive-to-Odoo document linking

Never implement bidirectional sync without source-of-truth and conflict rules.

## Critical concurrency requirement

Before any external write, verify:

1. Did a human already do it?
2. Did another bot already do it?
3. Is someone/bot doing it now?
4. Is the same action already queued?
5. Did the target change since the request began?
6. Did another system already perform an equivalent action?

Examples:
- Francis manually changes an Odoo product while Felipe asks Slack to change it.
- Jordan asks a Slack bot to modify a Drive file while Felipe edits it.
- A Gmail reply already exists while an AI send workflow runs.
- WooCommerce retries a webhook.
- n8n performs an external action but crashes before recording success.

Required patterns:
- stable idempotency keys
- temporary locks/ownership where appropriate
- optimistic concurrency/version checks
- re-read-before-write
- verify external state before retry
- conflict state instead of blind overwrite
- human resolution for ambiguous conflicts

Suggested action states:
- REQUESTED
- VALIDATING
- LOCKED
- RUNNING
- WAITING_APPROVAL
- COMPLETED
- FAILED
- CANCELLED
- CONFLICTED

## Re-read-before-write

For important writes:

1. Resolve human identity.
2. Validate permission.
3. Read authoritative current state.
4. Check history/idempotency.
5. Check recent/concurrent changes.
6. Acquire lock/version guard if needed.
7. Execute.
8. Verify external result.
9. Audit/log.
10. Release lock.
11. Notify user.

Never rely on stale cached state for sensitive writes.

## Human approval

Likely approval-gated:
- refunds
- payments
- deletion of important records
- banking changes
- accounting adjustments
- mass email
- sensitive customer-facing sends
- material price changes
- permission changes
- production configuration
- migrations/cutovers/irreversible actions

Codex may autonomously inspect, code and test in dev. Before production-impacting or destructive operations, explain the exact action and wait for Felipe's approval unless explicitly delegated.

## AI model routing / token cost

Permanent objective: minimize token cost and latency without sacrificing required quality.

User should normally not select a model manually.

### Tier 0 — No AI
Use APIs, SQL, code, rules and calculations whenever possible.

Examples:
- fetch Odoo totals
- retrieve customer
- compare timestamps
- exact duplicate checks
- permission checks
- deterministic reports

### Tier 1 — Lightweight model
Use for:
- extraction
- classification
- normalization
- simple summaries
- intent routing
- basic drafts

### Tier 2 — Medium model
Use for:
- nuanced email drafts
- moderate reasoning
- multi-record summaries
- ambiguous business requests

### Tier 3 — Advanced model
Use selectively for:
- multi-source synthesis
- architecture
- difficult troubleshooting
- high-impact ambiguity
- deeper business analysis

Escalate only when necessary.

Cost controls:
- cache reusable results
- reuse fresh reports
- retrieve only relevant context
- summarize before escalation
- avoid resending full histories
- log model/tokens/cost/latency

For a report request:

`Slack -> permission -> Odoo API -> deterministic calculation -> chart/table -> optional low-cost AI summary -> log -> Slack`

Do not use an advanced model merely to retrieve data.

## Odoo reports in Slack

Users should not need to open Odoo just to view reports.

Preferred response order:
1. API data
2. deterministic calculations
3. generated table/chart
4. optional AI summary
5. actual Odoo screenshot only when exact UI representation is useful/requested

## Central logs / observability

Normalize or correlate logs from:
- Slack
- n8n
- Odoo
- WooCommerce
- Gmail integrations
- Drive integrations
- AI calls
- webhooks
- GitHub/Codex where appropriate
- future services

Important event fields:
- timestamp
- correlation_id
- human_actor
- service_actor
- source_system
- target_system
- action
- object_type
- object_id
- request_summary
- status/result
- error_code/error_message
- duration
- model_name
- input_tokens
- output_tokens
- estimated_ai_cost
- approval actor/time
- before/after state where appropriate

A single user request should keep one correlation ID through the full chain.

Desired Slack questions:
- "What failed today?"
- "What happened to customer X?"
- "Did someone already update product Y?"
- "Why did this workflow fail?"
- "How much did AI cost this week?"

Critical failures should alert an operations Slack channel.

## Security baseline

Never commit:
- passwords
- API keys
- OAuth secrets
- refresh tokens
- private keys
- database passwords
- service-account credential files

Use environment variables, credential vaults or secret managers.

Other principles:
- individual accounts
- MFA where possible
- least privilege
- separate dev/prod credentials
- narrow token scopes
- audit privileged actions
- periodic access review

Slack must never become a permission bypass.

## GitHub / Codex workflow

This repository is the durable technical memory.

Codex should:
- pull latest state first
- read `AGENTS.md`
- inspect current ADRs and `SYSTEM_STATE.md`
- avoid redoing completed work
- use small coherent changes
- run tests/checks before completion
- update docs when architecture changes
- use branches/PRs for substantive work
- never push secrets
- preserve rollback/recovery options
- update `CHANGELOG.md` / `SYSTEM_STATE.md` for major milestones

Felipe retains approval for production-impacting/sensitive changes unless explicitly delegated.

## Google Workspace email migration project

Source domain:
`hortamericas.com`

Destination domain:
`hortamericascanada.com`

Goal:
- migrate Gmail history and labels
- temporary forwarding during transition
- delta migration
- release old domain
- add old domain to new Workspace
- switch old-domain MX to new Workspace
- keep old environment accessible 2–4 weeks after cutover

Sequence:
1. prepare new Workspace
2. map old -> new mailboxes
3. source super-admin authorizes Workspace-to-Workspace migration
4. pilot migration
5. validate messages/labels/attachments
6. main migration
7. temporary forwarding old -> new, preserving source copies
8. validation
9. delta migration
10. release old domain
11. add old domain to new Workspace
12. MX cutover
13. inbound/outbound testing
14. retain old Workspace 2–4 weeks

Rules:
- migration != forwarding
- forwarding != MX
- do not release domain or change MX too early

GO gates:
- GO 1 Connected
- GO 2 Pilot OK
- GO 3 Main Migration OK
- GO 4 Forwarding OK
- GO 5 Delta OK
- GO 6 Cutover

## Preserve these unresolved questions

Do NOT silently decide:
- Must all actions originate in Slack, or can users continue working directly in backend apps while Slack observes?
- Final source of truth per data category?
- Exact permissions for Jordan, Felipe and Francis?
- Which actions are automatic vs approval-gated?
- Conflict response: block, merge or ask?
- Central observability technology?
- One shared AI agent or per-user agents/context?
- Final accounting scope in Odoo?
- Drive folder/naming standards?
- Explicit token budget thresholds?
- Product price authority?
- Product description authority?
- Inventory authority?
- Financial/banking visibility per role?
- Odoo hosting/subscription choice?
- NetSuite history depth to migrate?
- Exact replacement-part catalog, SKUs and specifications?
- Exact name/specification of the cable products currently described as "welan"?
- Whether products may belong to both OPTIMISATION and PRÉVENTION?
- Whether Greenhouse/Vertical remain as secondary attributes or are removed entirely?

## Definition of success

Success means:
- most operational querying can happen through Slack
- Odoo replaces useful NetSuite workflows cleanly
- humans and bots do not duplicate/conflict silently
- significant actions are traceable
- failures are diagnosable quickly
- permissions are consistent
- AI costs remain controlled
- integrations are testable/recoverable
- architecture remains understandable to Felipe and future developers

## Immediate next task for Codex

Do not jump directly to broad integrations.

Next milestone:
1. review the repository
2. validate the Odoo blueprint
3. produce a detailed Odoo base implementation checklist
4. identify the minimum NetSuite exports and exact fields needed
5. propose dev/staging/prod strategy
6. propose secrets/authentication strategy
7. propose initial role/permission matrix
8. propose first test plan
9. identify decisions requiring Felipe approval
10. stop before provisioning/purchasing/changing production services and request approval
