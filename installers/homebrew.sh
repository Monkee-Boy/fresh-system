#!/usr/bin/env bash
set -e

function install_brew() {
  if ! make --version > /dev/null; then
    printf '\033[0;31m✗ XCode Commandline tools are not installed.\n'
    exit 1
  fi

  if command -v brew > /dev/null; then
    printf '\033[0;32m✓ Homebrew is already installed.\n'
    return
  fi

  printf 'Installing homebrew...\n'

  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew doctor

  brew tap homebrew/bundle
}

install_brew
