# Review Prompt

Use this prompt when you want analysis, not implementation.

The goal is to inspect code or structure and report findings before any change is made.

## Prompt Template

Read `AGENTS.md` and the relevant workflow file first.

Then perform a structured review.

Steps:

1. Summarize the relevant repository constraints
2. Restate what is being reviewed
3. Identify the file or code area involved
4. Summarize the current structure or behavior
5. Identify confirmed issues
6. Identify likely risks
7. Identify possible edge cases
8. Suggest the smallest safe next step
9. Do not modify code unless explicitly asked

## Rules

- Do not write code unless explicitly requested
- Prefer evidence-based findings
- Avoid generic best-practice advice
- Separate confirmed problems from speculation
- Focus on logic, safety, and maintainability

## Output Format

### Review target
What is being reviewed.

### Current structure
Short summary of how the code works.

### Confirmed issues
Problems supported by clear evidence.

### Likely risks
Things that probably need attention.

### Edge cases
Situations where the logic may fail.

### Suggested next step
Smallest safe improvement to investigate.

### Risk level
Low / Medium / High.
