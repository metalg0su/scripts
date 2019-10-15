#!/bin/bash
. scripts/stop_all.sh

git checkout origin/feature/LC-685-test -f
make generate-proto
source venv-new/bin/activate
pip install -e . 

python -V
git show --oneline


loop -d -o peer_config.json
