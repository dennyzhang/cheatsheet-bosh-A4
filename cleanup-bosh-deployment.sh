#!/usr/bin/env bash
## File: cleanup-bosh-deployment.sh
## Author : Denny Zhang
## Description :
## --
## Created : <2019-01-18>
## Updated: Time-stamp: <2019-01-18 23:45:42>
##-------------------------------------------------------------------
# shellcheck disable=SC1091
source /home/kubo/gw_scripts/bosh_env.sh

for d in $(bosh deployments --json | jq .Tables[].Rows[].name); do
    echo "echo y | bosh delete-deployment --force -d $d"
    echo y | bosh delete-deployment --force -d "$d"
done
