# Slack Operating Model

Slack is the main operational cockpit.

Example requests:
- Show monthly sales.
- Compare this year with last year.
- Show Francis's pipeline.
- Find latest customer document.
- Draft customer reply.
- Did somebody already modify this product?
- What automations failed today?
- Show recent bank transactions. (authorized users only)

## Report delivery preference

1. direct API/database retrieval
2. deterministic calculation
3. generated table/chart
4. optional AI summary
5. actual backend screenshot only if exact UI is requested/useful

## Write workflow

Before Slack triggers a write:
- identify requester
- check permission
- check approval requirement
- check history/idempotency
- re-read target
- detect conflicts
- execute
- verify
- log

Slack must never bypass backend permissions.
