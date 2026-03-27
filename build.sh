#!/usr/bin/env bash
# Build script: injects environment variables into the static site
set -euo pipefail

mkdir -p dist
sed "s|__MAPBOX_TOKEN__|${MAPBOX_TOKEN}|g" index.html > dist/index.html
