---
name: writing-skills
description: Use when building a new skill for the system.
---

# Writing Skills

## Overview

Skills are modular, self-contained units of capability. A well-written skill can be invoked by any agent without modification.

**Announce at start:** "I'm using the writing-skills skill to create this new capability."

## Skill Anatomy

Every skill lives in `skills/<skill-name>/`:

```
skills/<skill-name>/
├── SKILL.md              # Required
├── <supporting-files.md>  # Optional
└── scripts/              # Optional
```

### SKILL.md Format

```markdown
---
name: <skill-name>
description: One sentence describing when to use this skill
---

# <Skill Name>

## Overview
2-3 paragraphs explaining what this skill does.

## When to use
Bullet list of triggering situations.

## The Process
Numbered steps.

## Rules
Specific constraints.

## Output
What it produces and where.
```

## Design Principles

1. **Single Responsibility** — One skill does one thing.
2. **Clear Trigger** — The description unambiguously states when to use it.
3. **Self-Contained** — Everything it needs is inside its directory.
4. **Opinionated** — "The right way" is clear.
5. **Verifiable** — Output can be verified as correct.

## Testing Skills

Test a new skill by:
1. Using `subagent-driven-development` to run a task that requires the skill
2. Observing whether the skill triggers correctly
3. Checking the skill's output quality

## Conventions

- SKILL.md files: uppercase
- Prompt templates: descriptive lowercase `.md`
- Scripts: no extension for executables, `.sh` for shell, `.js` for JavaScript
