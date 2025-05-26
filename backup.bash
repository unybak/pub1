#!/usr/bin/env bash
# shellcheck disable=SC2034,SC1091,SC2154

echo "Backing up Containers"

{
    GH_TOKEN="$(cat GH_TOKEN)"
    export GH_TOKEN

    gh repo clone unybak/unybak
    chmod +x unybak/backup.bash
    unybak/backup.bash

} >backup.log 2>&1
