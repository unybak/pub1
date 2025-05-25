#!/usr/bin/env bash
# shellcheck disable=SC2034,SC1091,SC2154

echo "Testing Backup Script run"

{
    GH_TOKEN="$(cat GH_TOKEN)"
    export GH_TOKEN

    gh repo clone unybak/unybak
    chmod +x unybak/backup-containers.bash
    unybak/backup-containers.bash
} >backup.log 2>&1

cat backup.log
