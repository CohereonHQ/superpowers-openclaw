# Testing Philosophy

## Core Belief

Code that isn't tested is broken. Not buggy — broken. It might work today, but you don't know, and you won't know until it fails in production.

## The Testing Mindset

Every function, every module, every integration point should be tested. Not because we're thorough, but because without tests we have no evidence that the code works.

## What to Test

1. Every observable behavior — what the code does, not how it does it internally
2. Edge cases — empty input, boundary values, error conditions
3. Integration points — where two systems meet
4. Error paths — what happens when things go wrong

## What NOT to Test

1. Trivial getters/setters unless they contain logic
2. Third-party code
3. Framework code

## Test-Driven Development

The process:
1. RED — Write the failing test
2. GREEN — Write minimal code to pass
3. REFACTOR — Improve without breaking tests

Any code written before the failing test is deleted.

## Evidence Over Claims

"Tests pass" is evidence. "I think it works" is not. "Code review looks good" is not. "The test suite confirms it" is evidence.
