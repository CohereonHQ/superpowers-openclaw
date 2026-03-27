# Testing Anti-Patterns

## Common Mistakes

### 1. Testing Implementation, Not Behavior
**Wrong:** Testing that a method calls another method
**Right:** Testing that a behavior produces the expected result

### 2. Brittle Tests
Tests that break when you refactor unrelated code. Avoid testing internal state — test observable outcomes.

### 3. Shared State Between Tests
If test A modifies state and test B depends on that state, tests will fail in isolation. Each test should set up its own state.

### 4. No Tests for Edge Cases
Test the happy path, yes. But also test: empty input, very large input, null/nil, boundary conditions.

### 5. Assertion Roulette
15 assertions in one test function, all testing different things. One assertion per test function, or group related assertions.

### 6. Tests That Don't Fail
A test that always passes tells you nothing. If you can't remember the last time it failed, it's not testing anything.

### 7. Mocking Too Much
Mocks that mock everything end up testing nothing. Use real objects where possible, mock only external boundaries.

### 8. No Regression Tests
Bug fixed? Add a test that would have caught it. Every bug fix should include a regression test.
