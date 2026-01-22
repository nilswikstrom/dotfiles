#!/usr/bin/env bash
set -euo pipefail

REPO="/home/yuki/vaults/road-to-engineer"
cd "$REPO"

# Always pull first to incorporate changes from other devices (if any)
git pull --rebase --autostash

# Only commit+push if something changed
if [[ -n "$(git status --porcelain)" ]]; then
  git add -A
  git commit -m "vault sync: $(date -Iseconds)"
  git push
fi
