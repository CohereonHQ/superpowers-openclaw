#!/usr/bin/env bash
# find-polluter.sh
# Finds shared state that pollutes test isolation.

set -e

echo "Running find-polluter.sh"
echo ""
echo "Checking for common polluter patterns..."

# Pattern 1: Global mutable state
echo "=== Global mutable state ==="
grep -r "global\." --include="*.js" --include="*.ts" -l . 2>/dev/null || echo "None found"

# Pattern 2: Module-level mutable variables
echo ""
echo "=== Module-level mutable vars ==="
grep -rn "^[a-zA-Z_]* = " --include="*.js" --include="*.ts" . 2>/dev/null | grep -v "const " | grep -v "function" | head -20

# Pattern 3: Singleton patterns in test files
echo ""
echo "=== Potential singletons in tests ==="
grep -rn "instance" --include="*test*" --include="*spec*" . 2>/dev/null | head -10

# Pattern 4: Shared beforeEach/afterEach issues
echo ""
echo "=== Test files with no setup/teardown ==="
find . -name "*.test.*" -o -name "*.spec.*" | while read f; do
  if ! grep -q "beforeEach\|beforeAll\|afterEach\|afterAll" "$f"; then
    echo "No setup: $f"
  fi
done

echo ""
echo "Run this script from the project root."
