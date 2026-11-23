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


## Scan findings — operational branches reviewed 2026-11-23

The following additional branches were reviewed to understand the real filing habits before designing the new Drive.

### Administration / Facture

Observed current queue + archive model:
- `000 - À payer (en attente)`
- `001 - Rapports du matin (factures à payer)`
- `Facture Transport / <year>`
- `Facture Frais d'exploitation / <year>`
- `Facture Employés et sous-traitants / <year>`
- `Facture Achats marchandises / <year>`
- `Facture Douanes et taxes import / <year>`

The waiting queue contains files named with useful machine-readable metadata such as supplier, due date, amount/currency, NetSuite vendor-bill reference and supplier invoice number.

Paid examples use names ending in `PAYÉ.pdf`.

**Target implication:** preserve the queue concept and business-category archive, but automate naming, movement, proof attachment and Odoo linkage.

### Administration / Accounts Receivable

Observed:
- customer credit-terms reference sheet;
- credit-reference forms;
- credit applications;
- customer-specific folders such as Bevo, Cultures Gen V and Tessier.

**Target implication:** credit terms/limits belong in Odoo structured fields; signed forms and supporting evidence stay in Drive and link to the customer.

### Administration / Logistics

Observed:
- carrier folders (Guilbault, ArcBest, LTL Select);
- central BOL archive;
- overseas/container tools;
- HS-code sheet;
- carrier credit applications / agreements;
- customs/broker documents;
- blank BOL templates;
- landed-cost/container spreadsheets.

**Target implication:** do not bury logistics evidence inside only the client folder. Preserve a central logistics knowledge/evidence area while linking every shipment document back to Odoo SO/PO/project/shipment records.

### Administration / Accounting

Observed year-based accounting roots such as `Accounting 2026`, with:
- employee/contractor folders;
- `Expenses To Claim` by quarter;
- bank/credit/financial statements;
- expense reports;
- tax provision files;
- separate Taxes area.

**Target implication:** the target Drive should preserve a year/period accounting archive. Odoo owns the accounting entries; Drive holds statements, receipts and accountant evidence.

### Administration / NetSuite

Observed:
- NetSuite roadmap;
- saved-search documentation;
- forms;
- historical reports and exports.

The Forms folder contains examples of Estimate, Sales Order, Invoice and Credit Memo documents.

**Target implication:** preserve this branch as legacy reference during transition. It is useful for validating that Odoo workflows/forms remain understandable to users familiar with NetSuite.

### Forecasting / Reports

Observed:
- year-based forecasting folders;
- sales forecast probability rules;
- NetSuite XML exports;
- customer/sales/quote/inventory-turnover reports.

**Target implication:** reporting logic should migrate into Odoo dashboards and deterministic reporting, while historical exports remain archived in Drive.

### Client/project structure

Representative folders confirm that a client folder may contain either a single project or multiple subprojects.

Examples reviewed:
- Vegpro -> Supplemental DLI Schedule Project;
- The Growcer -> Osiris, Freight Farms, Lighting Simulation;
- Harnois -> multiple downstream projects/end customers;
- DeCloet -> multiple project/end-customer folders;
- Bevo -> agreement, quality tracking and complaint evidence.

Lighting project subfolders commonly separate:
- AGI32 Simulation;
- Customer Specs;
- Spec Sheets;
- quote/estimate;
- DLI/PPFD calculations;
- subsidy/energy-program material where applicable.

**Target implication:** the future Odoo model must distinguish the canonical company/account from its projects/opportunities. One company may own many project folders. Project type should drive the standard Drive subfolder template when useful.

### Partner model

Partner folders such as Harnois and DeCloet contain projects for downstream end customers.

**Target implication:** Odoo needs explicit relationship roles, not just a single customer field:
- commercial customer / bill-to;
- partner / reseller / contractor;
- end user / site owner;
- project site.

This is important for project history, SO/PO traceability and Drive folder resolution.

