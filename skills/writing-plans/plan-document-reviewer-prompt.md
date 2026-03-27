# Plan Document Reviewer Prompt

Use this prompt when reviewing an implementation plan before execution.

## Review Criteria

For each task in the plan:

1. **Correctness** — Does this task correctly implement the spec?
2. **Completeness** — Are all requirements of this task covered?
3. **Granularity** — Can this be done in 2-5 minutes?
4. **Verifiability** — Can I verify this task is complete?

## Output Format

```
## Task N: [Name]
- Status: OK / Needs Work / Missing
- Issues: [list]
- Suggestions: [list]
## Overall
- Plan ready for execution: Yes/No
- Blocking issues: [list or "None"]
```
