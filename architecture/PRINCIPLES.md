# Architecture Principles

1. Slack is the operational cockpit.
2. Backend systems remain authoritative for their own data.
3. Prevent duplicate/conflicting work across humans and bots.
4. Use idempotency and re-read-before-write for external writes.
5. Enforce permissions and approval for sensitive actions.
6. Prefer APIs/deterministic logic before browser automation or AI.
7. Use the cheapest adequate AI model.
8. Correlate logs centrally.
9. Never store secrets in Git.
10. Document meaningful architecture decisions.
11. Keep architecture simple for the current scale.
12. Prefer native Odoo features over unnecessary custom modules.
