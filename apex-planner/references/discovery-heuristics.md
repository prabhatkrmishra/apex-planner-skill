# Discovery Heuristics

Detect before designing: repository topology, modules, owners, entrypoints, dependency edges, generated sources, runtime/build wrappers, CI, deployment, environment contracts, public interfaces, persistence, events, caches, queues, feature flags, observability, and similar existing capabilities.

Evidence priority:
1. repository files and executable project wrappers;
2. lockfiles/configuration and generated metadata;
3. authoritative external documentation;
4. high-quality secondary sources;
5. model inference.

Never treat a filename alone as proof of a framework. Require corroborating fingerprints for ambiguous stacks.
