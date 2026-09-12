#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
[[ -f "$root/SKILL.md" ]]
[[ "$(grep -c '^---$' "$root/SKILL.md")" -ge 2 ]]
[[ "$(grep -c 'apex-godmode' "$root/SKILL.md")" -ge 1 ]]
for f in \
  references/discovery-heuristics.md references/requirements.md \
  references/compatibility-matrix.md references/distributed-systems.md \
  references/data-governance.md references/experiments.md \
  references/plan-freshness.md references/research-source-policy.md \
  references/domain-expansion.md references/reference-index.md references/nonfunctional-budgets.md references/dependency-update-strategy.md references/research-triangulation.md references/counterfactual.md references/execution-feasibility.md; do
  test -f "$root/$f"
done
if grep -RniE 'BEGIN PRIVATE|api[_-]?key|password=|secret=' "$root" --exclude='audit_planner.sh' --exclude='audit_skill.sh' --exclude='README.md'; then
  echo 'Potential secret-like content found' >&2; exit 2
fi
if grep -RniE 'chat\.mission|sandbox:/|turn[0-9]+file' "$root" --exclude='audit_planner.sh' --exclude='audit_skill.sh' --exclude='README.md'; then
  echo 'Session-specific artifact found' >&2; exit 3
fi
printf 'Apex Planner audit: PASS\n'
