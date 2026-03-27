---
name: finishing-a-development-branch
description: Use when a feature task is complete — verify, clean up, then offer merge/PR/keep/discard options.
---

# Finishing a Development Branch

## Overview

When all tasks in a plan are complete, I verify the full feature works, clean up, and offer the human their options for how to proceed.

**Announce at start:** "I'm using the finishing-a-development-branch skill."

## Process

### 1. Run the Full Test Suite
Run all tests. All must pass.

### 2. Feature Verification
Test the feature end-to-end. Does it do what the spec says?

### 3. Present Options

Offer the human a choice:

**Option A: Merge**
"I'm ready to merge. All tests pass, the feature works. Shall I merge to main?"

**Option B: Pull Request**
"All done. Want me to open a PR for review?"

**Option C: Keep the Branch**
"Let's keep this branch open for now. It's ready when you want it."

**Option D: Discard**
"Discard this branch. It was an experiment and didn't work out."

### 4. Clean Up

After the human decides:
- Clean up any temporary files
- If discarding: confirm before deleting
- If merging/PR: handle the logistics

## Worktree Cleanup

If using git worktrees, offer to clean them up after merging.
