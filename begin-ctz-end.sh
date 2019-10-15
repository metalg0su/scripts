#!/bin/bash
. _begin_common.sh
loop citizen -r 172.31.18.224:9000 -d -o peer_config.json
