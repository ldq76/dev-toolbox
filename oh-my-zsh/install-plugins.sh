#!/bin/sh
set -e
DIR="$(cd "$(dirname "$0")" >/dev/null 2>&1 && pwd)"

ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

# Install spaceship theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions --depth=1
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting --depth=1
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM}/plugins/zsh-z --depth=1

cp "$DIR"/.zshrc ~/.zshrc
source ~/.zshrc