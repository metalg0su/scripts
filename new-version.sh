#!/bin/bash
. scripts/stop_all.sh
git checkout origin/feature/LC-685-test -f

. scripts/_setup_common.sh

loop -d -o peer_config.json
