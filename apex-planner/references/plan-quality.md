# Plan Quality Gate

A plan is ready only if all material dimensions are resolved or explicitly marked out of scope/open.

- Requirements: outcome, non-goals, acceptance criteria, assumptions.
- Repository: affected modules, callers, entrypoints, conventions, generated sources, deployment/test boundaries.
- Technology: exact versions, official guidance, anti-patterns, deprecations, security advisories.
- Decision: meaningful alternatives, decisive tradeoffs, compatibility and reversibility.
- Design: component boundaries, contracts, data/state, errors, concurrency, retries/timeouts/idempotency.
- Security/privacy: trust boundaries, authn/authz, sensitive data, abuse, supply chain.
- Operations: observability, SLO/SLA impact, rollout, rollback, migration cleanup.
- Verification: every material acceptance criterion has an observable check.
- Handoff: exact plan artifact, scope, constraints, sources, verification, risks, open decisions.

Reject plans that use unsupported certainty, invent repository facts, or contain duplicated implementation instructions.

- Product/decision: measurable outcome, counterfactual, decision owner, material stakeholder conflicts.
- Feasibility: required tooling, permissions, test data, environments, generated artifacts and operational prerequisites are real or explicitly blocked.
- Freshness: volatile research has a timestamp/freshness rule and is rechecked before handoff when needed.
- Minimality: proposed scope is the smallest credible solution and unnecessary cleanup is separated.
- Portability: the plan is understandable by another agent and does not depend on undocumented private context.
