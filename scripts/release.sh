#!/bin/bash

set -uo pipefail

echo "Getting Current Tag"
CURRENT_VERSION="$(git describe --exact-match --tags "$(git log -n1 --pretty='%h')" 2>/dev/null)"

if [[ -z $CURRENT_VERSION ]]; then
    echo "ERROR: Failed to get version!"
    CURRENT_VERSION="$(git describe --tags --always --dirty --broken)"
else
    echo "CURRENT_VERSION: ${CURRENT_VERSION}"
fi

LATEST_RELEASE="$(gh api repos/:owner/:repo/releases/latest --jq '.tag_name')"

echo "Current Version: $CURRENT_VERSION"
echo "Latest Release: $LATEST_RELEASE"

echo "Looking for release packages"
if [[ ! -f build/udm-tools.deb ]]; then
    echo "ERROR: Release DEBs not found!"
    exit 1
fi

set -e
if [[ $CURRENT_VERSION == "$LATEST_RELEASE" ]]; then
    echo "Release exists, Upoading assets (overwrite=true)"
    gh release upload \
        --clobber \
        "$CURRENT_VERSION" \
        build/udm-tools.deb
else
    echo "Create: GH-Release"
    gh release create \
        --notes-file build/release-notes.md \
        --title "$CURRENT_VERSION" \
        "$CURRENT_VERSION" \
        build/udm-tools.deb
fi
