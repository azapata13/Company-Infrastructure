# Drive Scan Status

Last updated: 2026-11-23

Root scanned: `Hort Canada`

Important: this is a **progress tracker**, not a claim that every nested file has already been inspected.

## Scan method

Google Drive folder reads are performed folder-by-folder. A full recursive crawl must therefore be executed in batches. The crawler must continue without asking Felipe for permission for each subfolder.

## Top-level roots discovered

- Administration
- Commercial Invoices
- Pictures
- Presentations
- Manufacturers
- Marketing
- Competitor info
- Projects - Clients
- Guides & Short Courses
- Market Study White Paper
- IES Files
- Pitch Deck HC
- Internal Quarterly Report
- Rapports
- Fertilizer
- Energy Savings & Grants
- Software
- Information
- Subventions Quebec
- Forms
- ROI Model
- White Paper grow with LED Mark campaign
- additional loose legacy files at root

## Deeply / substantially scanned

- Administration
  - Facture
  - Accounts Receivables
  - Fournisseurs
  - Logistics
  - Accounting
  - Legal
  - Bank - Payment
  - Netsuite
  - Inventory
  - Forecasting
  - Assurance
  - Rent
  - Travel
  - Shopify
  - Board
  - Meeting notes
  - Exemption certificates
  - Taxes
- Projects - Clients
  - 2020
  - 2021 direct + distributor/agent
  - 2022 end-users + partners/distributors
  - 2023 end-users + partners + prospection
  - 2024 end-users + partners + consultation
  - 2025
  - 2026 end-users + partners
  - Prospection
  - Billy Hiebert Territory
  - Master Customer List
  - Tomsystem
  - Clients - Non lighting
- Manufacturers
  - representative deep scans: PL Light, SafeGrow, Grow Genius, Tom System, DLI, Aranet, Grodan
- Marketing
  - Events / tradeshows
  - Articles
  - Flyers
  - Website
  - Campaigns
- Shared technical / knowledge
  - Market Study White Paper
  - IES Files
  - Energy Savings & Grants
  - Fertilizer
  - Forms
  - ROI Model
  - Guides & Short Courses
  - Presentations
  - Internal Quarterly Report
  - Reports
- representative client/project folders
  - Vegpro
  - The Growcer
  - Cielo Vista
  - Harnois
  - DeCloet
  - Bevo

## Still requiring exhaustive recursive crawl

Even where a branch is marked substantially scanned, many nested folders still need individual enumeration.

Priority remaining work:
1. enumerate **every remaining nested folder** under Administration;
2. recursively enumerate every project/client/partner folder where accessible;
3. recursively enumerate all manufacturer folders, not only representative samples;
4. recursively enumerate Commercial Invoices;
5. recursively enumerate Pictures and classify project evidence vs reusable media;
6. recursively enumerate Marketing and all event/campaign subfolders;
7. recursively enumerate Competitor info;
8. recursively enumerate all technical/shared-knowledge branches;
9. capture inaccessible/restricted folders and shortcuts;
10. produce final old-path -> target-classification inventory.

## Rule

Do not state that the Drive scan is complete until:
- every accessible folder has been enumerated;
- inaccessible folders are explicitly logged;
- shortcut/external targets are classified;
- migration mapping can be generated from the resulting inventory.
