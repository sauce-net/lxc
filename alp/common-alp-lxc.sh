#!/bin/bash

apk add --update --no-cache git github-cli openssh
gh auth login -p ssh
gh auth setup-git
