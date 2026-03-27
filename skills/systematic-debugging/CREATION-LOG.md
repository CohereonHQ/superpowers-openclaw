# Systematic Debugging Skill — Creation Log

## Motivation

Debugging without a process is guesswork. This skill was created to enforce a systematic approach.

## Influences

- rubberduck debugging (explain the bug out loud)
- rubberman debugging (trace call stack)
- Binary search for failure points
- The "5 whys" root cause analysis technique
- Chaos engineering principles (apply pressure to find weaknesses)

## Sub-Documents

| Document | Purpose |
|----------|---------|
| `root-cause-tracing.md` | Binary search and divide-by-responsibility techniques |
| `defense-in-depth.md` | Why you must fix all layers, not just the failing one |
| `condition-based-waiting.md` | How to wait for conditions instead of arbitrary times |
| `condition-based-waiting-example.ts` | TypeScript implementation reference |
| `find-polluter.sh` | Shell script to find shared state pollution in tests |
| `test-pressure-1.md` | Error path pressure technique |
| `test-pressure-2.md` | Load and concurrency pressure technique |
| `test-pressure-3.md` | Boundary condition pressure technique |

## Testing This Skill

This skill is tested by: using it during actual bug investigation and verifying the process leads to the root cause.
