# History and Intent Reconnaissance

Planning should inspect repository history when available because current code alone may hide compatibility constraints, abandoned approaches, regressions, ownership, or reasons behind unusual patterns.

Use read-only history signals as evidence, not as authority:
- recent commits touching the target area;
- blame/history for surprising code or compatibility shims;
- reverted/abandoned implementations;
- existing migrations and prior incident fixes;
- changelog/release notes;
- ADRs and design docs;
- issue/PR references available in the local checkout.

Do not assume old decisions are still valid. Identify whether the reason remains true.
Do not rewrite history or modify git state.
Record historical findings that materially constrain the new design.
