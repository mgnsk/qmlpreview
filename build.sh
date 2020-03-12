#!/bin/bash

set -euo pipefail

docker-compose build \
    --build-arg GROUP=$(id -gn) \
    --build-arg GID=$(id -g) \
    $1

docker image prune -f
