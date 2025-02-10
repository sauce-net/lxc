#!/bin/bash

apt install -y \
  git \
  gh \

gh auth login -p ssh
gh auth setup-git
