#!/usr/bin/env bash
set -euo pipefail
base="$(cd "$(dirname "$0")/.." && pwd)"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
cat > "$tmp/good.md" <<'PLAN'
# Implementation Plan
## Outcome
R-001 improve behavior
## Acceptance Criteria
R-001 verification: invariant holds
## Baseline and Repository History
baseline: current behavior
## Current State
known: repository evidence
## Detected Stack and Versions
## Relevant Research
source: https://example.com
## Evidence / Assumptions / Unknowns
known; inferred; unknown; blocker: none
## Selected Design
## Implementation Sequence
STEP-01 update component
## Edge Cases and Failure Modes
## Verification Oracles
oracle: invariant
## Verification Matrix
R-001 -> verification
## Rollout / Rollback
## Change Safety Budget
## Plan Simulation
## Apex Godmode Handoff
PLAN
"$base/scripts/validate_plan.sh" "$tmp/good.md" >/dev/null
cat > "$tmp/bad.md" <<'PLAN'
# Implementation Plan
## Outcome
R-001 improve behavior
## Acceptance Criteria
R-001
## Current State
## Relevant Research
source: https://example.com
## Selected Design
## Implementation Sequence
STEP-01 update
## Edge Cases and Failure Modes
## Verification Matrix
## Apex Godmode Handoff
PLAN
if "$base/scripts/validate_plan.sh" "$tmp/bad.md" >/dev/null 2>&1; then
  echo 'BAD PLAN SHOULD FAIL' >&2; exit 1
fi
echo 'PLANNER TESTS PASS'
