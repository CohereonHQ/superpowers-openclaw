# Condition-Based Waiting

## The Problem

Waiting for an arbitrary time (e.g., `sleep(5000)`) is unreliable:
- Too short: test fails intermittently
- Too long: test suite is slow

## The Solution

Wait for the condition, not the time.

Instead of:
```javascript
await page.click('#submit');
await page.waitForTimeout(5000); // fragile
const result = await page.textContent('#result');
```

Use:
```javascript
await page.click('#submit');
await page.waitForSelector('#result.loaded', { timeout: 10000 });
const result = await page.textContent('#result');
```

## When No Native Wait Exists

Poll for a condition:
```javascript
const maxAttempts = 50;
for (let i = 0; i < maxAttempts; i++) {
  const value = await checkCondition();
  if (value === expected) return;
  await sleep(100);
}
throw new Error('Condition not met within timeout');
```

## Test Example

See `condition-based-waiting-example.ts` for a full working example.
