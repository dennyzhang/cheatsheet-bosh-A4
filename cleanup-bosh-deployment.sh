#!/usr/bin/env bash
## File: cleanup-bosh-deployment.sh
## Author : Denny Zhang
## Description : Delete all bosh deployments or a given bosh deployment
## Link: https://cheatsheet.dennyzhang.com/cheatsheet-bosh-A4
## --
## Created : <2019-01-18>
## Updated: Time-stamp: <2019-01-20 11:23:57>
## Usage:
## # ssh
## ssh -o StrictHostKeyChecking=no root@10.92.171.234 \
##     "curl -L https://raw.githubusercontent.com/dennyzhang/cheatsheet-bosh-A4/master/cleanup-bosh-deployment.sh | bash"
##
## # ssh without password
## sshpass -p 'MY_SSH_PASSWORD' ssh -o StrictHostKeyChecking=no root@10.92.171.234 \
##     "curl -L https://raw.githubusercontent.com/dennyzhang/cheatsheet-bosh-A4/master/cleanup-bosh-deployment.sh | bash"
##-------------------------------------------------------------------
# shellcheck disable=SC1091
source /home/kubo/gw_scripts/bosh_env.sh

if [ -z "$BOSH_DEPLOYMENT_DELETE" ]; then
    echo "BOSH_DEPLOYMENT_DELETE env is empty. Deleting all bosh deployments"
    for d in $(bosh deployments --json | jq -r .Tables[].Rows[].name); do
        command="echo y | bosh delete-deployment --force -d $d"
        echo "$command" && eval "$command"
    done
else
    command="echo y | bosh delete-deployment --force -d $BOSH_DEPLOYMENT_DELETE"
    echo "$command" && eval "$command"
fi

command="bosh deployments"
echo "$command" && eval "$command"
