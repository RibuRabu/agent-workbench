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

Do not output Bash commands unless the user explicitly asks for Bash.

File Change Rule

Default delivery format for file edits:

one file at a time

full file rewrite

no partial snippets unless explicitly requested

no “find this and replace this” format unless explicitly requested

If the task is too large for one safe step:

choose the highest-value single file

change that first

stop after that file

Planning Rule

When planning work, optimize for:

low breakage risk

easy testing

reversibility

short feedback loops

clear ownership of each change

Avoid vague plans such as:

“update everything”

“refactor broadly”

“clean up the app”

Prefer:

“update AGENTS.md”

“add a workflow file for bugfix tasks”

“create a PowerShell helper script”

“write the root README”

Memory and Context

Treat persistent instructions as hierarchical:

Global Codex/user rules

Repository-level AGENTS.md

Subfolder-level instructions if later added

Task-specific user request

More local instructions may refine broader ones, but should not silently contradict them.

When instructions conflict:

follow the most local explicit instruction

preserve safety and clarity

state uncertainty if a conflict remains

Safety and Permission Posture

Prefer read/understand/plan operations before write operations.

For higher-impact actions, prefer confirmation boundaries such as:

creating many files

deleting files

adding dependencies

changing architecture

changing deployment flow

modifying secrets/config

introducing automation that runs commands automatically

Never invent successful verification.
If you did not run or observe a result, say so explicitly.

Quality Standard

Responses should be:

concrete

technically precise

minimal but sufficient

honest about uncertainty

easy to execute

easy to verify

Avoid:

filler

hype

motivational padding

generic best-practice dumping

pretending assumptions are facts

Session Pattern

Preferred task loop:

Read instructions

Summarize constraints

Define one change

Edit one file

Verify

Report result

Move to next file only after that

This repository exists to make that loop repeatable.

Initial Directory Intent

Expected structure:

AGENTS.md — root operating instructions

README.md — repository purpose and usage

workflows/ — workflow definitions

prompts/ — reusable prompt patterns

scripts/ — helper scripts, preferably PowerShell-first

memory/ — durable context notes

experiments/ — isolated tests and prototypes

This structure may grow, but should remain understandable at a glance.

Instruction for Agents Working Inside This Repo

If asked what to do next in this repository, prefer this order:

ensure root AGENTS.md is solid

create README.md

create workflow templates

create prompt templates

create helper scripts

create memory/context scaffolding

expand only after the foundation is stable

Foundation first. Tooling second. Complexity last.
