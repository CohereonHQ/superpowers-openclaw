---
name: using-git-worktrees
description: Use when creating a new feature branch — use git worktrees for parallel development.
---

# Using Git Worktrees

## Overview

Git worktrees let me work on multiple branches simultaneously without switching. Each worktree is an independent checkout — I can have multiple branches checked out at the same time.

**Announce at start:** "I'm using the using-git-worktrees skill."

## Why Worktrees

Instead of:
```
git checkout -b new-feature  # switch away from main
# work work work
git checkout main            # switch back to start another feature
```

With worktrees:
```
# main worktree (always clean)
git worktree add ../feature-1 new-feature
# now I can be on feature-1 AND main at the same time
# in different directories
```

## Process

### 1. Ensure Main is Clean
Main worktree must be clean before creating a new worktree.

### 2. Create Worktree
```bash
git worktree add ../feature-name -b feature-name
```

### 3. Work in the New Directory
All work for this feature happens in the new worktree directory.

### 4. Finish
When the feature is done:
- Merge or PR from the worktree
- Then: `git worktree remove ../feature-name` to clean up

## Rules

- Never work in the main worktree on a feature
- Keep the main worktree always deployable (clean)
- One worktree per active feature
- Clean up worktrees when features are merged
