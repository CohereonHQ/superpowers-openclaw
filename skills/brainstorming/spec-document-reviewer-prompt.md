# Spec Document Reviewer Prompt

Use this prompt when reviewing a design spec before planning.

## Review Criteria

For each section of the spec, evaluate:

1. **Completeness** — Are all requirements captured? Are there gaps?
2. **Clarity** — Can you understand what is being built without ambiguity?
3. **Feasibility** — Is this technically achievable with the stated constraints?
4. **Testability** — Can this be verified as complete?

## Output Format

```
## Section: [Name]
- Issues: [list]
- Suggestions: [list]
## Overall
- Approve: Yes/No
- Blocking issues: [list or "None"]
- Recommendations: [list]
```
