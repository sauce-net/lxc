#!/bin/bash

sh ./common-alp-lxc.sh
sh ./go-alp-lxc.sh
git clone git@github.com:juanfont/headscale.git
cd headscale
make build
./headscale serve
