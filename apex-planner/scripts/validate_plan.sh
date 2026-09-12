#!/usr/bin/env bash
set -euo pipefail
p=${1:-}
if [[ -z "$p" || ! -f "$p" ]]; then echo "usage: $0 PLAN.md" >&2; exit 2; fi
# Validate a plan semantically enough to catch incomplete handoffs without requiring a single prose style.
required=("## Outcome" "## Acceptance Criteria" "## Current State" "## Relevant Research" "## Selected Design" "## Implementation Sequence" "## Edge Cases and Failure Modes" "## Verification Matrix" "## Apex Godmode Handoff")
for h in "${required[@]}"; do grep -Fq "$h" "$p" || { echo "MISSING $h"; exit 1; }; done
if grep -Eiq '(BEGIN [A-Z ]*PRIVATE KEY|AKIA[0-9A-Z]{16}|ghp_[A-Za-z0-9]{20,}|xox[baprs]-[A-Za-z0-9-]{20,})' "$p"; then echo 'POTENTIAL SECRET'; exit 1; fi
if ! grep -Eq '(^|[^A-Za-z0-9])R-[0-9]{3}([^A-Za-z0-9]|$)' "$p"; then echo 'MISSING STABLE REQUIREMENT IDS'; exit 1; fi
if ! grep -Eiq '(https?://|source|reference|citation)' "$p"; then echo 'MISSING RESEARCH EVIDENCE'; exit 1; fi
if ! grep -Eiq 'known|inferred|unknown|blocked' "$p"; then echo 'MISSING UNCERTAINTY/EVIDENCE CLASSIFICATION'; exit 1; fi
if ! grep -Eiq 'oracle|invariant|threshold|acceptance' "$p"; then echo 'MISSING VERIFICATION ORACLE'; exit 1; fi
if ! grep -Eiq 'baseline|current state' "$p"; then echo 'MISSING BASELINE'; exit 1; fi
if grep -Fq '## Implementation Sequence' "$p" && ! grep -Eq 'STEP-[0-9]{2}|S-[0-9]{2}' "$p"; then echo 'IMPLEMENTATION STEPS NEED STABLE IDS'; exit 1; fi
if ! grep -Eiq 'assumption|unknown|blocker' "$p"; then echo 'MISSING ASSUMPTION/UNKNOWN/BLOCKER LEDGER'; exit 1; fi
if ! grep -Eiq 'Apex Godmode Handoff' "$p"; then echo 'MISSING GODMODE HANDOFF'; exit 1; fi
echo 'PLAN VALID'