### Manufacturer knowledge structure

Representative manufacturer folders show recurring document categories:
- price lists;
- archives of old price lists;
- landed-cost sheets;
- product/spec sheets;
- manuals;
- warranty;
- distribution/exclusivity agreements;
- marketing material;
- training;
- certifications/SDS/labels;
- photos;
- integration documents;
- customer/product pipeline material;
- inventory stocking tools.

Examples reviewed include PL Light, SafeGrow, Grow Genius, Tom System, DLI, Aranet and Grodan.

**Target implication:** build a canonical manufacturer folder template in the new Drive, but allow category-specific folders (SDS/labels for chemicals, IES/specs for lighting, integration docs for sensors, etc.).

### Duplicate / normalization signals found

The old Drive confirms the need for identity normalization before migration. Examples include:
- `Lufa` and `Lufa Farms`;
- `Focus Electrical` and `Focus Electrical Sales Inc.`;
- old customer folders existing both under year-based Projects - Clients and separate `Clients - Non lighting`;
- duplicated or copied spreadsheets/files;
- central documents that may also appear inside project folders.

**Target implication:** the migration map must use Odoo canonical company/project IDs, not folder names alone.

## Stronger target Drive model emerging from scan

The target structure should likely preserve these functional zones:

1. **Administration**
   - Finance / Accounting
   - A/R / Credit
   - A/P / Vendor invoices
   - Banking
   - Legal / Corporate
   - Logistics / Customs
   - Inventory evidence
   - Insurance
   - Legacy systems / migration reference

2. **Clients & Projects**
   - canonical company
   - project/opportunity
   - standard project subfolders based on project type

3. **Partners**
   - partner account
   - downstream/end-user projects

4. **Manufacturers & Suppliers**
   - commercial terms / price lists
   - technical documentation
   - regulatory/SDS/certifications
   - training/marketing
   - agreements
   - archive

5. **Shared Knowledge & Marketing**
   - marketing
   - presentations
   - images/video
   - grants
   - technical guides
   - IES/resources
   - market/competitor research
   - reports

This is still a design direction, not a final folder tree. Final naming and permissions should wait until the inventory is complete and the new Shared Drive/Workspace model is chosen.

## Odoo document routing requirement — confirmed

This scan reinforces that every relevant Odoo object should have document-routing metadata.

At minimum, Odoo/n8n should be able to resolve:
- customer primary folder;
- project folder;
- partner/end-user relationship;
- manufacturer/vendor folder;
- accounts-payable archive;
- accounts-receivable/credit evidence;
- shipment/logistics evidence;
- commercial-invoice location;
- RMA/warranty location;
- accounting-period archive.

Odoo does not need to physically store all files. It must know the canonical Drive IDs/links and route generated/received documents correctly.



## Extended scan findings — historical tree and shared knowledge

A broader scan of the historical Drive confirms several additional patterns that must influence the migration.

### Historical Projects - Clients pattern is consistent across years

Years 2021-2026 repeatedly separate:
- direct/end-user projects;
- partners/distributors/agents;
- occasional consultation/prospection buckets.

The labels vary by year (`End Users`, `End-user`, `Direct (End-User)`, `Partenaire`, `Partenaires`, `Distributeur ou Agent`), but the underlying business distinction is stable.

**Migration implication:** normalize this business relationship in Odoo metadata rather than preserving every historical spelling in the new path.

### Same companies appear across many years

Examples found repeatedly include Lufa, The Growcer, Harnois, DeCloet, Goodleaf, Domaine Vincent, Aquaverti, Serres Lefort/Gen V, Local by Atta and others.

**Migration implication:** do not create one permanent company folder per year as the only identity. Odoo should have one canonical company/account with multiple historical projects/opportunities and legacy Drive locations.

### Project folders often evolve long after their nominal year

Many old year-based project folders have modification dates in 2025-2026.

