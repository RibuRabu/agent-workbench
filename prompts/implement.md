# Implement Prompt

Use this prompt when asking Codex to implement or change code in a controlled way.

## Prompt Template

Read `AGENTS.md` and any relevant workflow file first.

Then do the following:

1. Summarize the relevant constraints for this task
2. Restate the requested change in concrete technical terms
3. Choose the smallest safe implementation step
4. Prefer changing one file only
5. Explain what will change before writing code
6. Return the full contents of the changed file
7. Provide exact PowerShell commands for verification if needed
8. State expected result
9. State the main risk
10. Stop after one safe step

## Rules

- One file at a time
- Full file rewrite by default
- No patch instructions unless explicitly requested
- No unrelated cleanup
- No broad refactors unless explicitly requested
- No new dependencies unless explicitly approved

## Example Invocation

Implement this change using the repository rules.

Requirements:
- Read `AGENTS.md`
- Use the relevant workflow from `workflows/`
- Change one file only if possible
- Return the full file
- Provide PowerShell verification steps
- State expected result and main risk

Task:
[describe the requested change here]
