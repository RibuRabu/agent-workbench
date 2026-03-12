# AGENTS.md

## Purpose

This repository is an AI development workbench for building, guiding, and standardizing agent-assisted coding workflows.

The repository is not a single product app.  
It is a control layer for:
- project instructions
- workflow templates
- prompt patterns
- reusable scripts
- memory/context notes
- safe execution habits for AI-assisted development

Primary goal:
Create a stable, repeatable way to work with Codex and similar coding agents across projects.

---

## Core Working Mode

Follow these rules by default unless the user explicitly overrides them.

- Environment is Windows + PowerShell
- Commands must be given in copy-paste-ready PowerShell format
- Prefer safe, incremental changes
- Change one file at a time
- When modifying a file, output the full file contents
- Do not give patch-style instructions unless explicitly requested
- Do not spread one small change across many files unless truly necessary
- Explain the intended change before giving code
- After code, provide exact verification steps
- After verification steps, provide expected outcome and main risks

---

## Decision Rules

When asked to implement something:

1. First understand the request
2. Then restate the task in concrete technical terms
3. Then identify the smallest safe unit of change
4. Then change only that unit
5. Then explain how to verify it
6. Then stop

Do not bundle unrelated improvements into the same step.

If several changes are possible in the same file:
- prefer the safest sequence
- prefer changes that reduce breakage risk
- prefer clarity over cleverness

---

## Repository Role

This repo contains the operating framework for agent-assisted development.

Typical contents include:
- `workflows/` for repeatable task patterns
- `prompts/` for reusable instruction blocks
- `scripts/` for helper scripts
- `memory/` for persistent project or workflow context
- `experiments/` for testing ideas safely

This repo should stay model-agnostic where practical.
Do not lock the structure to one vendor unless there is a strong reason.

---

## Output Rules for Coding Help

When producing implementation help, use this structure:

### 1. What will change
Brief explanation of the exact change.

### 2. File to update
Name exactly one file when possible.

### 3. Full file contents
Return the complete file contents.

### 4. PowerShell commands
Provide exact commands when needed.

### 5. Verification
State how to test the change.

### 6. Risks
State the main risk or likely failure point.

Do not skip directly into code without first framing the change.

---

## Constraints

Unless explicitly approved by the user:

- do not add new dependencies
- do not rename files casually
- do not restructure the whole repo
- do not introduce hidden automation
- do not assume CI/CD exists
- do not assume Bash is available
- do not assume WSL is available
- do not assume Linux paths
- do not assume cloud deployment is desired by default

Prefer simple local-first workflows.

---

## PowerShell Rule

All shell instructions must be written for PowerShell.

Use this style:
```powershell
cd C:\Path\To\Project
npm install
npm run dev
