#!/usr/bin/env bash
# shellcheck disable=SC2034,SC1091,SC2154

echo "Orchestrating"

# ssh_config_file is by default ssh_config
config_repo="$1"
# exec_repo is by default unybak/run
exec_repo="$2"
# code_repo is by default unybak/unybak
code_repo="$3"

GH_TOKEN="$(cat GH_TOKEN)"
export GH_TOKEN

GITHUB_REPOSITORY="$(cat GITHUB_REPOSITORY)"
export GITHUB_REPOSITORY

# Run from code_repo directory
gh repo clone "$code_repo" code
cd code || exit

# Clone ssh_config from config_repo
gh repo clone "$config_repo" config

chmod +x orchestration.bash
./orchestration.bash "$exec_repo" "$code_repo"
