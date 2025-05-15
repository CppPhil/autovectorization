#!/bin/bash

# Directory containing this bash script.
readonly DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Detect OS and set disassembly command
if [[ "$(uname)" == "Darwin" ]]; then
  # MacOS
  otool -tV "$DIR/build/example_executable"
else
  # GNU/Linux
  objdump -d -M intel "$DIR/build/example_executable"
fi
