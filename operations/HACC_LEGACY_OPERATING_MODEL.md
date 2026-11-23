# HACC Legacy Operating Model — Jordan / Gabrielle

Last reviewed: 2026-11-23

## Purpose

This file captures the operational knowledge recovered from Jordan's Google Drive operations package and Gabrielle's documented procedures. It is a reference for designing Hort Canada's future Odoo + n8n + Slack + Google Drive workflows.

This is **not** an instruction to reproduce NetSuite literally. Preserve the business controls, traceability and document habits that matter; simplify or automate the manual steps where safe.

## Source package reviewed

Jordan's operations folder contains, among other items:
- `Guide_Operations_HACC.md`
- `Guide_NetSuite_HACC.md`
- `HACC_Contexte_IA_Operations.md`
- `Procedure_Fermeture_Mois_HACC.md`
- `Procedure_Factures_A_Payer_HACC.md`
- `Procedure_Rapports_Gestion_HACC.md`
- `Rencontre_Gab_2026-11-19.md`
- `Reponses_Gab_2026-11-19.md`
- `Plateformes_HACC.md`
- management-report examples and generation scripts

Amounts, open transactions, credentials, current email addresses and active-case details are time-sensitive. Always re-read the live business systems and Drive before acting.

## Core operating principle

Target architecture:

`email / WooCommerce / forms / Slack -> identity + dedupe -> Odoo -> workflow -> Drive documents -> Slack visibility -> audit log`

System roles:
- **Odoo** = structured operational and financial state.
- **Google Drive** = documentary memory and business evidence.
- **Slack** = operational cockpit, collaboration and approvals.
- **n8n/orchestrator** = deterministic coordination between systems.
- **WooCommerce** = ecommerce channel.
- **Gmail** = communication source/history.
- **GitHub** = durable technical/process design memory.

Before answering or acting on a customer/project, re-read the relevant current Odoo state, Drive folder/documents and recent activity. Manual edits in Drive remain valid business activity and must never be silently overwritten.

## Commercial cycle to preserve

Legacy observed flow:

`customer/prospect -> quote -> client PO/acceptance -> sales order -> proforma -> client payment/deposit -> supplier PO -> fulfillment/shipment -> final invoice`

Important controls:
1. New/custom requests may arrive from email, WooCommerce or a form.
2. Before creating a customer or project, run entity resolution / duplicate detection.
3. The form is a completion/intake mechanism, not the only entry point.
4. The customer form should contain a **current/new project section** so a CRM opportunity can be created in the pipeline immediately.
5. A customer may have multiple projects/opportunities over time.
6. Default pricing logic historically started from site pricing, with exceptions approved by Jordan.
7. Shipping/freight must be considered in the commercial offer.
8. Historically, supplier POs were not released before the customer's confirmation/PO and required deposit, unless explicitly approved otherwise.
9. Do not expose supplier cost to customers.

## Pipeline / central dossier

Future Odoo must provide a central commercial dossier/opportunity that can link:
- company/contact
- assigned owner
- opportunity/project
- emails
- quotes
- SOs
- POs
- suppliers
- shipments
- invoices/payments
- documents / Drive folder
- next action
- status
- exception/block reason
- audit history

Exact final definition of a "project/dossier" remains an open design decision.

## SO / PO traceability and consolidation

The business needs many-to-many traceability:
- one SO may require multiple supplier POs;
- one supplier PO/procurement/shipment may serve multiple SOs.

A PO or procurement can intentionally remain open for freight consolidation. This must not be treated as a generic overdue item.

Required future concept:
- status such as **Waiting for consolidation / En consolidation**;
- target consolidation date;
- linked SOs;
- supplier;
- projected freight saving/cost where useful;
- alerts when waiting too long;
- explicit "ship now vs keep consolidating" decision.

## WooCommerce integration

Legacy WooCommerce orders were manually re-entered into NetSuite. Future state must remove this duplicate work.

Flow:
`WooCommerce account/order -> normalize identity -> search existing Odoo company/contact -> attach/update if match -> create only if no match -> create/attach commercial dossier -> Drive linkage -> Slack/audit`

No blind customer creation.

## Email / custom request intake

Future flow:
`incoming email -> deterministic extraction -> AI interpretation where needed -> entity/project resolution -> Odoo update/create -> Drive documents -> Slack/audit`

AI must not blindly mutate ERP records.

When confidence is insufficient, send the case to an **Exception / Decision Queue** with a simple human choice such as:
- new customer vs existing customer;
- new project vs attach to existing project;
- duplicate vs separate transaction.

## Google Drive operating rule

Drive is a first-class business system.

Preserve or improve Jordan's existing filing logic rather than inventing an unrelated hierarchy.

For each relevant business action:
- create or locate the correct client/project/operations folder;
- store received/generated business documents in the correct location;
- keep the Odoo link to the Drive folder/document;
- preserve human manual edits;
- log creation/move/rename where automated;
- re-read-before-write;
- never overwrite a newer human version silently.

Documents that commonly require Drive evidence include:
- quotes/supporting documents;
- client PO;
- supplier PO/confirmation;
- supplier invoices;
- payment proof;
- shipping/BOL/customs documents;
- RMA/warranty evidence;
- expense receipts;
- monthly/quarterly accounting exports;
- management reports.

## Supplier invoices / accounts payable

Jordan's documented workflow uses a visible queue:

`invoice received -> verify -> ERP entry -> Drive "000 - À payer" -> morning review -> Jordan pays -> payment proof -> ERP payment -> paid PDF/archive`

