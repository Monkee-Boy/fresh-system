#!/usr/bin/env bash
set -e

function install_ruby_gems() {
  printf "Installing bundler...\n"
  gem install bundler

  printf "Installing gems...\n"
  cd ./configs && bundle install
}

install_ruby_gems
