# Decision Gates

Classify each consequential decision as one of:

- `FACT`: supported by repository or authoritative evidence.
- `PREFERENCE`: chosen for fit/style; evidence need is lower.
- `EXPERIMENT`: uncertainty is high enough to justify a bounded spike.
- `HUMAN-GATE`: requires owner approval because it changes risk, budget, legal posture, external contracts, irreversible state, or business policy.
- `BLOCKED`: cannot proceed without missing evidence/access/decision.

A plan is not `ready` when a `HUMAN-GATE` or `BLOCKED` item is unresolved unless the implementation sequence explicitly makes it a prerequisite.

Never hide an unresolved decision by embedding a default inside an implementation step.
