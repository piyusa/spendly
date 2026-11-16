#!/usr/bin/env bash
# One-command deploy for Spendly.
# Commits all changes and pushes to GitHub. Render auto-deploys on every push
# to the connected branch, so this is all you run after editing index.html.
#
# Usage:  ./deploy.sh "what I changed"
set -euo pipefail
cd "$(dirname "$0")"

msg="${1:-Update Spendly}"

if git diff --quiet && git diff --cached --quiet; then
  echo "No changes to deploy."
  exit 0
fi

git add -A
git commit -m "$msg"
git push
echo
echo "✅ Pushed to GitHub. Render will auto-redeploy in ~1 minute."
echo "   Watch it at: https://dashboard.render.com"
