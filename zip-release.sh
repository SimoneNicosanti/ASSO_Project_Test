#!/usr/bin/env bash
set -euo pipefail

VERSION="${1:?Usage: $0 v0.1.0}"
REPO="${REPO:-SimoneNicosanti/ASSO_Project_Test}"
ARCHIVE="Whole_Compose-${VERSION}.tar.gz"

rm -f "$ARCHIVE"

tar \
  --exclude='Whole_Compose/.env' \
  --exclude='Whole_Compose/.env.*' \
  --exclude='Whole_Compose/tailscale' \
  -czf "$ARCHIVE" \
  Whole_Compose

if gh release view "$VERSION" --repo "$REPO" >/dev/null 2>&1; then
  echo "Release exists. Updating asset..."
  gh release upload "$VERSION" "$ARCHIVE" \
    --repo "$REPO" \
    --clobber
else
  echo "Release does not exist. Creating..."
  gh release create "$VERSION" "$ARCHIVE" \
    --repo "$REPO" \
    --title "Compose bundle ${VERSION}" \
    --notes "Docker Compose deployment bundle excluding .env files and Tailscale state."
fi
