# Anti-Pattern Taxonomy

Search specifically for anti-patterns at the layers that matter:

- language/runtime: memory, async, concurrency, type-system, error handling;
- framework: lifecycle, DI, state management, request handling, threading;
- library/tool: deprecated APIs, unsafe defaults, incompatible versions;
- architecture: distributed coordination, shared state, coupling, over-abstraction;
- data: N+1 queries, transaction misuse, destructive migrations, precision loss;
- operations: retry storms, unsafe rollouts, missing observability;
- security: broken authorization, trust-boundary confusion, unsafe deserialization;
- developer experience: brittle tests, generated-source edits, hidden environment assumptions.

Turn each relevant anti-pattern into an avoidance constraint and a verification item.
