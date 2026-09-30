# Google Workspace Email Migration Runbook

Source:
`hortamericas.com`

Destination:
`hortamericascanada.com`

## Goal

Migrate historical Gmail and labels, maintain continuity, then make the old domain route directly to the new Workspace.

## Sequence

1. Prepare new Workspace.
2. Build exact mailbox mapping.
3. Source super-admin authorizes Workspace-to-Workspace migration.
4. Run one pilot mailbox.
5. Validate history, labels, attachments.
6. Run main migration.
7. Configure temporary forwarding old -> new, keeping source copies.
8. Validate forwarding.
9. Keep old mailboxes active.
10. Run delta migration.
11. Validate all mailboxes.
12. Confirm DNS/cutover readiness.
13. Source admin releases/removes old domain.
14. Add old domain to new Workspace.
15. Verify domain.
16. Switch old-domain MX.
17. Test inbound/outbound and generic addresses.
18. Validate SPF/DKIM/DMARC.
19. Keep old environment accessible 2–4 weeks.
20. Remove forwarding only after successful cutover.

Rules:
- migration does not replace forwarding
- forwarding does not replace MX
- do not release domain/change MX early

GO gates:
- GO 1 Connected
- GO 2 Pilot OK
- GO 3 Main Migration OK
- GO 4 Forwarding OK
- GO 5 Delta OK
- GO 6 Cutover
