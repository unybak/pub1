#!/usr/bin/env bash
# shellcheck disable=SC2034,SC1091,SC2154

echo "Testing logging"

{
    echo "Will this be shown?"
    echo "Or not?"
} >file
