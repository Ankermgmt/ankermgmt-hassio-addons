#!/usr/bin/bash

CONFIG_PATH=/data/options.json

FLASK_HOST="$(jq --raw-output '.flask_host // empty' $CONFIG_PATH)"

/app/ankerctl.py webserver run --host="${FLASK_HOST}"
