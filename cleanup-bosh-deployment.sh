#!/usr/bin/env bash
## File: cleanup-bosh-deployment.sh
## Author : Denny Zhang
## Description : Delete all bosh deployments or a given bosh deployment
## Link: https://cheatsheet.dennyzhang.com/cheatsheet-bosh-A4
## --
## Created : <2019-01-18>
## Updated: Time-stamp: <2019-01-20 10:20:59>
##-------------------------------------------------------------------
# shellcheck disable=SC1091
source /home/kubo/gw_scripts/bosh_env.sh

if [ -z "$BOSH_DEPLOYMENT_DELETE" ]; then
    echo "BOSH_DEPLOYMENT_DELETE env is empty. Deleting all bosh deployments"
    for d in $(bosh deployments --json | jq .Tables[].Rows[].name); do
        echo "echo y | bosh delete-deployment --force -d $d"
        echo y | bosh delete-deployment --force -d "$d"
    done
else
    echo "echo y | bosh delete-deployment --force -d $BOSH_DEPLOYMENT_DELETE"
    echo y | bosh delete-deployment --force -d "$BOSH_DEPLOYMENT_DELETE"
fi

echo "bosh deployments"
bosh deployments
