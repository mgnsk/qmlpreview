#!/bin/bash

set -euo pipefail

echo -e "\033[1mSetting up tusk task runner...\033[0m"
curl -sL https://git.io/tusk | bash -s -- -b "$GOPATH/bin" latest

echo -e "\033[1mCloning QT 5.13...\033[0m"
git clone https://github.com/therecipe/env_linux_amd64_513.git third_party/env_linux_amd64_513

echo -e "\033[1mCloning emcripten...\033[0m"
git clone https://github.com/emscripten-core/emsdk.git third_party/emscripten
