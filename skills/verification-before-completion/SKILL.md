---
name: verification-before-completion
description: Use when you think something is done — confirm the fix actually works before declaring success.
---

# Verification Before Completion

## Overview

Before declaring "done", I verify the fix actually works. Not by inspection — by evidence.

**Announce at start:** "I'm using the verification-before-completion skill."

## The Process

### 1. What was the original bug?
State it clearly. What input caused what failure?

### 2. What did I change?
List the files changed and the rationale for each change.

### 3. Does the original bug still occur?
Run the exact reproduction case from the bug report. Does it still fail?

### 4. Does the fix work?
Run the same reproduction case. Does it now succeed?

### 5. Did I break anything else?
Run the full test suite. All tests pass?

### 6. Is the code better?
Is the fix clean? No lingering debug code? Tests added?

## The Hand-Off

If all checks pass:
"Verification complete. The fix is confirmed to work. All tests pass. Ready for review."

If checks fail:
"The fix is not yet complete. [Description of what still fails.]"
