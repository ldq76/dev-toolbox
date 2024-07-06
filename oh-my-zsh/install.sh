#!/bin/sh
set -e
DIR="$(cd "$(dirname "$0")" >/dev/null 2>&1 && pwd)"

sudo apt-get update

sudo apt-get install zsh -y

# Escape characters in DIR that might interfere with sed
ESCAPED_DIR=$(echo "$DIR" | sed 's_/_\\/_g')

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sed "s/exec zsh -l/exec zsh -l -c \". ${ESCAPED_DIR}\/install-plugins.sh\"/g")"