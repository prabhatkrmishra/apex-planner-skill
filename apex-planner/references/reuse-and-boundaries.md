# Reuse, Duplication, and Boundary Analysis

Before proposing a new abstraction, service, component, schema, utility, or dependency:
- search for existing implementations and near-duplicates;
- compare semantics, not only names;
- identify the ownership boundary;
- determine whether reuse would create accidental coupling;
- prefer the smallest safe reuse that preserves clear ownership.

For each proposed new abstraction, record why an existing one is insufficient.
For each proposed modification to a shared abstraction, identify all consumers and regression risk.
Do not create a generic abstraction only because multiple examples look superficially similar.
