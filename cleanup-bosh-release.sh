#!/usr/bin/env bash
## File: cleanup-bosh-deployment.sh
## Author : Denny Zhang
## Description : Delete all bosh releases or a given bosh release
## Link: https://cheatsheet.dennyzhang.com/cheatsheet-bosh-A4
## --
## Created : <2019-01-18>
## Updated: Time-stamp: <2019-01-20 10:20:50>
##-------------------------------------------------------------------
# shellcheck disable=SC1091
source /home/kubo/gw_scripts/bosh_env.sh

if [ -z "$BOSH_RELEASE_DELETE" ]; then
    echo "BOSH_RELEASE_DELETE env is empty. Deleting all bosh releases"
    for b in $(bosh releases --json | jq .Tables[].Rows[].name); do
        echo "echo y | bosh delete-release $b"
        echo y | bosh delete-release "$b"
    done
else
    echo "echo y | bosh delete-release $BOSH_RELEASE_DELETE"
    echo y | bosh delete-release "$BOSH_RELEASE_DELETE"
fi

echo "bosh releases"
bosh releases
