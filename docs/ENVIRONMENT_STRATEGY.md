# Environment Strategy

Status: Draft. No environments have been provisioned by this repository work.

## Goals

- Keep experiments away from production.
- Make pilot imports repeatable.
- Preserve rollback and recovery options.
- Keep credentials and permissions separate.

## Environments

| Environment | Purpose | Data policy | External integrations |
|---|---|---|---|
| Dev | Configuration experiments and import template testing | Synthetic data or tiny approved samples | None, or sandbox-only |
| Staging | Business validation and pilot imports | Approved pilot exports only | Sandbox/test connections only |
| Production | Live operations after approval | Approved migrated production data | Production connections only after approval |

## Promotion Flow

1. Configure in dev.
2. Document settings and import templates.
3. Recreate in staging.
4. Import approved pilot data.
5. Validate business scenarios and reports.
6. Capture gaps and decisions.
7. Request Felipe approval for production provisioning/configuration.
8. Apply approved configuration to production.
9. Run final validation and rollback checks before any cutover.

## Data Rules

- Raw NetSuite exports remain unchanged.
- Cleanup happens in separate working files.
- Pilot data must be approved before import.
- Production data import requires a written migration plan, validation plan and rollback/recovery plan.
- Financial/banking data is restricted and approval-gated.

## Rollback / Recovery Expectations

Before production changes:

- export current configuration where possible
- snapshot data where supported
- define restore owner and expected restore time
- record correlation/change ID
- verify access to logs
- keep import batches identifiable

