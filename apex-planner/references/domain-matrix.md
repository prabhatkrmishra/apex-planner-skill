# Domain Coverage

Activate only relevant domains, but screen every plan against this matrix before finalization:

| Domain | Planning concerns |
|---|---|
| Web/frontend | UX, state, rendering, browser compatibility, SSR/CSR, accessibility, SEO, analytics, caching |
| Backend/API | contracts, auth, validation, idempotency, transactions, retries, timeouts, rate limits |
| Data/analytics | schemas, lineage, correctness, backfills, retention, privacy, cost, query performance |
| Distributed systems | ordering, delivery, replay, backpressure, partitions, coordination, consistency, failure domains |
| Mobile/desktop | OS lifecycle, permissions, offline, background work, packaging, device variance, store/distribution rules |
| AI/ML | model/version choice, evaluation, data provenance, safety, hallucination/abuse controls, tool boundaries, latency/cost, fallback |
| Infrastructure/cloud | IAM, quotas, HA, networking, secrets, IaC, drift, capacity, DR, rollout/rollback |
| Security | threat modeling, authn/authz, trust boundaries, abuse cases, supply chain, secrets, privacy |
| CI/tooling | reproducibility, artifact provenance, build matrices, dependency caching, developer workflow |
| Libraries/SDKs | compatibility, lifecycle, semantic versioning, transitive risk, packaging, deprecations |
| CLI/automation | exit codes, idempotency, shell portability, filesystem safety, scheduling, retries |
| Hardware/edge/IoT | resource ceilings, intermittent connectivity, firmware compatibility, physical failure, provisioning |
| Games/realtime | frame/update budgets, determinism, asset lifecycle, networking, save compatibility, device variance |
| Finance/payments | precision, reconciliation, idempotency, settlement, audit trails, fraud controls, regulatory constraints |
| Search/recommendation | indexing, freshness, ranking, explainability, relevance evaluation, cost |
| Communications | delivery semantics, privacy, anti-abuse, ordering, presence, push/reconnect behavior |
| Scientific/HPC | reproducibility, numerical stability, datasets, compute budgets, experiment lineage |
| Blockchain/web3 | chain assumptions, finality, gas/fees, reorgs, key custody, contract upgradeability, irreversibility |
| Regulated/high-risk | jurisdiction, approvals, auditability, residency, human review, validation evidence |
| Enterprise integrations | tenancy, SSO/SCIM, contracts, version skew, quotas, procurement/vendor constraints |
| Developer platforms | plugin/extension contracts, backward compatibility, isolation, permissions, telemetry |
