# Superpowers for OpenClaw

A port of the [superpowers](https://github.com/obra/superpowers) agentic skills framework to OpenClaw.

## What is this?

Superpowers is a complete software development workflow for coding agents, built on a set of composable skills that govern how an agent approaches development work — from initial design through implementation, testing, review, and branch completion.

This repository ports the Superpowers skill system to OpenClaw, with adaptations for OpenClaw's architecture (skills live in `skills/`, core behavior lives in `AGENTS.md` and `SOUL.md`).

## Core Philosophy

Superpowers is built on four pillars:
- **Systematic over ad-hoc** — Process beats guessing every time
- **Test-Driven Development** — RED-GREEN-REFACTOR or it didn't happen
- **YAGNI** — You Aren't Gonna Need It
- **Evidence over claims** — Verify before declaring success

## Skills

| Skill | When to use |
|-------|-------------|
| `brainstorming` | Before writing code — refine ideas, validate design |
| `writing-plans` | After design approval — create implementation plans |
| `executing-plans` | Inline execution with checkpoints |
| `subagent-driven-development` | Fastest autonomous iteration |
| `test-driven-development` | Every implementation task |
| `systematic-debugging` | Bug investigation |
| `requesting-code-review` | Before human review |
| `receiving-code-review` | Acting on reviewer feedback |
| `finishing-a-development-branch` | Completing a feature |
| `dispatching-parallel-agents` | Concurrent independent tasks |
| `using-git-worktrees` | Parallel feature branches |
| `verification-before-completion` | Final quality gate |
| `writing-skills` | Creating new skills |
| `using-superpowers` | Onboarding / system overview |

## Installation

Copy (or clone) the `skills/` directory into your OpenClaw workspace and replace your `AGENTS.md` and `SOUL.md` files with the ones in this repository.

## Differences from upstream superpowers

- OpenClaw doesn't use slash commands — skills are referenced by path/name
- Platform-specific integrations (Claude Code plugin, Codex, Cursor, OpenCode hooks) are not ported
- Session initialization behavior is integrated into `AGENTS.md` rather than a shell hook
- The `brainstorming` visual companion (HTML server) is included but optional

## License

MIT — same as upstream superpowers
