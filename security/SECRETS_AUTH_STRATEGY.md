# Secrets and Authentication Strategy

Status: Draft. No secrets should be stored in this repository.

## Principles

- Never commit passwords, API keys, OAuth secrets, refresh tokens, private keys, database passwords or service account files.
- Use separate credentials for dev, staging and production.
- Use least privilege and narrow scopes.
- Prefer individual human accounts for UI access.
- Use service accounts only where a machine actor is required.
- Log sensitive reads and writes.
- Slack and automation must enforce the human requester's permissions.

## Secret Storage

Recommended order:

1. Managed secret manager or vault.
2. Odoo/hosting provider secret store for Odoo-native credentials.
3. n8n credential store for workflow-specific sandbox credentials.
4. Local `.env` files only for local development, never committed.

The committed `.env.example` documents names only.

## Identity Model

| Actor type | Example | Requirement |
|---|---|---|
| Human user | Felipe, Jordan, Francis | Individual account, MFA where possible |
| Service actor | Slack bot, n8n workflow, import script | Least privilege, scoped token, auditable owner |
| Approval actor | Felipe or delegated approver | Captured in logs for sensitive actions |

## Odoo Authentication

For future integrations:

- Prefer Odoo-supported API authentication for service actors.
- Use one service actor per integration class where possible.
- Keep dev/staging/prod API credentials separate.
- Rotate credentials after any exposure or ownership change.
- Do not use a broad admin token for routine Slack or n8n reads.

## Approval-Gated Credentials

Require explicit approval before creating or changing credentials for:

- production Odoo admin access
- accounting/banking connectors
- payment providers
- Google Workspace super-admin operations
- Slack production app installation
- WooCommerce production API keys
- any secret with write/delete or financial authority

