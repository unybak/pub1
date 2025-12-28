#!/usr/bin/env bash
# shellcheck disable=SC2034,SC1091,SC2154

echo "Orchestrating"

# ssh_config_file is by default ssh_config
config_repo="$1"
# exec_repo is by default unybak/pub1
exec_repo="$2"

GH_TOKEN="$(cat GH_TOKEN)"
export GH_TOKEN

GITHUB_REPOSITORY="$(cat GITHUB_REPOSITORY)"
export GITHUB_REPOSITORY

gh repo clone unybak/unybak
cd unybak || exit

gh repo clone "$config_repo" config

chmod +x orchestration.bash
./orchestration.bash "$exec_repo"
