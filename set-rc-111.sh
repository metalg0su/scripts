#!/bin/bash
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH:$GOROOT/bin:$PATH
cd ../rewardcalculator
rm -rf *
git reset --hard

git checkout v1.1.1
make && sudo make install
icon_rc -version

cd -
