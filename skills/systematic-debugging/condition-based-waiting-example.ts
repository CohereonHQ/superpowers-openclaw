// Condition-Based Waiting Example in TypeScript

/**
 * Wait for a condition to become true, polling at a regular interval.
 */
export async function waitForCondition(
  checkFn: () => boolean | Promise<boolean>,
  options: {
    timeout?: number;      // max ms to wait (default: 10000)
    interval?: number;      // ms between checks (default: 100)
    name?: string;          // description for error message
  } = {}
): Promise<void> {
  const { timeout = 10000, interval = 100, name = 'condition' } = options;
  const deadline = Date.now() + timeout;

  while (Date.now() < deadline) {
    const result = await checkFn();
    if (result) return;
    await sleep(interval);
  }

  throw new Error(`Timed out waiting for ${name} after ${timeout}ms`);
}

/**
 * Wait for a DOM element to have a specific class.
 */
export async function waitForClass(
  selector: string,
  className: string,
  options: { timeout?: number; interval?: number } = {}
): Promise<void> {
  return waitForCondition(
    () => document.querySelector(selector)?.classList.contains(className) ?? false,
    { ...options, name: `class ${className} on ${selector}` }
  );
}

function sleep(ms: number): Promise<void> {
  return new Promise(resolve => setTimeout(resolve, ms));
}
