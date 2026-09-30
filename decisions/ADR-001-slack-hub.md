# ADR-001 — Slack as Operational Hub

Status: Accepted

Slack is the primary operational UI across Odoo, Drive, Gmail, WooCommerce, n8n and future systems.

Slack is not authoritative business storage.

Consequences:
- identity mapping
- permission enforcement
- centralized/correlated logs
- duplicate-work detection
- reliable APIs
- approval workflows
