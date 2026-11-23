# Google Drive Restructuring and Migration Plan

Last updated: 2026-11-23

## Objective

Hort Canada is not only integrating Odoo with Google Drive; it is also **restructuring and migrating the existing Drive into a new Hort Canada Drive/Workspace**.

The target must preserve useful historical organization and documentary evidence while cleaning duplicates, obsolete naming, dead folders and inconsistent placement.

The new Drive is not a passive archive. It is a first-class operational document system connected to Odoo, n8n and Slack.

## Existing structure reviewed

The current `Hort Canada` Drive includes major roots such as:
- Administration
- Commercial Invoices
- Projects - Clients
- Manufacturers
- Marketing
- Pictures
- Presentations
- Competitor info
- Guides & Short Courses
- Market Study White Paper
- IES Files
- Energy Savings & Grants
- Rapports
- Forms
- ROI Model
- Internal Quarterly Report

Important operational substructures include:

### Administration
Observed categories include:
- Facture
- Départ Gabrielle 2026
- Accounts Receivables
- Fournisseurs
- Logistics
- Accouting
- LEGAL (LOI - Contracts - NDA)
- Assurance
- Forecasting
- Bank - Payment
- Netsuite
- Inventory
- Rent
- Travel
- Shopify
- Meeting notes
- company information / access documents

### Projects - Clients
Observed pattern:
- year
- End-Users / End-User
- Partenaires / Partenaire
- company/project folders

There are also separate historical groupings such as:
- Clients - Non lighting
- Billy Hiebert Territory
- Prospection
- Tomsystem
- Master Customer List

### Manufacturers
A manufacturer/vendor knowledge bank already exists with folders such as:
- PL Light
- SafeGrow
- Grow Genius
- Tom System
- DLI
- Aranet
- Grodan
- Precimet
- Hato Lighting
- Acuity
- Pacific Organics
- and many others

### Commercial Invoices
Commercial invoices and customs/shipping evidence are often maintained centrally rather than only inside client folders.

## Core design rule

**Do not force the new Drive to become a mirror of Odoo.**

Odoo is the structured index and operational system of record.
Drive remains the documentary hierarchy and evidence repository.

One Odoo customer/project can therefore link to documents in multiple Drive locations, for example:
- client/project folder;
- central Commercial Invoices;
- Administration / Facture;
- manufacturer folder;
- RMA/warranty folder;
- accounting evidence.

The Odoo object should know where the relevant documents live.

## Migration principle

Target process:

`inventory old Drive -> classify -> map old path to new path -> detect duplicates -> approve merge/rename -> copy/migrate -> validate -> link to Odoo -> keep audit mapping`

Do not move/delete source files destructively during discovery.

Maintain a migration mapping with at least:
- old file/folder ID;
- old path;
- new file/folder ID;
- new path;
- object type;
- related Odoo company/project/vendor when known;
- duplicate/merge decision;
- migration status;
- validation status;
- notes.

## Proposed target philosophy

Preserve four major concepts:

1. **Administration** — company-level operational/financial/legal evidence.
2. **Clients & Projects** — customer/project documentary work.
3. **Manufacturers & Suppliers** — technical/commercial supplier knowledge.
4. **Shared business knowledge** — marketing, technical resources, reports, grants, presentations, etc.

Do not finalize exact folder names until the full old Drive inventory is complete.

## Client/project folder rule

The existing year -> End-User/Partner -> company/project pattern is useful context, but Odoo should remove the need to browse by memory.

Odoo must hold:
- canonical customer ID;
- canonical customer name;
- project/opportunity ID;
- primary Drive folder;
- related Drive locations;
- year;
- relationship type where useful;
- legacy folder IDs where historical content exists.

Potential duplicates such as:
- `Lufa` vs `Lufa Farms`;
- `Focus Electrical` vs `Focus Electrical Sales Inc.`;

must be reconciled against the Odoo customer master before the new Drive structure is finalized.

Do not merge folders automatically when identity confidence is not high.

## Odoo -> Drive automatic filing

For relevant Odoo actions, the system must place or link documents in the correct new Drive location.

Examples:

