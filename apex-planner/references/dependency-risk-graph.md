# Dependency and Risk Graph

Represent important relationships as nodes and edges:
- changed module/service;
- direct callers/consumers;
- data stores and schemas;
- events/queues;
- external providers;
- deployment units;
- owners/operational boundaries.

For each edge, record the failure impact and compatibility expectation.

Prioritize investigation using:
`risk = impact × likelihood × uncertainty × exposure`.

Do not use a fake numeric precision. Relative labels are sufficient when evidence cannot support numeric estimates.
