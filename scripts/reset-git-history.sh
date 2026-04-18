#!/usr/bin/env bash
set -euo pipefail

# Only allow resetting git history if the working tree is clean.
if [ -n "$(git status --porcelain)" ]; then
   echo "You have local changes. Please commit or stash them."
   exit 1
fi

# Squash the existing branch down to a single commit by doing a soft reset
# back to the root commit and then amending it.
git reset --soft "$(git rev-list --max-parents=0 HEAD)"
git commit --amend -m "Reset public history"

# Push the new, single commit and overwrite the original history on the remote.
git push --force origin main

