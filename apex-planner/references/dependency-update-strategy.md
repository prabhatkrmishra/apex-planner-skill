# Dependency Update Strategy

When adding or upgrading dependencies, plan:
- exact package/version and why it fits;
- transitive dependency implications;
- license compatibility;
- vulnerability/support status;
- lockfile and reproducibility impact;
- API/ABI/runtime compatibility;
- upgrade path and rollback;
- ownership and maintenance expectations.

Prefer repository-native package managers, wrappers, lockfiles, and update automation. Do not introduce a dependency for functionality already provided by the project unless the tradeoff is explicit.
