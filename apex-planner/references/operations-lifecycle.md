# Operations and Lifecycle

Plans for production systems should define:
- service ownership and on-call expectations;
- SLO/SLI implications and error-budget impact;
- capacity assumptions and scaling triggers;
- alerts, dashboards, logs and trace requirements;
- runbook or support changes;
- feature flag/config lifecycle;
- deprecation and sunset criteria;
- migration cleanup date/owner;
- dependency upgrade cadence;
- post-release verification and rollback thresholds.

Do not create telemetry without naming the decision/action it should enable.
