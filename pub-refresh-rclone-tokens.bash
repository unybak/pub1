#!/usr/bin/env bash
# shellcheck disable=SC2034,SC1091,SC2154

echo "Refreshing rclone tokens"

GH_TOKEN="$(cat GH_TOKEN)"
export GH_TOKEN

GITHUB_REPOSITORY="$(cat GITHUB_REPOSITORY)"
export GITHUB_REPOSITORY

RCLONE_CONFIG="$(cat RCLONE_CONFIG)"
export RCLONE_CONFIG

# Run from unybak/unybak directory
gh repo clone unybak/unybak
cd unybak || exit

chmod +x refresh-rclone-tokens.bash
./refresh-rclone-tokens.bash "$@"
