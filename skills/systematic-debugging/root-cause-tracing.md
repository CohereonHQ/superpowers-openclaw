# Root Cause Tracing

## Binary Search Through Code

When the failure point is unknown:

1. Find the entry point of the failing code path
2. Add a marker at the midpoint: "if we're past here, X should be Y"
3. Run the reproduction case
4. If marker is reached: failure is in the second half
5. If marker is not reached: failure is in the first half
6. Repeat, halving the search space each time

## Divide by Responsibility

Narrow down: is the issue in:
- Data source (wrong data coming in)?
- Transformation logic (data is right but processing is wrong)?
- Output/write (result is correct but something corrupts it)?
- Integration (two systems don't communicate correctly)?

## The 5 Whys

For each link in the failure chain, ask "why?":
- Why did X fail? Because Y returned wrong value
- Why did Y return wrong value? Because Z wasn't initialized
- Why wasn't Z initialized? Because initialization was skipped on error path
- Why was initialization skipped? Because error handler didn't call it
- Why didn't error handler call it? Because the spec was ambiguous

The last "why" is usually the root cause.

## State Inspection

At each step in the code path, inspect:
- What is the actual value of key variables?
- What is the expected value?
- When did they diverge?
