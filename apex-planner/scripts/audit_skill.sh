#!/usr/bin/env bash
set -euo pipefail
base="$(cd "$(dirname "$0")/.." && pwd)"
[[ -f "$base/SKILL.md" ]] || exit 1
bash -n "$base/scripts/validate_plan.sh"
[[ "$(find "$base" -name SKILL.md | wc -l)" -eq 1 ]] || { echo "expected one SKILL.md"; exit 1; }
# Search for session-local artifact markers outside this validator itself.
while IFS= read -r -d '' f; do
  [[ "$f" == "$base/scripts/audit_skill.sh" || "$f" == "$base/scripts/audit_planner.sh" ]] && continue
  grep -Eq 'sandbox:/mnt/data|turn[0-9]+file[0-9]+|file_00000000' "$f" && { echo "session artifact in $f"; exit 1; } || true
done < <(find "$base" -type f -print0)
echo "AUDIT PASS"
