#!/bin/bash
. scripts/stop_all.sh
. scripts/set-rc-111.sh
git checkout origin/feature/LC-685-test -f

source venv-new/bin/activate
pip install -e .
make generate-proto

clear
python -V
git show --oneline

loop -d -o peer_config.json
