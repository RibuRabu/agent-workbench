# Repository Context

## Purpose

This repository is an AI development workbench used to guide and standardize AI-assisted coding workflows.

It provides structure and reusable components for working with coding agents such as Codex.

The goal is to create a predictable and safe environment for AI-assisted development.

## Key Idea

Instead of letting AI tools improvise workflows each time, this repository defines:

- clear working rules
- repeatable workflows
- reusable prompts
- helper scripts
- persistent context

This makes agent behavior more consistent across projects.

## Repository Structure

AGENTS.md  
Root instructions for coding agents working in this repository.

workflows/  
Reusable development workflows (feature, bugfix, review).

prompts/  
Prompt templates for interacting with coding agents.

scripts/  
Helper scripts used during development.

memory/  
Persistent project context and notes.

experiments/  
Safe sandbox for testing ideas.

## Workflow Philosophy

The repository enforces a structured development loop:

1. Understand the task
2. Plan the smallest safe change
3. Modify one file
4. Verify the result
5. Stop and evaluate

Avoid large uncontrolled edits.

## Development Style

Preferred characteristics:

- incremental changes
- clear reasoning before coding
- explicit verification steps
- minimal assumptions
- simple tooling

## Current State

Repository scaffolding phase.

Core components already defined:

- AGENTS.md
- feature workflow
- bugfix workflow
- review workflow
- prompt templates

Next steps include expanding prompt library and adding helper scripts.

## Long-term Direction

This repository may evolve into a central control layer for AI-assisted development across multiple projects.
