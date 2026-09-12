# Test Strategy Planning

Choose the smallest layered test set that proves the risk:
- unit for local invariants;
- integration for component interactions and persistence;
- contract for public/internal interfaces;
- end-to-end for critical user journeys;
- property/fuzz for input/state spaces where useful;
- concurrency/failure-injection for race/partial-failure risks;
- performance/load for measurable SLO/cost claims;
- migration tests for transition and rollback;
- security/access-control tests for trust-boundary behavior.

Define expected evidence and avoid test plans that simply mirror implementation files.
