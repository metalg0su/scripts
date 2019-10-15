#!/bin/bash
. scripts/_begin_common.sh
loop citizen -r 172.31.27.207:9000 -d -o peer_config.json
