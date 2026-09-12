# Execution Graph

Represent each implementation step as a node with:
- stable ID;
- prerequisites;
- outputs/artifacts;
- affected modules;
- verification;
- rollback/containment;
- owner or agent role when collaboration is used.

The graph must be acyclic for the normal forward path. Cycles indicate unresolved sequencing or an implicit redesign loop and must be made explicit as a bounded feedback loop.

Parallel steps are allowed only when:
- file/data ownership does not conflict;
- neither step depends on the other's output;
- intermediate repository state remains valid;
- verification does not race on shared mutable state.
