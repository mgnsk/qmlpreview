#!/bin/bash

set -euo pipefail

docker-compose run --rm deploy_wasm qtdeploy build wasm ./...
