# Plan Schema
plan_version: 4
status: draft|researching|ready|blocked|superseded
request: { outcome, non_goals, acceptance, constraints, success_metrics }
repository: { stack, versions, modules, evidence, topology, history }
research: { sources, findings, freshness, conflicts, query_strategy }
requirements: [{ id, statement, design_refs, verification_refs, oracle_ref }]
decision: { chosen, alternatives, counterfactual, tradeoffs, reversibility }
impact: { direct, transitive, operational, compatibility, ownership, data, security, blast_radius }
data: { changes, migration, retention }
contracts: { api, events, schemas, compatibility }
security: { threats, controls, trust_boundaries }
implementation: { steps, dependencies, feasibility, change_budget }
verification: { checks, evidence, acceptance_mapping, oracles }
rollout: { strategy, gates, rollback, compensation }
risks: [{ id, impact, likelihood, uncertainty, mitigation, owner }]
open_questions: [{ id, question, decision_owner, blocker, fallback }]
handoff: { skill: apex-godmode, plan_artifact, revalidation_required }
