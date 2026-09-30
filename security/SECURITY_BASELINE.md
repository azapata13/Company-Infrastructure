# Security Baseline

Never commit:
- passwords
- API keys
- OAuth secrets
- refresh tokens
- private keys
- service-account credentials
- database credentials

Use environment variables, credential vaults or secret managers.

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
