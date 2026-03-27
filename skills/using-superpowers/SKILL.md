---
name: using-superpowers
description: Onboarding skill — introduction to the Superpowers system and how to use it.
---

# Using Superpowers

## Overview

Superpowers is a system of composable skills for agentic software development. This skill provides a quick orientation for agents new to the system.

**Announce at start:** "I'm using the using-superpowers skill."

## The Skills System

Skills live in `skills/<skill-name>/SKILL.md`. When you encounter a situation matching a skill's description, invoke that skill by reading its SKILL.md and following its process.

Skills are not optional suggestions — they are the expected workflow.

## The Development Flow

```
human request
    ↓
[brainstorming] ← design first, not code
    ↓
spec approved
    ↓
[writing-plans] ← break into tasks
    ↓
[subagent-driven-development] or [executing-plans]
    ↓
[test-driven-development] ← every task
    ↓
[requesting-code-review]
    ↓
[finishing-a-development-branch]
```

## Key Principles

1. **Systematic over ad-hoc** — Follow the process
2. **TDD** — Red-green-refactor, always
3. **YAGNI** — Don't build what you don't need
4. **Evidence over claims** — Verify before declaring done

## Skill Reference

| Skill | Trigger |
|-------|---------|
| `brainstorming` | About to write new code |
| `writing-plans` | Design approved, need implementation plan |
| `executing-plans` | Inline plan execution with checkpoints |
| `subagent-driven-development` | Fast autonomous iteration via subagents |
| `test-driven-development` | Writing any code |
| `systematic-debugging` | Bug investigation |
| `requesting-code-review` | Before human review |
| `receiving-code-review` | Acting on review feedback |
| `finishing-a-development-branch` | Feature complete |
| `dispatching-parallel-agents` | Multiple independent tasks |
| `using-git-worktrees` | Creating parallel branches |
| `verification-before-completion` | Think something is done |
| `writing-skills` | Building new skills |
