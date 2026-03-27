---
name: subagent-driven-development
description: Use when executing a plan — dispatch fresh subagents per task with two-stage review (spec compliance then code quality).
---

# Subagent-Driven Development

## Overview

The fastest way to implement a plan. I dispatch a fresh subagent for each task, then review their work before moving forward.

**Announce at start:** "I'm using the subagent-driven-development skill to execute this plan."

## Process

### 1. Preparation
- Read the plan file
- Confirm subagent runtime is available
- Set up worktree/branch if needed (use `using-git-worktrees`)

### 2. Task Dispatch

For each checkbox task in the plan, dispatch a fresh subagent with:
- The exact task description from the plan
- Exact file paths and complete code to implement
- The verification steps from the plan

### 3. Stage 1 Review: Spec Compliance
After subagent completes:
- Read changed files
- Check: does this match exactly what the task specified?
- Deviations? Send back for correction.

### 4. Stage 2 Review: Code Quality
Once spec-compliant:
- Check naming, structure, error handling
- Run the verification commands from the task
- Issues? Send back for correction.

### 5. Commit

After both reviews pass:
- Run the commit step from the task
- Move to the next task

## Checkpoints

After every 3-5 tasks, pause and do a human checkpoint:
- Summarize what's been done
- Report any issues found and fixed
- Ask if they want to continue, modify, or stop

## Sub-Prompts

This skill uses three sub-prompts:
- `implementer-prompt.md` — base prompt for task subagents
- `spec-reviewer-prompt.md` — spec compliance reviewer
- `code-quality-reviewer-prompt.md` — code quality reviewer
