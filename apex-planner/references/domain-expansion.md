# Domain Expansion Matrix

The planner is domain-agnostic. Activate only relevant domains:

- backend/services: API, concurrency, persistence, observability, failure semantics
- frontend/web: UX, state, accessibility, performance, browser compatibility
- mobile: lifecycle, offline, OS permissions, store constraints, device variance
- data/analytics: schemas, lineage, backfills, correctness, privacy, cost
- ML/AI: model/version selection, evals, data provenance, hallucination/abuse controls, latency/cost, fallback
- security: threat model, trust boundaries, authn/authz, secrets, abuse cases, supply chain
- infrastructure/cloud: quotas, failure domains, IAM, cost, DR, rollout
- distributed systems: delivery/order/idempotency/coordination
- libraries/SDKs: API stability, semantic versioning, compatibility, packaging
- CLI/tools: exit codes, shell portability, idempotency, filesystem safety
- hardware/edge/IoT: intermittent connectivity, resource ceilings, firmware compatibility, physical failure
- regulated domains: identify applicable jurisdiction and compliance obligations; do not invent legal advice.


Additional domains:
- finance/payments: decimal precision, reconciliation, settlement, duplicate charge protection, dispute flows, auditability
- games/realtime: fixed-timestep/update-loop behavior, determinism, asset loading, latency compensation, save/version compatibility
- scientific/HPC: numerical reproducibility, experiment lineage, resource scheduling, floating-point stability
- communications: delivery/retry semantics, ordering, reconnect, abuse prevention, privacy
- enterprise identity/integrations: SSO, SCIM, tenant isolation, version skew, provider quotas, contractual APIs
- blockchain/web3: finality/reorg behavior, irreversible transactions, key custody, gas/fee volatility, contract upgrade paths
