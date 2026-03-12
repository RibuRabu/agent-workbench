# Feature Workflow

Use this workflow when implementing a new feature or extending existing functionality.

## Goal

Deliver the smallest safe implementation step for the requested feature.

## Required sequence

1. Read `AGENTS.md`
2. Summarize relevant constraints
3. Restate the feature in concrete technical terms
4. Identify the smallest safe implementation unit
5. Prefer changing one file only
6. Explain the planned change before writing code
7. Output the full contents of the changed file
8. Provide exact PowerShell verification steps
9. State expected result
10. State main risk

## Default rules

- Change one file at a time
- Full file rewrite by default
- No patch instructions unless explicitly requested
- No new dependencies unless explicitly approved
- No opportunistic refactors
- No unrelated cleanup in the same step

## Planning questions

Before changing code, answer internally:

- What is the actual requested behavior?
- Which single file is the safest first step?
- What could break if this file changes?
- How can the user verify success quickly?

## Output format

### Change summary
State what will change.

### File
Name the file.

### Full file
Return the complete updated file.

### PowerShell commands
Give exact commands if needed.

### Verification
Explain how to test.

### Risk
State the main risk.

## Stop condition

After one safe file change and verification instructions, stop.
Do not continue into additional files unless explicitly asked.
