# Incident Response

Severity examples:

- SEV-1: business-critical outage, financial integrity issue, serious security/mail outage
- SEV-2: major integration failure, orders not syncing, key automation unavailable
- SEV-3: limited workflow/report/bot failure

Flow:
1. detect
2. assign incident/correlation ID
3. stop harmful automation if needed
4. preserve logs
5. identify last known good state
6. diagnose
7. recover/rollback
8. validate
9. document root cause
10. add prevention/test

Critical incidents should surface in Slack.
