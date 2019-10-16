#!/bin/bash
. scripts/stop_all.sh
. scripts/set-rc-new.sh

git fetch --all
git checkout origin/2.4.12-test -f

source venv-new/bin/activate
make develop
make generate-proto

clear
python -V

loop -d -o peer_config.json
