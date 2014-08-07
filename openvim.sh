#!/bin/bash

command=$1

osascript <<EOF
tell app "Terminal"
  do script "$command"
end tell
EOF
