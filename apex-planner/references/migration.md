# Migration Planning

Define current state, target state, invariants, compatibility window, strategy (in-place/expand-contract/dual path/parallel run/strangler/etc.), backfill/transform, restart/idempotency, validation, rollout order, rollback/compensation, and cleanup.

Irreversible data changes must be staged after validation and protected by an explicit recovery plan.
