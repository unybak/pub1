#!/usr/bin/env bash
# shellcheck disable=SC2034,SC1091,SC2154

echo "Testing"

GH_TOKEN="$(cat GH_TOKEN)"
export GH_TOKEN

GITHUB_ACTION_REPOSITORY="$(cat GITHUB_ACTION_REPOSITORY)"
export GITHUB_ACTION_REPOSITORY

echo "GITHUB_ACTION_REPOSITORY: $GITHUB_ACTION_REPOSITORY"

gh repo clone unybak/unybak
chmod +x unybak/test.bash
cd unybak || exit
./test.bash
