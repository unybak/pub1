#!/usr/bin/env bash
# shellcheck disable=SC2034,SC1091,SC2154

echo "Backing up"

{
    GH_TOKEN="$(cat GH_TOKEN)"
    export GH_TOKEN

    GITHUB_REPOSITORY="$(cat GITHUB_REPOSITORY)"
    export GITHUB_REPOSITORY

    gh repo clone unybak/unybak
    chmod +x unybak/prep_and_run.bash
    cd unybak || exit
    ./prep_and_run.bash

} >backup.log 2>&1
