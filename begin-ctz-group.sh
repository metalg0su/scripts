#!/bin/bash
. scripts/stop_all.sh
rm -rf .sto* *.tgz log

git checkout origin/2.2.1.3-test -f
source venv/bin/activate
pip install -e .
make generate-proto

clear
python -V
git show --oneline

loop citizen -r 172.31.27.207:9000 -d -o peer_config.json
