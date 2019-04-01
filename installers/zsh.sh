#!/usr/bin/env bash
set -e

function config_zsh() {
  if ! command -v zsh >/dev/null 2>&1; then
    printf '\033[0;31m✗ Zsh is not installed.\n'
    return
  fi

  printf 'Setting zsh as your default shell...\n'
  chsh -s /bin/zsh
  printf "Your default shell is ${SHELL}.\n"

  printf 'Installing Oh My Zsh...\n'
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

config_zsh
