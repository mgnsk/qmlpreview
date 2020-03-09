#!/bin/bash

set -euo pipefail

docker-compose run --rm deploy_linux qtdeploy build linux ./...
