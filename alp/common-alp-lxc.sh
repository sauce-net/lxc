#!/bin/bash

apk add --update --no-cache git github-cli
gh auth login -p ssh
gh auth setup-git
