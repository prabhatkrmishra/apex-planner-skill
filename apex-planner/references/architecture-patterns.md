# Architecture Pattern Guidance

Consider patterns only when the repository and problem justify them: modular monolith, service extraction, strangler, adapter/facade, event-driven integration, CQRS, outbox, saga, caching, idempotency, bulkhead/circuit breaker, expand-contract, blue/green or canary deployment.

Treat patterns as tradeoff tools, not goals. For every selected pattern, state the failure mode or constraint it addresses and its operational/complexity cost.
