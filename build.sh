#!/bin/bash

set -euo pipefail

# Build all images.
docker-compose build \
    --pull \
    --build-arg GROUP=$(id -gn) \
    --build-arg GID=$(id -g) \
    deploy_linux deploy_wasm deploy_js

docker image prune -f
