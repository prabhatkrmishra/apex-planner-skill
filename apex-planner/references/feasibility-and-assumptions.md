# Feasibility and Assumption Control

Every material plan must distinguish:
- fact: directly evidenced by repository, tool output, or authoritative source;
- inference: derived from evidence but not directly observed;
- assumption: temporarily accepted to proceed;
- unknown: unresolved fact that could change the design;
- blocker: missing information, authority, environment, or prerequisite that prevents safe handoff.

For each assumption:
1. state the assumption;
2. explain why it is needed;
3. define how implementation will validate it;
4. define the fallback if it is false.

Never convert an unknown into a fact merely to make the plan appear complete.
Never hide a prerequisite behind a vague step such as "configure as needed".
