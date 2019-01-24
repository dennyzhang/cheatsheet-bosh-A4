#!/usr/bin/env bash
## File: cleanup-bosh-deployment.sh
## Author : Denny Zhang
## Description : Delete all bosh releases or a given bosh release
## Link: https://cheatsheet.dennyzhang.com/cheatsheet-bosh-A4
## --
## Created : <2019-01-18>
## Updated: Time-stamp: <2019-01-20 22:16:36>
## Usage:
## # ssh
## ssh -o StrictHostKeyChecking=no root@10.92.171.234 \
##  "curl -L https://raw.githubusercontent.com/dennyzhang/cheatsheet-bosh-A4/master/cleanup-bosh-release.sh | bash"
##
## # ssh without password, and delete a given bosh release
## sshpass -p 'MY_SSH_PASSWORD' ssh -o StrictHostKeyChecking=no root@10.92.171.234 \
##  "export BOSH_RELEASE_DELETE=kubo; curl -L https://raw.githubusercontent.com/dennyzhang/cheatsheet-bosh-A4/master/cleanup-bosh-release.sh | bash"
##-------------------------------------------------------------------
# shellcheck disable=SC1091
source /home/kubo/gw_scripts/bosh_env.sh

if [ -z "$BOSH_RELEASE_DELETE" ]; then
    echo "BOSH_RELEASE_DELETE env is empty. Deleting all bosh releases"
    for b in $(bosh releases --json | jq -r .Tables[].Rows[].name); do
        command="echo y | bosh delete-release $b"
        echo "$command" && eval "$command"
    done
else
    command="echo y | bosh delete-release $BOSH_RELEASE_DELETE"
    echo "$command" && eval "$command"
fi

command="bosh releases"
echo "$command" && eval "$command"
