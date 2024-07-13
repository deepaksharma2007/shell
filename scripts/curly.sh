#!/bin/bash

# Variable assignment in the main shell
VAR="Outside"

# Grouping commands in the current shell
{
  VAR="Inside"
  echo "Inside braces: $VAR"
}

# Outside the braces, the variable remains changed
echo "Outside braces: $VAR"
