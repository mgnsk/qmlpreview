#!/bin/bash

set -euo pipefail

docker-compose logs -f -t --tail="all"
