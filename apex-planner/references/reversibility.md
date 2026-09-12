# Reversibility and Option Preservation

Classify material decisions as:
- reversible: can be safely undone without data compensation;
- conditionally reversible: can be undone with migration, replay, or compensation;
- irreversible: creates data, external, contractual, or operational state that cannot be cleanly undone.

For irreversible work, require a staged path, backup/restore or compensation strategy, validation checkpoint, abort criteria, and explicit approval when external or destructive impact is material.
