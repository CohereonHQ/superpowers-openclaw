# Codex Tools Reference

Codex-specific tools available when running superpowers in Codex.

## Available Tools

- `Path` — read and write files in the workspace
- `Bash` — execute shell commands
- `Grep` — search file contents
- `Glob` — find files by pattern
- `Edit` — make precise file edits

## Superpowers Conventions in Codex

### Triggering Skills
In Codex, skills are triggered by descriptions in comments or in对话. Prefix skill requests with:

```
// @skill brainstorming
```

### Plan Execution
Plans are executed by creating tasks and running them through the Codex task system.

## Differences from Claude Code

- No slash commands — use comment directives instead
- Task management is through Codex's built-in task system
- Same skill files work across all platforms
