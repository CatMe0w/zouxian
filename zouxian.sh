#!/bin/bash

MAX_WAIT_TIME=60
CHECK_INTERVAL=1
SECONDS_PASSED=0

while [ $SECONDS_PASSED -lt $MAX_WAIT_TIME ]; do
  PID=$(pgrep eligibilityd)
  if [ ! -z "$PID" ]; then
    echo "eligibilityd found with PID $PID"
    lldb --batch \
    -o "process attach --name eligibilityd" \
    -o "expression (void) [[[InputManager sharedInstance] objectForInputValue:6] setValue:@\"LL\" forKey:@\"_deviceRegionCode\"]" \
    -o "expression (void) [[EligibilityEngine sharedInstance] recomputeAllDomainAnswers]" \
    -o "process detach" \
    -o quit || { echo "lldb command failed"; exit 1; }
    exit 0
  fi
  sleep $CHECK_INTERVAL
  SECONDS_PASSED=$((SECONDS_PASSED + CHECK_INTERVAL))
done

echo "eligibilityd not found after $MAX_WAIT_TIME seconds"
exit 1
