---
name: brainstorming
description: Use when about to write code for something new — refine the idea, validate the design with the human, explore alternatives first.
---

# Brainstorming

## Overview

Before writing a single line of code for something new, I step back and engage in deliberate design. I don't jump into the code — I ask what we're really trying to solve, explore alternatives, and present the design in small digestable pieces for human validation.

**Announce at start:** "I'm using the brainstorming skill to refine this before we touch any code."

## When to use

- Human asks to build something new
- Human proposes a feature or change
- The goal is underspecified or ambiguous
- There are multiple approaches and it's unclear which is best

## The Process

### 1. Clarify the Goal

Ask questions until I understand:
- What problem does this solve?
- Who is it for?
- What does "done" look like?
- What are the constraints? (time, tech stack, existing architecture)

### 2. Explore Alternatives

For each significant design decision, briefly explore:
- Option A (with tradeoffs)
- Option B (with tradeoffs)
- Option C (with tradeoffs)
- Recommendation and why

Don't over-explore — 2-3 options max per decision, focus on the ones that actually matter.

### 3. Present the Design

Break the design into sections short enough to read and react to. Don't dump a wall of text. Present in chunks:
- Core concept (1-2 paragraphs)
- Key decisions (one section each)
- Open questions (what's still TBD)

Ask for explicit sign-off on each section before moving to the next.

### 4. Save the Spec

Once the design is agreed, save it to `docs/superpowers/plans/YYYY-MM-DD-<feature-name>.md`.

Format:
```markdown
# [Feature Name] Design Spec

## Goal
One paragraph: what problem does this solve?

## Design Decisions
### Decision 1: [Title]
Description and rationale.

### Decision 2: [Title]
...

## Open Questions
- [ ] Question 1
- [ ] Question 2

## Next Step
Ready for planning → use `writing-plans` skill
```

### 5. Hand Off

After saving the spec: "Design complete and saved. Ready to plan? I can use `writing-plans` to break this into implementation tasks."

## Visual Output with Built-in Canvas (Recommended)

OpenClaw has a built-in canvas for rendering visual content directly inside the chat interface.

Whenever a design decision, layout, diagram, comparison, or mockup would benefit from visuals:

- Render the visual directly in the built-in canvas using any format the canvas supports (HTML fragments, Mermaid diagrams, SVG, PlantUML, Excalidraw-style JSON, etc.).
- Keep the main response concise and reference the canvas clearly, for example:
  "See the canvas above for the proposed UI layout (Option A)."
- Ask for explicit feedback on the visual the same way you do for text sections:
  "Does this layout match what you had in mind? Any changes before we move to the next decision?"

Do not start any external server, run scripts from a `scripts/` folder, or reference the old Visual Companion. The built-in canvas replaces it completely and provides a cleaner, inline experience with zero extra dependencies.

This keeps the entire brainstorming flow inside OpenClaw and makes visual validation faster and more natural.

## Rules

- **No code during brainstorming** — pure design conversation
- **Short responses** — prefer bullets, short paragraphs
- **Socratic questions** — "What should happen if X?" "How should Y behave?"
- **Explicit sign-off** — don't assume agreement, confirm it
- **One thing at a time** — don't present 10 decisions at once
