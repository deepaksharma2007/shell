#!/bin/bash
# Variable assignment in the main shell
VAR="Outside"

# Execute commands in a subshell
(
  VAR="Inside"
  echo "Inside parentheses: $VAR"
)
# Outside the parentheses, the variable remains unchanged
echo "Outside parentheses: $VAR"
