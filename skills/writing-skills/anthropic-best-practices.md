# Anthropic Best Practices for Agent Skills

## When Writing Agent Prompts

### Be Direct
Agents respond better to direct instructions than to preamble. Get to the point.

### Give Exact File Paths
Agents navigate better with exact paths. Relative paths cause confusion.

### Show Complete Code
Don't truncate code. The agent may read only the shown portion.

### State the Constraint First
If there's a non-obvious constraint, state it first.

### Avoid Ambiguity
If a term could mean multiple things, define it. Ambiguity causes divergent behavior.

## Skill Design

### Header (YAML frontmatter)
```yaml
name: skill-name
description: One sentence. When to use.
```

The description is the trigger. Make it specific enough to not fire accidentally, general enough to fire when needed.

### Process Steps
Numbered steps. Each step should be completable in one pass.

### Output Specification
Tell the agent what to produce and where to put it.

## Anti-Patterns

- Vague descriptions ("does useful things")
- Steps that require reading multiple files to understand one task
- Overly permissive triggers
- No output specification
