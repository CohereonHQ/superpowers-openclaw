# Testing Skills with Subagents

## Method

Use `subagent-driven-development` to test a new skill:

1. Define a test task that requires the skill
2. Dispatch a subagent to complete the task using the skill
3. Observe whether the skill triggers correctly
4. Evaluate the quality of the skill's output

## Test Cases to Run

### Happy Path
The skill fires in the expected situation and produces correct output.

### Edge Cases
What happens when:
- The skill is invoked with incomplete context?
- The trigger is borderline (just barely matches the description)?
- Two skills could both apply — which fires?

### Failure Modes
If the skill fails, does it fail gracefully with a clear error message?

## Evaluation Criteria

| Criterion | Question |
|-----------|----------|
| Correctness | Does the skill produce the right output? |
| Completeness | Does it handle all specified cases? |
| Clarity | Is the output clear and actionable? |
| Timing | Does it fire at the right moment? |
| Recovery | Does it fail gracefully? |
