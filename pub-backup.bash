#!/usr/bin/env bash
# shellcheck disable=SC2034,SC1091,SC2154

echo "Backing up"
# shellcheck disable=SC2068
echo $@

server="$1"
code_repo="$2"

GH_TOKEN="$(cat GH_TOKEN)"
export GH_TOKEN

GITHUB_REPOSITORY="$(cat GITHUB_REPOSITORY)"
export GITHUB_REPOSITORY

HOSTYON_PASSPHRASE="$(cat HOSTYON_PASSPHRASE)"
export HOSTYON_PASSPHRASE

# Run from code_repo directory
gh repo clone "$code_repo" code
cd code || exit

chmod +x backup.bash
./backup.bash "$server"
