#!/bin/bash

set -euo pipefail

docker-compose run --rm deploy_js qtdeploy build js ./...
