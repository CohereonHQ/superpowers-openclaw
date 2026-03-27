---
name: writing-plans
description: Use when you have an approved spec or requirements for a multi-step task, before touching code.
---

# Writing Plans

## Overview

Convert an approved spec into a comprehensive implementation plan — bite-sized tasks of 2-5 minutes each. Every task has exact file paths, complete code, and verification steps.

**Announce at start:** "I'm using the writing-plans skill to create the implementation plan."

**Save plans to:** `docs/superpowers/plans/YYYY-MM-DD-<feature-name>.md`

## File Structure First

Before defining tasks, map out which files will be created or modified and what each one is responsible for. This informs task decomposition.

- Prefer smaller, focused files over large ones that do too much
- Files that change together should live together
- Follow established patterns in existing codebases

## Task Granularity

**Each step is one action (2-5 minutes):**
- "Write the failing test" — step
- "Run it to make sure it fails" — step
- "Write the minimal code to make it pass" — step
- "Run the tests and make sure they pass" — step
- "Commit" — step

## Plan Document Header

Every plan MUST start with:

```markdown
# [Feature Name] Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use `subagent-driven-development` (recommended) or `executing-plans` to implement this plan task-by-task.

**Goal:** [One sentence]

**Architecture:** [2-3 sentences]

**Tech Stack:** [Key technologies]
```

## Task Structure

```markdown
### Task N: [Component Name]

**Files:**
- Create: `path/to/file.ext`
- Modify: `path/to/file.ext:123-145`
- Test: `tests/path/test.ext`

- [ ] **Step 1: Write the failing test**
- [ ] **Step 2: Run test to verify it fails**
- [ ] **Step 3: Write minimal implementation**
- [ ] **Step 4: Run test to verify it passes**
- [ ] **Step 5: Commit**
```

## No Placeholders

Never write: "TBD", "TODO", "implement later", "fill in details", "add error handling", "similar to Task N", or steps without actual code.

## Self-Review

After writing the complete plan:
1. **Spec coverage** — Can you point to a task for every spec requirement?
2. **Placeholder scan** — Search for TBD/TODO patterns. Fix them.
3. **Type consistency** — Do method names in Task 7 match Task 3?

## Execution Handoff

After saving the plan, offer:

**"Plan complete. Two options:**
1. **Subagent-Driven (recommended)** — dispatch a fresh subagent per task
2. **Inline Execution** — execute tasks in this session with checkpoints

**Which approach?"**
