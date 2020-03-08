#!/bin/bash

set -euo pipefail

docker-compose build \
    --build-arg USER=$(id -un) \
    --build-arg GROUP$(id -gn) \
    --build-arg UID=$(id -u) \
    --build-arg GID=$(id -g) \
    --build-arg GOPROXY="http://172.17.0.1:8081" \
    --build-arg GITPROXY="http://172.17.0.1:8080" \
    --build-arg APTPROXY="http://172.17.0.1:3142"

docker image prune -f
