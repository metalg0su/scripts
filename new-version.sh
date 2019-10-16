#!/bin/bash
. scripts/stop_all.sh
. scripts/set-rc-111.sh

git fetch --all
git checkout 2.4.11-test -f

source venv-new/bin/activate
pip install -e .
make generate-proto

clear
python -V
git show --oneline

loop -d -o peer_config.json
