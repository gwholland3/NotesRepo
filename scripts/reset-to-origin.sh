#!/usr/bin/env bash
set -euo pipefail

# Only allow resetting to origin if the working tree is clean.
if [ -n "$(git status --porcelain)" ]; then
   echo "You have local changes. Please commit or stash them."
   exit 1
fi

git fetch origin
git reset --hard origin/main

