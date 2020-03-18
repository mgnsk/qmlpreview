#!/bin/bash

docker-compose build \
    --pull \
    --build-arg GROUP=$(id -gn) \
    --build-arg GID=$(id -g) \
    $1

docker image prune -f