Key controls:
- no payment without the underlying invoice document, except explicitly grandfathered legacy cases;
- invoice PDF and ERP entry must reconcile;
- Jordan performs/releases bank payments;
- payment is recorded in ERP only after bank confirmation;
- paid evidence is retained in Drive;
- a single paid PDF may contain the invoice, paid stamp/details and payment proof;
- classification by business nature/category remains important.

Future Odoo/n8n should preserve this control while reducing manual filing and data entry.

## Banking and approvals

Agents/automation may:
- prepare a payment;
- verify invoice/PO/amount/currency/due date;
- prepare the payment screen or payment batch;
- create the ERP draft;
- reconcile proof after payment.

They must not autonomously:
- submit bank payments;
- enter MFA/SecurID/OTP;
- change bank details without strong approval;
- treat preparation as proof of payment.

Jordan historically retains bank release authority.

## Purchase / inventory controls

Legacy operational points to preserve or redesign carefully:
- distinguish stock/Warehouse from true drop ship;
- always verify stock before creating a supplier action;
- avoid automatic supplier PO creation caused by a wrong drop-ship setting;
- support supplier prepayments;
- support item receipts for stock;
- landed-cost logic for freight/duty/surcharges;
- preserve PO -> receipt -> vendor bill traceability;
- handle inventory adjustments and RMAs explicitly.

## Logistics / customs

Future workflow must support:
- parcel, LTL, ocean and supplier-direct shipments;
- freight quote requests;
- carrier selection;
- tracking;
- BL / commercial invoice / packing list / customs documentation;
- broker interaction;
- CARM/CBSA related evidence and deadlines;
- shipment links to SO/PO/client/project;
- carrier invoice reconciliation.

Carrier/vendor lists are operational data and should be maintained in Odoo/Drive, not hard-coded in automation.

## RMA / warranty

RMA workflows require:
- original PO / sales reference;
- serial numbers where applicable;
- photos/evidence;
- supplier RMA reference;
- shipment/tracking;
- replacement status;
- customer communication;
- Drive folder/evidence;
- Odoo status and ownership.

## Month-end / quarter-end

Gabrielle's documented close included:
- missing vendor bills;
- contractor/expense invoices;
- payroll journals/instructions;
- tax/installment entries as instructed;
- bank fees;
- credit-card purchases and payment;
- bank/credit-card reconciliations;
- general-ledger export for the accountant;
- quarter-end tax review/corrections;
- year-end accountant adjustments.

Future Odoo design must make these steps easier and reportable, but accounting rules should be validated with the accountant before automating journal logic.

### Known inconsistency to resolve

The Drive package contains conflicting statements about foreign-currency revaluation:
- one guide describes recurring month-end revaluation activity;
- the reconstructed month-end procedure says Gab did **not** manually revalue and that certain currency entries were created automatically by NetSuite.

Do not encode either assumption into Odoo automation until confirmed during accounting migration design.

## Management reporting

Jordan's management reporting requirements go beyond basic financial statements.

Target reports include:
- YTD revenue;
- gross profit/margin;
- operating expenses;
- cash;
- cash net of customer deposits where relevant;
- open customer orders;
- open supplier commitments;
- real/firm/estimated cost status;
- expected billing by week;
- expected collections/disbursements;
- projected cash by week;
- customer concentration;
- repeat revenue;
- year-over-year comparison;
- end-of-year scenarios.

Reports must clearly distinguish actual vs estimated values and state assumptions.

## Human/bot concurrency

No parallel realities.

Any action done manually in Odoo, Drive, WooCommerce, Gmail or another connected system must become visible to the automation layer.

Before a write:
1. re-read current target;
2. check recent human/bot actions;
3. detect duplicates or queued equivalents;
4. check ownership/lock/version if relevant;
5. write;
6. verify;
7. log;
8. notify.

## Roles observed / current design direction

Core team:
- **Jordan** — president, central operational decision maker and payment approver.
- **Felipe** — digital/technology/automation plus client management.
- **Francis** — sales and operational involvement, primarily Québec / Canada outside Ontario under current direction.
- **Billy** — Ontario / Leamington field sales and local account development.

The exact Odoo permission matrix and final territorial rules remain to be approved.

## What to keep vs what to redesign

### Preserve
- approval controls;
- traceability;
- document evidence in Drive;
- PO/SO/payment linkage;
- freight/customs visibility;
- exception handling;
- customer/project history;
- month-end evidence;
- management reporting requirements.

### Simplify / automate
- WooCommerce manual re-entry;
- duplicate customer/project creation;
- repetitive vendor-bill entry;
- filing payment proofs;
- daily "what is due / blocked / waiting" review;
- email classification/intake;
- routine status follow-up;
- document linking;
- recurring management reports.

### Do not blindly copy
- NetSuite-specific custom fields;
- broken saved searches/reminders;
- manual workarounds caused by NetSuite permissions;
- old account/email ownership;
- obsolete supplier/platform access;
- historical one-off exceptions.

## Open design questions to preserve

- Final definition of project/dossier.
- Exact CRM/pipeline stages.
- Exact customer creation threshold: lead/opportunity vs full customer.
- Final sales territory assignment rules.
- Exact SO close and PO close rules.
- Many-to-many SO/PO technical model in Odoo.
- Freight allocation across consolidated SOs.
- Approval thresholds by action/value.
- Exact automatic vs assisted vs human-only operations.
- Final Drive hierarchy/naming standards after scanning Jordan's broader Drive.
- Final accounting treatment for FX revaluation and landed costs.
- Final source-of-truth rules for price, inventory and ecommerce ownership.

## Implementation rule

When designing a workflow, document it as:

`legacy method -> business reason/control -> target Odoo object -> n8n automation -> Drive evidence -> Slack interaction -> approval -> audit/exception behavior`

This file should be updated as Jordan's broader Drive structure and additional Gabrielle procedures are reviewed.