### Customer/project
- customer onboarding documents;
- project files;
- plans;
- photos;
- specifications;
- client PO;
- supporting quote documents.

### Sales / logistics
- commercial invoice;
- BOL;
- packing list;
- customs forms;
- tracking evidence;
- freight quote/supporting docs.

### Purchasing
- supplier PO;
- order confirmation;
- supplier proforma;
- supplier invoice;
- prepayment proof.

### Finance
- accounts payable invoice;
- paid invoice package;
- bank proof;
- reconciliation exports;
- accountant reports.

### RMA / warranty
- serial numbers;
- photos;
- vendor authorization;
- replacement documents;
- shipping proof.

### Manufacturer
- price lists;
- technical sheets;
- certifications;
- IES files;
- manuals;
- agreements;
- current product documentation.

## Placement logic

Every automated file operation must determine:
1. business object;
2. customer/vendor/project identity;
3. document type;
4. required canonical folder;
5. whether the folder already exists;
6. whether a matching document already exists;
7. whether a human changed the destination recently;
8. whether approval is needed.

Then:
`Odoo event -> n8n rules -> Drive target resolution -> re-read target -> file/link -> verify -> store Drive ID in Odoo -> audit -> Slack notification if useful`

## Manual Drive work remains supported

Humans may continue to:
- create files;
- rename files/folders;
- move documents;
- edit Google Docs/Sheets;
- upload evidence directly.

Automation must treat these manual changes as legitimate.

Before answering or writing:
- refresh the relevant Drive locations;
- compare modified times / IDs / current paths;
- re-read current Odoo state;
- detect discrepancies;
- never silently overwrite a newer manual version.

## NetSuite continuity

The Drive migration and Odoo structure must retain familiar NetSuite business concepts so the team does not lose orientation.

Examples:
- Quote / Estimate
- Sales Order
- Customer Deposit / payment
- Item Fulfillment / delivery
- Invoice
- Purchase Order
- Vendor Prepayment
- Item Receipt
- Vendor Bill
- Vendor Payment
- saved-search/reminder equivalents

The target rule is:

**familiar NetSuite business structure, cleaner Odoo execution, better Drive linkage.**

## Migration phases

### Phase A — inventory
- scan full current Drive tree;
- classify folders/files;
- record counts, IDs, owners, modified dates;
- identify restricted/inaccessible content;
- identify shortcuts and external/shared items.

### Phase B — normalization
- canonical customer/vendor names from Odoo mapping;
- duplicate candidate list;
- obsolete folder list;
- old-year/history classification;
- decide keep/archive/merge/restructure.

### Phase C — target tree
- define new Workspace/Drive root;
- define canonical Administration structure;
- define Clients/Projects structure;
- define Manufacturers/Suppliers structure;
- define shared-knowledge structure;
- establish naming conventions.

### Phase D — pilot migration
- migrate a small representative sample:
  - one major client;
  - one partner;
  - one manufacturer;
  - one accounting workflow;
  - one commercial-invoice workflow.
- validate permissions and Odoo links.

### Phase E — bulk migration
- copy/migrate approved content;
- preserve IDs in mapping table;
- validate file counts and samples;
- avoid destructive source cleanup until acceptance.

### Phase F — cutover
- switch automation to new Drive;
- update Odoo folder/document IDs;
- freeze or clearly mark old Drive as legacy/read-only where possible;
- run delta migration for late changes;
- validate links.

## Required controls

- no blind bulk moves;
- no automatic duplicate merges without confidence/approval;
- no destructive cleanup before validation;
- preserve source-to-target mapping;
- preserve documentary evidence;
- log automated moves/renames;
- detect manual edits;
- use re-read-before-write;
- maintain rollback/recovery plan.

## Open decisions

- exact new Drive root type: My Drive vs Shared Drive structure;
- exact canonical folder names;
- whether year remains part of the client/project hierarchy;
- whether partner/end-user is represented in path or Odoo metadata only;
- archive policy for 2020-2025 historical client folders;
- exact treatment of central Commercial Invoices;
- access groups/permissions by role;
- retention policy;
- duplicate merge rules.
