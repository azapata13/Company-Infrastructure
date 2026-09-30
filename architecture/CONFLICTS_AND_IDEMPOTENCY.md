# Conflict Detection and Idempotency

Before every important write:

1. Check whether it already completed.
2. Check whether an equivalent action is queued.
3. Check whether another human/bot is modifying the object.
4. Re-read authoritative state.
5. Detect changes since task creation.
6. Execute only if safe.
7. Verify result.
8. Log result.

Suggested states:
- REQUESTED
- VALIDATING
- LOCKED
- RUNNING
- WAITING_APPROVAL
- COMPLETED
- FAILED
- CANCELLED
- CONFLICTED

Suggested idempotency key:

`source + object_id + action_type + normalized_payload_hash`

If a workflow may have completed an external side effect before crashing, verify external state before retrying.
