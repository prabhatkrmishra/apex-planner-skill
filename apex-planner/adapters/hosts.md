# Host Notes

Claude Code: use plan/read-only exploration and isolated subagents when useful. Codex: keep portable under `.agents/skills` or user skills. OpenClaw: place under a configured skills root and use `$apex-planner`/slash invocation as supported. Hermes: use its native skills directory/external skill mechanism. Across all hosts, never fabricate unavailable tool calls or web access. Implementation handoff is to `apex-godmode`.
