# Test Pressure 2: Load and Concurrency

Apply pressure through load and concurrent access patterns.

## Load Testing

Find the limits of your system:
- How many items can it handle before degrading?
- What happens at 10x normal load?
- Memory leaks under sustained load?

## Concurrency Testing

Race conditions are hard to find. Test by:
- Running multiple operations simultaneously
- Checking for deadlocks
- Verifying atomicity of compound operations

## Example

```python
def test_concurrent_deposits():
    account = Account(balance=0)
    
    def deposit():
        account.deposit(100)
    
    threads = [Thread(target=deposit) for _ in range(10)]
    for t in threads: t.start()
    for t in threads: t.join()
    
    assert account.balance == 1000  # or investigate if not
```

If balance isn't 1000, there's a race condition.
