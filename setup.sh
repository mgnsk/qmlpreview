#!/bin/bash

set -euo pipefail

echo -e "\033[1mSetting up tusk task runner...\033[0m"
curl -sL https://git.io/tusk | bash -s -- -b "$GOPATH/bin" latest
