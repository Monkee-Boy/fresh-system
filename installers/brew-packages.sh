#!/usr/bin/env bash
set -e

function install_brew_packages() {
  if command -v brew > /dev/null; then
    printf 'Installing packages from Brewfile...\n'
    brew bundle --file=./configs/Brewfile
  else
    printf '\033[0;32m✗ Homebrew is not installed.\n'
    exit 1
  fi
}

install_brew_packages
