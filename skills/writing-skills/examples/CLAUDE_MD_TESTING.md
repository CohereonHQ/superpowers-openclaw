# CLAUDE_MD Testing — Example Skill Test

## Test Setup

Created a test task: "Write a CLI tool that counts lines in a file."

## Expected Behavior

1. Skill fires: `brainstorming` → refines the tool concept
2. Design approved → skill fires: `writing-plans`
3. Plan created → skill fires: `subagent-driven-development`
4. Implementation runs through TDD cycle

## Actual Results

- `brainstorming`: ✅ Fired correctly, asked clarifying questions
- `writing-plans`: ✅ Plan was detailed, file paths correct
- `subagent-driven-development`: ✅ Tasks dispatched correctly, reviews worked
- `test-driven-development`: ✅ RED-GREEN-REFACTOR followed

## Bugs Found

None — the skill chain worked as expected.

## Lessons Learned

The skill system works correctly when:
1. Descriptions are precise enough to avoid false triggers
2. Each skill's output is verifiable
3. The agent follows the process without shortcuts
