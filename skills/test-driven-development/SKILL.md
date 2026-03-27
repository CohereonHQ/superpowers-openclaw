---
name: test-driven-development
description: Use whenever writing code — RED-GREEN-REFACTOR or it didn't happen.
---

# Test-Driven Development

## Overview

TDD is not optional. Every piece of code I write is preceded by a failing test. The sequence is never violated:

1. **RED** — Write the failing test
2. **GREEN** — Write minimal code to make it pass
3. **REFACTOR** — Improve code (tests still pass)
4. **Commit**

Any code written before the failing test is deleted.

**Announce at start:** "I'm using the test-driven-development skill."

## The Rules

1. **Test First** — Before writing any implementation code, write the test
2. **Minimal Green** — The code to make the test pass must be minimal. No features. No generalization.
3. **Delete Before Adding** — If I find myself writing code "for future tests" — delete it. YAGNI.
4. **Refactor After Green** — Tests must continue to pass throughout refactoring.
5. **No Code Without Tests** — Code written without a preceding failing test is deleted. Not fixed — deleted.

## Test Quality

Good tests:
- Test one thing per test function
- Have clear, descriptive names describing expected behavior
- Are independent (order doesn't matter)
- Use meaningful assertions

See `testing-anti-patterns.md` for common mistakes.

## Cycle Example

```python
# RED: Write the failing test
def test_calculator_adds_two_numbers():
    calc = Calculator()
    assert calc.add(2, 3) == 5

# Run → FAIL: Calculator not defined

# GREEN: Minimal implementation
class Calculator:
    def add(self, a, b):
        return 5

# Run → PASS

# REFACTOR: Make it actually work
class Calculator:
    def add(self, a, b):
        return a + b

# Run → PASS → Commit
```
