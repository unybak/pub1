#!/usr/bin/env bash
# shellcheck disable=SC2034,SC1091,SC2154

echo "Testing"

GH_TOKEN="$(cat GH_TOKEN)"
export GH_TOKEN

gh repo clone unybak/unybak
chmod +x unybak/test.bash
cd unybak || exit
./test.bash
