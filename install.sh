#!/bin/bash
# curl https://github.com/nixmember/nixmember/raw/master/install.sh | sh

# a bash script that installs the latest nxm release
# taken from https://raw.githubusercontent.com/srevinsaju/zap/main/install.sh - thank you Srevin, you have been a big inspiration

# pipefail
set -euo pipefail

echo "nxm installer"

# env
REPO="nixmember/nixmember"