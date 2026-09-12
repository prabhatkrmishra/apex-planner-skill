# Verification Oracles

A test is useful only when its expected result is grounded in a real oracle.

For each material behavior define the oracle:
- invariant/property;
- reference implementation;
- protocol/specification;
- explicit product requirement;
- deterministic fixture/golden output;
- measurable operational threshold;
- human acceptance criterion.

Avoid circular verification where the implementation itself defines the expected result.
For approximate, probabilistic, AI/ML, ranking, search, or heuristic behavior, define tolerance, benchmark, calibration set, and failure threshold before implementation.
