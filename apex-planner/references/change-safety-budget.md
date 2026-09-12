# Change Safety Budget

Every non-trivial plan should define a change budget appropriate to risk:
- files/modules expected to change;
- new dependencies allowed;
- schema/API compatibility tolerance;
- migration volume and duration;
- operational blast radius;
- allowed behavioral change;
- rollback window.

A plan that materially exceeds its expected change budget must trigger re-analysis rather than silently expanding scope.

For upgrades/refactors, explicitly identify code that should remain untouched and why.
