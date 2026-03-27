---
name: executing-plans
description: Use when executing a plan inline in the current session with human checkpoints between batches.
---

# Executing Plans

## Overview

Execute plan tasks inline in the current session, with human checkpoints between batches of tasks. Slower than subagent-driven but more transparent.

**Announce at start:** "I'm using the executing-plans skill."

## Process

### 1. Read the Plan
Read the full plan file. Confirm I understand every task.

### 2. Batch Tasks
Group tasks into batches of 3-5 tasks. Each batch gets a checkpoint.

### 3. Execute Batch
For each task in the batch:
- Follow each step exactly as written
- Write the failing test before any implementation code
- Run the verification steps
- Commit when done

### 4. Checkpoint
After each batch, pause and report:
- What was completed
- What was harder/easier than expected
- Any issues found

Ask: "Continue with the next batch, modify the plan, or stop here?"

### 5. Repeat
Continue until all tasks are done.

## When to Use This Instead of Subagent-Driven

Use this when:
- The human wants visibility into each step
- The plan has complex interdependencies between tasks
- The human wants to steer frequently

Use subagent-driven instead when:
- The plan is well-understood and independent tasks
- Speed is the priority
