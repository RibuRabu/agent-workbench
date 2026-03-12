# Review Workflow

Use this workflow when reviewing code, structure, safety, or implementation quality without immediately making changes.

## Goal

Analyze the requested code or file, identify risks and weaknesses, and report findings clearly before any implementation step.

## Required sequence

1. Read `AGENTS.md`
2. Restate what is being reviewed
3. Identify the relevant file or files
4. Summarize the current behavior or structure
5. Identify the most important risks, weaknesses, or inconsistencies
6. Separate confirmed findings from hypotheses
7. Recommend the smallest safe next step
8. Stop before making changes unless explicitly asked to implement

## Rules

- Review before rewriting
- Prefer concrete findings over generic best practices
- Do not invent problems without evidence
- Distinguish clearly between:
  - confirmed issue
  - likely issue
  - possible risk
- Do not start coding unless explicitly requested

## Review focus areas

When relevant, inspect:

- logic correctness
- UI behavior
- data flow
- naming clarity
- coupling
- state handling
- edge cases
- safety and permission boundaries
- deployment risk
- maintainability

## Output format

### Review target
State what is being reviewed.

### Current structure
Summarize the current implementation briefly.

### Confirmed findings
List issues supported by evidence.

### Likely risks
List probable issues that need validation.

### Recommended next step
State the smallest safe next move.

### Risk level
State whether the change area appears low, medium, or high risk.

## Stop condition

Stop after the review.
Do not provide implementation unless explicitly requested.
