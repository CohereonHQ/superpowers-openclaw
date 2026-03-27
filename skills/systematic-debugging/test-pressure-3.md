# Test Pressure 3: Boundary Conditions

Apply pressure at the boundaries of acceptable input.

## Boundaries to Test

- Empty input (empty string, empty array, null)
- Single item
- Very large input (10x normal)
- Very small input (1 byte, 1 pixel)
- Whitespace and encoding edge cases
- Numeric boundaries (0, -1, MAX_INT, overflow)

## Example

```python
# Normal
assert parse_numbers("1,2,3") == [1, 2, 3]

# Boundaries
assert parse_numbers("") == []
assert parse_numbers("1") == [1]
assert parse_numbers("1" * 10000) == [1] * 10000
assert parse_numbers("a,b,c") == []  # non-numeric
```

## The Bug That Lives at Boundaries

Many bugs only appear at boundaries. The code handles "normal" perfectly but breaks on edge cases because the developer didn't think to test them.
