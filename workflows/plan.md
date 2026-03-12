# Planning Workflow

Use this workflow when determining the next step in development before modifying any files.

## Goal

Identify the smallest safe improvement for the repository without making changes yet.

This workflow exists to prevent premature implementation and encourage careful planning.

## Required sequence

1. Read `AGENTS.md`
2. Read `workflows/index.md`
3. Read relevant context files if needed
4. Summarize the current repository state
5. Identify possible improvements
6. Choose the smallest safe next step
7. Explain the reasoning
8. Do not modify any files

## Rules

- Planning only
- No code changes
- No file modifications
- No dependency additions
- Prefer small, reversible steps
- Prefer improvements aligned with repository structure

## Planning criteria

The next step should ideally:

- improve repository clarity
- improve agent usability
- reduce ambiguity
- extend existing structure rather than replacing it

Avoid large refactors or multi-file changes.

## Output format

### Repository state
Brief summary of the current state.

### Candidate improvements
List possible improvements.

### Selected next step
Choose the smallest safe improvement.

### Reasoning
Explain why this step is preferable.

### Risk level
Low / Medium / High.

## Stop condition

Stop after proposing one safe next step.
Do not implement it.
