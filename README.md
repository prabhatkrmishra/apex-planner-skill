# Apex Planner v1.5.0

A domain-agnostic planning skill for Claude Code, Codex, OpenClaw, and Hermes. It performs repository reconnaissance, product/outcome modeling, version-aware web research, anti-pattern research, architecture/alternative analysis, decision economics, impact/risk graphs, edge-case analysis, verification/rollout design, plan simulation, and hands an implementation-ready plan to `apex-godmode`.

## Design

`SKILL.md` is the only skill entrypoint. Supporting files are loaded progressively. Planner does not implement code and does not duplicate Apex Godmode's implementation protocol.

## Installation

- Claude Code: copy `apex-planner/` to `.claude/skills/apex-planner/` or `~/.claude/skills/apex-planner/`.
- Codex: copy `apex-planner/` to `.agents/skills/apex-planner/` or `$CODEX_HOME/skills/apex-planner/`.
- OpenClaw: place `apex-planner/` beneath a configured workspace `skills/` root.
- Hermes: place `apex-planner/` in `~/.hermes/skills/` or a configured external skills directory.

Explicitly invoke `/apex-planner` where the host supports slash skills; otherwise use the host's normal skill reference mechanism. Then the plan hands off to the installed `apex-godmode` skill.

## Principle

Plan from evidence, research current guidance, challenge the counterfactual, choose deliberately, define verification before implementation, and make every important assumption and decision owner visible.

## Research basis

Claude Code skills/subagents/plan mode: https://code.claude.com/docs/en/features-overview  
OpenClaw skills: https://docs.openclaw.ai/tools/skills  
Hermes skills/progressive disclosure: https://hermes-agent.nousresearch.com/docs/user-guide/features/skills  
AWS Well-Architected tradeoffs: https://docs.aws.amazon.com/wellarchitected/2023-10-03/framework/perf_architecture_evaluate_trade_offs.html  
AWS migration planning: https://docs.aws.amazon.com/wellarchitected/latest/migration-lens/best-practice-arranged-by-migration-phase.html  
GitHub dependency graph: https://docs.github.com/en/code-security/concepts/supply-chain-security/dependency-graph-data  
GitHub Dependabot: https://docs.github.com/en/code-security/concepts/supply-chain-security/dependabot-security-updates  
Google technical writing: https://developers.google.com/tech-writing/one/documents  
OWASP threat modeling: https://owasp.org/www-community/Threat_Modeling


## Current research basis

- Claude Code Skills: https://code.claude.com/docs/en/agent-sdk/skills
- Claude Code project/global skill locations: https://code.claude.com/docs/en/claude-directory
- OpenClaw Skills: https://docs.openclaw.ai/tools/skills
- Hermes Skills System: https://hermes-agent.nousresearch.com/docs/user-guide/features/skills
- OpenAI Skills API: https://developers.openai.com/api/reference/go/resources/skills
- OWASP Threat Modeling: https://cheatsheetseries.owasp.org/cheatsheets/Threat_Modeling_Cheat_Sheet.html
- Martin Fowler ADR guidance: https://martinfowler.com/bliki/ArchitectureDecisionRecord.html

## License

MIT. See `LICENSE`.