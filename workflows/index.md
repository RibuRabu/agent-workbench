# Workflow Index

This file helps coding agents quickly discover which workflow to use for a given task.

Always read AGENTS.md first.

Then choose the appropriate workflow below.

---

## Feature Work

Use when implementing new functionality or extending existing behavior.

Workflow:
- workflows/feature.md

Typical tasks:
- add a new feature
- extend an existing module
- add a new script or helper

---

## Bug Fix

Use when something behaves incorrectly.

Workflow:
- workflows/bugfix.md

Typical tasks:
- fix broken logic
- correct unexpected behavior
- resolve runtime errors

---

## Code Review

Use when analyzing code without modifying it.

Workflow:
- workflows/review.md

Typical tasks:
- inspect code quality
- identify risks
- propose improvements before implementation

---

## Default Agent Behavior

If unsure which workflow to use:

1. Start with review
2. Identify the smallest safe change
3. Use feature workflow for implementation

---

## Development Loop

Typical agent workflow in this repository:

1. Read AGENTS.md
2. Read this workflow index
3. Choose the appropriate workflow
4. Plan the smallest safe change
5. Modify one file
6. Verify results
7. Stop
