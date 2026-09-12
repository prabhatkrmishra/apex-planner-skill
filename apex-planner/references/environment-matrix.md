# Environment Matrix

When behavior depends on environments, model at minimum the relevant set of:
- local/dev;
- CI;
- test/staging;
- production;
- disaster-recovery or secondary regions;
- supported client/runtime/OS variants.

Record configuration, credentials, external dependencies, feature flags, data shape, observability and permission differences that could change behavior.

A plan is incomplete when it works only in one environment but the actual change crosses environment boundaries.
