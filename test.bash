#!/usr/bin/env bash
# shellcheck disable=SC2034,SC1091,SC2154

echo "Testing"

servers="$*"

GH_TOKEN="$(cat GH_TOKEN)"
export GH_TOKEN

GITHUB_REPOSITORY="$(cat GITHUB_REPOSITORY)"
export GITHUB_REPOSITORY

export HOSTYON_PASSPHRASE

gh repo clone unybak/unybak
cd unybak || exit

chmod +x test_prep_and_run.bash
./test_prep_and_run.bash "$servers"
