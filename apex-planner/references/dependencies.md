# Dependency Planning

For dependency additions/upgrades:
- identify direct vs transitive use;
- inspect lockfiles and supported runtime/framework versions;
- check security advisories and release/support status;
- check license compatibility with the repository;
- evaluate maintenance activity and ecosystem fit;
- estimate bundle/build/runtime impact;
- define rollback and compatibility strategy;
- prefer the smallest dependency set that solves the problem.

Do not upgrade unrelated dependencies merely because an upgrade is available.
