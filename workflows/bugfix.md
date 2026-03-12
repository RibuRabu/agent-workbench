# Bugfix Workflow

Use this workflow when fixing a bug or unexpected behavior.

## Goal

Identify the smallest safe fix that resolves the problem without introducing new breakage.

## Required sequence

1. Read `AGENTS.md`
2. Restate the bug clearly
3. Identify the file most likely responsible
4. Explain the root cause hypothesis
5. Implement the smallest safe fix
6. Change only one file when possible
7. Output the full file contents
8. Provide PowerShell verification steps
9. Describe expected behavior after fix

## Rules

- Prefer minimal changes
- Avoid broad refactors
- Do not introduce new dependencies
- Do not change unrelated logic

## Output format

### Bug summary

### Root cause hypothesis

### File to change

### Full file

### PowerShell verification

### Expected result

### Risk

## Stop condition

Stop after the first safe fix.
Do not continue modifying additional files unless requested.
