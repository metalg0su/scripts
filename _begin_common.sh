#!/bin/bash
. scripts/stop_all.sh
rm -rf .sto* *.tgz log

git checkout origin/2.2.1.3-test -f

. scripts/_setup_common.sh
