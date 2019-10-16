#!/bin/bash
. scripts/stop_all.sh
rm -rf .sto* *.tgz log

. scripts/set-rc-old.sh
git fetch --all
git checkout origin/2.2.1.3-test -f

. scripts/_setup_common.sh
