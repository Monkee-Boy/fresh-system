#!/usr/bin/env bash
set -e

function install_npm_packages() {
  if ! command -v npm > /dev/null; then
    printf '\033[0;32m✗ npm is not installed.\n'
    return
  fi

  packages=$(<./configs/npm-packages.txt)
  packages=($packages)

  printf "Installing packages ${packages[*]}...\n"

  npm install -g npm "${packages[@]}"
}

install_npm_packages
