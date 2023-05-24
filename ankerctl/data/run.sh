#!/usr/bin/sh

CONFIG_PATH=/data/options.json

export FLASK_HOST="$(jq --raw-output '.flask_host // empty' $CONFIG_PATH)"

/app/ankerctl.py webserver run
