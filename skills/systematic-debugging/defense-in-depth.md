# Defense in Depth

## Principle

A bug that slipped through usually exploited multiple layered failures. Fix all layers, not just the one that failed.

## Example

Bug: User's session data was corrupted after a network timeout.

Layers that failed:
1. Network layer: timeout was too long (30s instead of 5s)
2. Retry layer: was retrying non-idempotent requests
3. State layer: session was being written during network operation
4. Recovery layer: no rollback on failure

## Fixing All Layers

For each layer:
1. Can this layer fail in a way that contributes to the bug?
2. What change would make this layer more resilient?
3. Implement that change.

The fix is not just the immediate cause — it's the whole chain.

## When Not to Apply

Defense in depth has cost: complexity, performance, maintenance burden. Apply it where:
- The failure mode is severe (data loss, security)
- The system is critical
- The likelihood of failure is non-trivial

Don't over-engineer non-critical paths.
