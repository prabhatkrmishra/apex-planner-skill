# AI / Agent Systems

For AI/agent features consider:
- model/version and provider lifecycle;
- evaluation sets and holdouts;
- prompt/tool boundaries and least privilege;
- prompt injection and untrusted-content handling;
- tool failure, retries and idempotency;
- model fallback/degradation behavior;
- latency and token/cost budgets;
- data retention and training/use restrictions;
- deterministic vs probabilistic acceptance criteria;
- human escalation paths;
- model/data drift and re-evaluation triggers;
- abuse, misuse and policy constraints.

Do not treat a model's own confidence or self-evaluation as sufficient evidence for correctness.
