---
name: requesting-code-review
description: Use when about to request human code review — run the pre-review checklist first.
---

# Requesting Code Review

## Overview

Before requesting human review, I run a pre-review checklist to ensure the code is actually ready for review.

**Announce at start:** "I'm using the requesting-code-review skill."

## Pre-Review Checklist

Run through this before requesting review:

- [ ] All plan tasks complete?
- [ ] All tests pass locally?
- [ ] No debug code or TODO comments left in?
- [ ] New tests added for new behavior?
- [ ] Documentation updated?
- [ ] No merge conflicts?
- [ ] The diff is reviewable (not 50 files changed)?

## If Checkpoint Fails

If any item on the checklist fails — fix it first. Don't request review until the checklist is clean.

## The Review Request

After passing the checklist:

1. Summarize what changed and why
2. Point to the specific areas where I want focused feedback
3. Ask any specific questions I have
4. Link to the relevant spec/design doc

Example: "Built the exercise tracker Log screen. Changes are in `src/App.jsx`. Questions: (1) Is the stepper UX right? (2) Should I pre-populate from yesterday? Ready for your review."
