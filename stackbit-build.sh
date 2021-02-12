#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://localhost:8092/init.js 602675fbdaa396b9c4d64827

echo "stackbit-build.sh: finished build"
