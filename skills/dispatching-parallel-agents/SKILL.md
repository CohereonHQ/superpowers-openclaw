---
name: dispatching-parallel-agents
description: Use when multiple independent tasks need to run at the same time.
---

# Dispatching Parallel Agents

## Overview

When tasks are independent, I dispatch them concurrently as parallel subagents rather than running them sequentially.

**Announce at start:** "I'm using the dispatching-parallel-agents skill."

## When Tasks Are Independent

Tasks are independent if:
- They don't read or write the same files
- They don't depend on each other's output
- They can run in any order and produce the same result

## Process

### 1. Identify Independent Tasks
Review the plan or task list. Which tasks are truly independent?

### 2. Batch by Resource Contention
Group independent tasks into batches. Tasks in a batch run in parallel.

### 3. Dispatch Each Batch
Dispatch all tasks in a batch simultaneously:
- Use `sessions_spawn` for OpenClaw
- Each subagent gets: the task, relevant context, verification steps

### 4. Collect Results
Wait for all subagents in the batch to complete. Merge their changes.

### 5. Resolve Conflicts
If two subagents modified the same file:
- The later-committed change wins
- Verify the merged result is correct

### 6. Checkpoint
After each batch, summarize results and checkpoint with the human.

## When NOT to Parallelize

- Tasks that share state or files
- Tasks where output of one is input to another
- When in doubt: run sequentially
