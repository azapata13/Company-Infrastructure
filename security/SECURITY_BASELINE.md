# Security Baseline

Never commit:
- passwords
- API keys
- OAuth secrets
- refresh tokens
- private keys
- service-account credentials
- database credentials
- Slack signing secrets/tokens
- WooCommerce consumer secrets
- WordPress application passwords
- Odoo credentials/tokens

Use environment variables, credential vaults or secret managers.

Repository policy:
- commit `.env.example` and variable names only
- never commit real secret values
- separate dev/staging/prod credentials
- rotate compromised credentials immediately
- prefer least-privilege service accounts and narrow scopes

Rules:
- individual accounts
- MFA where possible
- least privilege
- separate dev/prod credentials
- narrow API scopes
- audit privileged actions
- periodic permission review
- Slack must enforce human authorization
- finance/banking requires stricter controls
- production-impacting changes require approval unless explicitly delegated
- code/theme changes use controlled GitHub/staging/deployment workflow rather than direct production edits
