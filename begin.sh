#!/bin/bash
. scripts/stop_all.sh
rm -rf .sto* *.tgz log

git checkout 2.2.1.3-test -f
source venv/bin/activate
pip install -e .
make generate-proto

clear
python -V
git show --oneline

loop peer -d -o peer_config.json

