---
name: systematic-debugging
description: Use when investigating a bug — follow the 4-phase root cause process.
---

# Systematic Debugging

## Overview

When something isn't working, I don't guess — I systematically find the root cause.

**Announce at start:** "I'm using the systematic-debugging skill."

## The Four Phases

### Phase 1: Reproduce
Before fixing anything, establish a reliable reproduction case:
- Can I make it fail on demand?
- What's the simplest input that triggers the failure?
- Document the exact steps to reproduce

If I can't reproduce it, I can't verify the fix.

### Phase 2: Isolate
Find the exact failure point:
- Binary search through the code path
- Use logging/print statements strategically
- Narrow down: is it the data? The logic? The integration?
- Check `root-cause-tracing.md` for systematic narrowing techniques

### Phase 3: Identify
Find the root cause — not the symptom:
- Ask "why" 5 times for each link in the chain
- Is this a one-off or a pattern?
- Could this affect other parts of the system?

Common root causes: wrong assumptions about input, off-by-one errors, race conditions, state pollution, configuration errors.

### Phase 4: Fix + Verify
- Fix the root cause, not the symptom
- Use `verification-before-completion` skill to confirm the fix
- Add a regression test so it never comes back

## Timing Issues

For intermittent issues:
- See `condition-based-waiting.md` — wait for conditions, not arbitrary timeouts
- `find-polluter.sh` can help find shared state causing race conditions

## After the Fix

1. Confirm the original reproduction case no longer fails
2. Run the full test suite
3. Add a regression test
4. Update relevant documentation
