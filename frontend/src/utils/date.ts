/**
 * Utility functions for date manipulations
 */

// This output today's date in YYYY-MM-DD format
export function getToday(): string {
  const today = new Date();

  return [
    today.getFullYear(),
    String(today.getMonth() + 1).padStart(2, "0"),
    String(today.getDate()).padStart(2, "0"),
  ].join("-");
}
