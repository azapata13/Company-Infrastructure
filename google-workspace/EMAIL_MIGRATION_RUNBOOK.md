# Google Workspace Migration Runbook

Source Workspace/domain:
`hortamericas.com`

Destination Workspace/domain:
`hort-canada.com`

## Goal

Migrate only the approved Canadian users/data from the US-controlled `hortamericas.com` Workspace into the new Hort Canada Workspace at `hort-canada.com`.

The US Workspace and `hortamericas.com` remain operational for the US organization.

There is NO plan to transfer the entire `hortamericas.com` domain and NO global MX change to `hortamericas.com`.

## Admin model

- Source-side authorization is performed by the US/source Super Admin.
- Destination-side authorization is performed by the Hort Canada destination Super Admin.
- The admins do not need to share passwords or Super Admin access.
- They do not need to remain connected at the same time for the whole migration.
- A coordinated setup session is recommended for the initial authorization/test.

## Migration engine

Use one migration environment/instance, preferably temporary cloud-hosted infrastructure rather than requiring Felipe's Mac to stay online.

The source admin does not need a second migration installation. The source admin authorizes the required access on the source Workspace.

## Sequence

1. Prepare the `hort-canada.com` Workspace.
2. Create destination users.
3. Build the exact Canadian-user mapping, for example:
   `olduser@hortamericas.com -> user@hort-canada.com`
4. Source Super Admin completes required source authorization.
5. Destination Super Admin completes destination authorization.
6. Validate the migration connection.
7. Run one Canadian pilot account.
8. Validate Gmail history, labels, attachments and required Drive content.
9. Run the main migration for approved Canadian accounts only.
10. Keep source accounts active during transition.
11. Run delta/incremental migration to capture changes after the main pass.
12. Validate final counts/content and business access.
13. Configure temporary forwarding/routing for old Canadian `@hortamericas.com` addresses where the US organization agrees.
14. Monitor transition and resolve permission/data issues.
15. Retire or alter old Canadian source accounts only after explicit business approval.

## Drive note

Cross-organization Drive content should be migrated/copied according to the selected migration approach. Do not assume a simple cross-organization ownership transfer will cover the required data.

## Rules

- migrate Canadian accounts only
- do not change global `hortamericas.com` MX records
- do not disrupt US users
- migration does not automatically replace forwarding/routing
- forwarding/routing policy for old Canadian addresses requires source-side cooperation
- validate with a pilot before the full batch
- run a final delta/incremental pass before closure

## GO gates

- GO 1 Destination Ready
- GO 2 Source Authorization Ready
- GO 3 Connection Validated
- GO 4 Pilot OK
- GO 5 Main Migration OK
- GO 6 Delta OK
- GO 7 Forwarding/Transition Policy Confirmed
- GO 8 Final Validation
