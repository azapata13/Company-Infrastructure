# Central Logging / Observability

Normalize/correlate logs from:
- Slack
- n8n
- Odoo
- WooCommerce
- Gmail integrations
- Drive integrations
- AI calls
- webhooks
- GitHub/Codex where useful
- future services

Recommended event fields:
- timestamp
- correlation_id
- human_actor
- service_actor
- source_system
- target_system
- action
- object_type
- object_id
- request_summary
- result/status
- error_code
- error_message
- duration_ms
- model_name
- input_tokens
- output_tokens
- estimated_ai_cost
- approval_actor
- approval_timestamp
- before_state / after_state where appropriate

One user request should keep one correlation ID through the chain.

Desired Slack queries:
- What failed today?
- What happened to customer X?
- Did someone already update product Y?
- Why did this workflow fail?
- What did AI cost this week?

Critical failures should alert an operations Slack channel.
