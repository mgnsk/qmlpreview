#!/bin/bash

set -euo pipefail

# Build all images.
docker-compose build \
    --pull \
    --build-arg GROUP=$(id -gn) \
    --build-arg GID=$(id -g) \
    deploy_linux #deploy_js deploy_wasm

docker image prune -f

cd $REPO/app/cmd/serve
go install ./...