**Migration implication:** folder year cannot be used as a reliable proxy for closed/inactive status. Migration classification must inspect current business state and recent activity.

### Territory and rep-specific folders exist

Examples:
- Billy Hiebert Territory;
- Billy Customer List;
- Francis-related accounting folders;
- prospecting spreadsheets by rep.

**Migration implication:** territory/owner belongs primarily in Odoo metadata and permissions, not as the only physical filing dimension.

### Prospection is spread across several historical lead sources

Observed sources include:
- guide-download response sheets;
- Gmail contact exports;
- cannabis cultivator lists;
- Ontario CEA grower lists;
- rep prospecting lists;
- market-intelligence/customer research folders.

**Migration implication:** consolidate usable prospect identities into Odoo CRM while archiving source datasets in Drive with provenance. Do not treat all historical contacts as active prospects automatically.

### Marketing / shared knowledge is substantial

Marketing includes:
- tradeshows/events by event and year;
- campaigns;
- flyers/booklets;
- website assets;
- articles;
- logos;
- photos/videos;
- grower stories;
- social-media assets;
- historical prospecting/lead lists.

**Migration implication:** this material belongs in a Shared Knowledge / Marketing zone, not inside customer folders. Current campaign/website assets should be separated from legacy creative archives.

### Technical knowledge is also substantial

Observed shared technical branches include:
- Guides & Short Courses;
- IES Files;
- ROI Model;
- Market Study White Paper;
- Energy Savings & Grants;
- fertilizer references;
- lighting simulations/training;
- technical whitepapers;
- grant calculators by province/program.

**Migration implication:** build a dedicated shared technical/reference structure with clear current-vs-archive handling. Odoo should link relevant technical references to products/projects where useful, but should not become the file repository.

### Pictures branch mixes customer/project evidence and reusable marketing imagery

The Pictures tree contains client/project names, lighting examples, product imagery, website content and approved-to-share examples.

**Migration implication:** split at migration between:
- project/client evidence;
- reusable approved marketing library;
- internal-only media;
- legacy/unclassified images.

Where publication permission is explicitly noted in folder names, preserve that metadata in the migration mapping rather than losing it during rename.

### Insurance, rent, travel and corporate admin are year/location based

Observed:
- Insurance by policy year;
- Rent by physical location with lease, utilities, warehouse equipment and services;
- Travel by year/event;
- Board materials by year;
- tax folders by province.

**Migration implication:** Administration should keep clear year/location/jurisdiction dimensions where those dimensions are operationally meaningful.

### Taxes require jurisdiction metadata

Tax evidence is separated for BC, Saskatchewan, Manitoba and Ontario-related work.

**Migration implication:** Odoo structured tax configuration must remain the accounting source of truth, while Drive holds registrations, certificates, filings and supporting legal/accounting evidence by jurisdiction.

### Legacy credentials/security documents are mixed into Drive

Examples include recovery-code or access-related documents.

**Migration implication:** credentials, recovery codes, MFA backup data and secrets must **not** be migrated as ordinary shared documents. They require review and should move to an approved password/secret-management process or restricted vault. The migration inventory must flag these items for security review.

### Claude/AI-generated output folders exist

A `Claude outputs` folder contains generated project deliverables and working files.

**Migration implication:** AI-generated artifacts should be routed to the actual business/project destination after approval, not accumulate permanently in a generic AI-output bucket.

## Additional normalization rules confirmed

During migration:
- canonical identity comes from Odoo mapping, not folder title;
- preserve legacy folder IDs and source paths;
- preserve project-level history even when companies recur over years;
- do not infer closed status from old year;
- separate active/current from archive based on business state + recency + owner review;
- flag credentials/secrets for restricted handling;
- flag duplicate Google-native/Excel/PDF copies for review, not automatic deletion;
- keep provenance for imported prospect/marketing datasets;
- preserve explicit sharing/publication-rights notes.

