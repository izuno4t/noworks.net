#!/usr/bin/env bash
set -euo pipefail

# Usage: set-secrets.sh SERVICE_ACCOUNT_JSON_PATH PROJECT_ID [owner/repo]
# Example: ./set-secrets.sh ./service-account.json my-firebase-project myuser/myrepo

if [ "$#" -lt 2 ]; then
  echo "Usage: $0 SERVICE_ACCOUNT_JSON_PATH PROJECT_ID [owner/repo]"
  exit 1
fi

SA_FILE="$1"
PROJECT_ID="$2"
REPO_ARG="${3-}"

if ! command -v gh >/dev/null 2>&1; then
  echo "Error: gh CLI is not installed. Install from https://cli.github.com/"
  exit 1
fi

if [ ! -f "$SA_FILE" ]; then
  echo "Error: service account file not found: $SA_FILE"
  exit 1
fi

if [ -n "$REPO_ARG" ]; then
  REPO="$REPO_ARG"
else
  ORIGIN_URL=$(git config --get remote.origin.url || true)
  if [ -z "$ORIGIN_URL" ]; then
    echo "Error: could not detect repo. Provide owner/repo as third argument."
    exit 1
  fi
  REPO="$ORIGIN_URL"
  # convert git URL to owner/repo
  REPO=${REPO#git@github.com:}
  REPO=${REPO#https://github.com/}
  REPO=${REPO%.git}
fi

echo "Using repo: $REPO"

echo "Setting FIREBASE_SERVICE_ACCOUNT..."
gh secret set FIREBASE_SERVICE_ACCOUNT --body "$(cat "$SA_FILE")" --repo "$REPO"

echo "Setting FIREBASE_PROJECT_ID..."
gh secret set FIREBASE_PROJECT_ID --body "$PROJECT_ID" --repo "$REPO"

echo "Done."
