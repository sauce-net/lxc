#!/bin/bash

apt update
apt install pipx
pipx ensurepath
pipx install poetry
