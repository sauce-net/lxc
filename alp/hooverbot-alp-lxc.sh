#!/bin/bash

sh ./common-alp-lxc.sh
sh ./poetry-alp-lxc.sh
git clone git@github.com:codyconfer/hoover_bot.git
cd hoover_bot
poetry install
poetry run hoover_bot
