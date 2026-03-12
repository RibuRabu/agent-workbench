# Agent Workbench

This repository is an AI development workbench for building and standardizing agent-assisted coding workflows across projects.

It is not a product application. It is a control layer for instructions, workflows, prompt patterns, helper scripts, and persistent context that help coding agents behave consistently and safely.

Detailed operating rules live in `AGENTS.md`.

## Repository Structure

- `AGENTS.md` - root operating instructions for agents working in this repository
- `workflows/` - reusable task workflows such as feature, bugfix, and review
- `prompts/` - reusable prompt templates for common agent interactions
- `scripts/` - helper scripts, with PowerShell-first usage
- `memory/` - persistent repository context and notes
- `experiments/` - isolated space for safe testing and prototypes

## Development Loop

The default workflow in this repository is:

1. Read the instructions.
2. Restate the task in concrete terms.
3. Choose the smallest safe change.
4. Change one file when possible.
5. Verify the result.
6. Stop and evaluate before expanding scope.

For the full development rules, output format, and safety constraints, use `AGENTS.md` and the relevant file in `workflows/`.
