#!/bin/bash

apk add --no-cache \
  curl \
  gcc \
  libressl-dev \
  musl-dev \
  libffi-dev \
  pipx
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --profile=minimal
source $HOME/.cargo/env
pipx ensurepath
pipx install poetry && source ~/.profile
apk del \
  curl \
  gcc \
  libressl-dev \
  musl-dev \
  libffi-dev
