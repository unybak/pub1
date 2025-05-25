#!/usr/bin/env bash
# shellcheck disable=SC2034,SC1091,SC2154

echo "Testing Backup Script run"

{
    gh repo clone unybak/unybak

} >backup.log
