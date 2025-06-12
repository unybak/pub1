#!/usr/bin/env bash
# shellcheck disable=SC2034,SC1091,SC2154

echo "Backing up"

GH_TOKEN="$(cat GH_TOKEN)"
export GH_TOKEN

GITHUB_REPOSITORY="$(cat GITHUB_REPOSITORY)"
export GITHUB_REPOSITORY

gh repo clone unybak/unybak
cd unybak || exit

chmod +x orchestration_prep_and_run.bash
./orchestration_prep_and_run.bash
