# Execution Feasibility

A plan is not implementation-ready if it depends on invisible prerequisites. Validate:
- build/test/package commands;
- credentials and permissions (without exposing secrets);
- required local services;
- environment variables;
- generated artifacts;
- migration tooling;
- CI-only checks;
- deployment access;
- fixture/test-data availability.

When a prerequisite is unavailable, mark it explicitly and provide the smallest safe preparation step. Do not pretend it was verified.
