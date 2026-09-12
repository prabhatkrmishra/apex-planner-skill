# Plan State Machine

Valid states:

`draft -> researching -> designed -> validated -> ready -> handoff -> superseded`

Exceptional state:

`blocked`

Rules:
- `draft`: intent exists, evidence incomplete.
- `researching`: material external facts are being established.
- `designed`: selected design exists but executable validation is incomplete.
- `validated`: requirements, dependencies, sequencing, feasibility and verification checks pass.
- `ready`: no unresolved blocker remains; required human gates are explicitly identified and scheduled.
- `handoff`: plan was delivered to Apex Godmode; Godmode must revalidate repository assumptions before editing.
- `blocked`: progress requires missing external input/access; do not pretend a workaround is equivalent.
- `superseded`: a newer plan replaces this one; preserve history and reason.

A plan may only move forward when its gate criteria are satisfied. Repository reality may force a transition backward to `researching`, `designed`, or `blocked`.
