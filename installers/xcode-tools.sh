#!/usr/bin/env bash
set -e

function install_xcodetools() {
  if xcode-select --version > /dev/null; then
    printf '\033[0;32m✓ xcode-select is already installed.\n'
    return
  else
    printf 'Installing xcode-select...\n'
    xcode-select --install
  fi
}

install_xcodetools
