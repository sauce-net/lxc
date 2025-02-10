#!/bin/bash

apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
python3 -m ensurepip
pip3 install --no-cache --upgrade pip setuptools
apk add --no-cache \
  curl \
  gcc \
  libressl-dev \
  musl-dev \
  libffi-dev \
&& curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --profile=minimal \ 
&& source $HOME/.cargo/env \ 
&& pip install --no-cache-dir poetry \
&& apk del \
  curl \
  gcc \
  libressl-dev \
  musl-dev \
  libffi-dev
