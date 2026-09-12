# Plan Simulation

Simulate at least two execution states:
1. clean checkout;
2. partially completed implementation after an arbitrary failure.

Check:
- prerequisites are explicit;
- produced artifacts are consumed by later steps;
- no invalid intermediate state is introduced;
- retries are safe/idempotent;
- rollback/abort is possible at stated checkpoints;
- parallel work cannot conflict;
- verification can observe each acceptance criterion.

For high-risk work, inject thought experiments for timeout, partial failure, stale state, duplicate execution, rollback after partial rollout, and authorization failure.
