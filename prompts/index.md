# Prompt Index

This file helps coding agents choose the right prompt template for a task.

Always read `AGENTS.md` for global rules.
Use `workflows/index.md` to choose the correct workflow before using a prompt.

---

## Implement

Use when the task requires a code or file change.

Prompt:
- `prompts/implement.md`

Typical use:
- implement a requested change
- add or update a repository file
- make one safe implementation step

---

## Review

Use when the task is analysis only and no files should be changed.

Prompt:
- `prompts/review.md`

Typical use:
- inspect repository structure
- identify issues or risks
- suggest the next safe improvement

---

## Plan

Use when the task is to outline work before implementation.

Prompt:
- `prompts/plan.md`

Typical use:
- break a task into safe steps
- decide the smallest useful change
- prepare implementation without editing files

---

## Default Agent Behavior

If unsure:

1. Read `AGENTS.md`
2. Read `workflows/index.md`
3. Choose the workflow
4. Choose the matching prompt
5. Prefer review before implementation when the task is unclear
