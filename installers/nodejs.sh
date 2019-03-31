#!/usr/bin/env bash
set -e

function install_node() {
  if command -v brew > /dev/null; then
    printf 'Installing node...\n'
    brew install node@8
  else
    printf '\033[0;32m✗ Homebrew is not installed.\n'
    exit 1
  fi
}

install_node
