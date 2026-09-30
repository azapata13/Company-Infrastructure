#!/usr/bin/env bash
set -euo pipefail

required_files=(
  "AGENTS.md"
  "CODEX_START_HERE.md"
  "docs/CODEX_MEGA_PROMPT.md"
  "SYSTEM_STATE.md"
  "CHANGELOG.md"
  "odoo/ODOO_BLUEPRINT.md"
  "odoo/ODOO_FOUNDATION_PLAN.md"
  "odoo/NETSUITE_EXPORT_CHECKLIST.md"
  "docs/ENVIRONMENT_STRATEGY.md"
  "security/SECRETS_AUTH_STRATEGY.md"
  "docs/FIRST_TEST_PLAN.md"
  "docs/APPROVAL_REQUIRED_DECISIONS.md"
)

for file in "${required_files[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "Missing required file: $file" >&2
    exit 1
  fi
done

if git ls-files -z | grep -zv '^scripts/check_repo.sh$' | xargs -0 grep -nE '(AKIA[0-9A-Z]{16}|-----BEGIN (RSA |OPENSSH |EC |DSA )?PRIVATE KEY-----)' >/tmp/company-infra-secret-scan.txt; then
  cat /tmp/company-infra-secret-scan.txt >&2
  echo "Potential committed secret found." >&2
  exit 1
fi

echo "Repository structure and basic secret scan passed."
