#!/bin/bash
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH:$GOROOT/bin:$PATH

cd ../rewardcalculator
rm -rf *
git reset --hard

git checkout 1.0.0
make linux && sudo make install
icon_rc -version

cd -
